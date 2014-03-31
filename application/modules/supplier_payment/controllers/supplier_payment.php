<?php
class Supplier_payment extends CI_Controller{
   function __construct() {
                parent::__construct();
                $this->load->library('posnic');               
    }
    function index(){     
        $this->load->view('template/app/header'); 
        $this->load->view('header/header');         
        $this->load->view('template/branch',$this->posnic->branches());
        $data['active']='purchase_invoice';
        $this->load->view('index',$data);
        $this->load->view('template/app/navigation',$this->posnic->modules());
        $this->load->view('template/app/footer');
        
        
    }
    // goods Receiving Note data table
    function data_table(){
        $aColumns = array( 'guid','supplier_id','supplier_id','supplier_id','supplier_id','supplier_id','first_name','company_name','supplier_id','supplier_id','supplier_id','guid' );	
	$start = "";
	$end="";
        if ( $this->input->get_post('iDisplayLength') != '-1' )	{
                $start = $this->input->get_post('iDisplayStart');
                $end=	 $this->input->get_post('iDisplayLength');              
        }	
        $order="";
        if ( isset( $_GET['iSortCol_0'] ) )
            {	
                for ( $i=0 ; $i<intval($this->input->get_post('iSortingCols') ) ; $i++ )
                {
                    if ( $_GET[ 'bSortable_'.intval($this->input->get_post('iSortCol_'.$i)) ] == "true" )
                    {
                        $order.= $aColumns[ intval( $this->input->get_post('iSortCol_'.$i) ) ]." ".$this->input->get_post('sSortDir_'.$i ) .",";
                    }
                }
                $order = substr_replace( $order, "", -1 );


        }
	$like = array();
	if ( $_GET['sSearch'] != "" )
            {
                $like =array(
                    'po_no'=>  $this->input->get_post('sSearch'),
                    'grn_no'=>  $this->input->get_post('sSearch'),
                    );

            }
            $this->load->model('payment')	   ;
            $rResult1 = $this->payment->get($end,$start,$like,$this->session->userdata['branch_id']);
            $iFilteredTotal =$this->payment->count($this->session->userdata['branch_id']);
            $iTotal =$iFilteredTotal;
            $output1 = array(
			"sEcho" => intval($_GET['sEcho']),
			"iTotalRecords" => $iTotal,
			"iTotalDisplayRecords" => $iFilteredTotal,
			"aaData" => array()
		);
		foreach ($rResult1 as $aRow )
		{
			$row = array();
			for ( $i=0 ; $i<count($aColumns) ; $i++ )
			{
				if ( $aColumns[$i] == "id" )
				{
					$row[] = ($aRow[ $aColumns[$i] ]=="0") ? '-' : $aRow[ $aColumns[$i] ];
				}
				else if ( $aColumns[$i]== 'po_date' )
				{
					/* General output */
					$row[] = date('d-m-Y',$aRow[$aColumns[$i]]);
				}
				else if ( $aColumns[$i] != ' ' )
				{
					/* General output */
					$row[] = $aRow[$aColumns[$i]];
				}
				
			}
				
		$output1['aaData'][] = $row;
		}
            echo json_encode($output1);
    }
 
function save(){      
     if($this->session->userdata['purchase_invoice_per']['add']==1){
        $this->form_validation->set_rules('goods_receiving_note_guid',$this->lang->line('goods_receiving_note_guid'), 'required');
        $this->form_validation->set_rules('grn_date',$this->lang->line('grn_date'), 'required');
        $this->form_validation->set_rules('invoice_no', $this->lang->line('invoice_no'), 'required');
            if ( $this->form_validation->run() !== false ) {    
                $grn=  $this->input->post('goods_receiving_note_guid');
                $date=strtotime($this->input->post('grn_date'));
                $invoice_no= $this->input->post('invoice_no');
                $remark=  $this->input->post('remark');
                $note=  $this->input->post('note');
                $po= $this->input->post('purchase_order');
                $this->load->model('invoice');
                if(!$this->input->post('purchase_order')) {
                   $po="non";
                  
                    $this->invoice->direct_grn_invoice_status($grn);
                }else{
                    $this->invoice->grn_invoice_status($grn);
                }
                $value=array('invoice'=>$invoice_no,'po'=>$po,'grn'=>$grn,'date'=>$date,'remark'=>$remark,'note'=>$note);
                $this->posnic->posnic_add_record($value,'purchase_invoice');
                $this->posnic->posnic_master_increment_max('purchase_invoice')  ;
           ;
                 echo 'TRUE';
    
                }else{
                   echo 'FALSE';
                }
        }else{
                   echo 'Noop';
                }
           
    }
    function update(){
            
      if($this->session->userdata['purchase_order_per']['edit']==1){
        $this->form_validation->set_rules('goods_receiving_note_guid',$this->lang->line('goods_receiving_note_guid'), 'required');
        $this->form_validation->set_rules('grn_date',$this->lang->line('grn_date'), 'required');
        //$this->form_validation->set_rules('grn_no', $this->lang->line('grn_no'), 'required');                         
        $this->form_validation->set_rules('receive_quty[]', 'receive_quty', 'regex_match[/^[0-9]+$/]|xss_clean');
        $this->form_validation->set_rules('receive_free[]', 'receive_free', 'regex_match[/^[0-9]+$/]|xss_clean');
            if ( $this->form_validation->run() !== false ) {    
                $po=  $this->input->post('goods_receiving_note_guid');
                $grn_date=strtotime($this->input->post('grn_date'));
               // $grn_no= $this->input->post('grn_no');
                $remark=  $this->input->post('remark');
                $note=  $this->input->post('note');
                
  
     
                $value=array('date'=>$grn_date,'remark'=>$remark,'note'=>$note);
                $guid=  $this->input->post('grn_guid');
                $update_where=array('guid'=>$guid);
                $this->posnic->posnic_update_record($value,$update_where,'invoice');          
                $quty=  $this->input->post('receive_quty');
                $grn_item_guid=  $this->input->post('grn_items_guid');
                $free=  $this->input->post('receive_free');
                $items=  $this->input->post('items');
                $po_item=  $this->input->post('order_items');
           
                for($i=0;$i<count($items);$i++){
          
                        $this->load->model('invoice');
                        $this->invoice->update_grn_items_quty($grn_item_guid[$i],$quty[$i],$free[$i],$items[$i],$po_item[$i]);
                      
                }
                    
                    
                    
                 echo 'TRUE';
    
                }else{
                   echo 'FALSE';
                }
        }else{
                   echo 'Noop';
                }
          
   }
        
        
   
    function delete(){
       if($this->session->userdata['goods_receiving_note_per']['delete']==1){
            if($this->input->post('guid')){
                $guid=  $this->input->post('guid');
                $this->load->model('invoice');
                $status=$this->invoice->check_approve($guid);
               if($status!=FALSE){
                $this->posnic->posnic_delete($guid,'invoice');

                $this->invoice->delete_grn_items($guid);            
                    echo 'TRUE';
                }else{
                    echo 'Approved';
                }

            }
        }else{
             echo 'FALSE';
        }

    }
   
   
    
    /*
    get payment code form master data
     * function start     */
    function payment_code(){
           $data[]= $this->posnic->posnic_master_max('purchase_invoice')    ;
           echo json_encode($data);
    }
    /*
    function end     */
    /*
    Search purchase payable purchase invoice
     * function start     */
    function search_purchase_invoice(){
        $search= $this->input->post('term'); /* get key word*/
        $this->load->model('payement'); /* load payement model*/
        $data= $this->purchase->serach_invoice($search);   /* get invoice list */   
        echo json_encode($data); /* send data in json fromat*/
    }
    /* function end */
   
    }
?>