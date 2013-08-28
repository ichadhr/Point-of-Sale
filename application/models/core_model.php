<?php

class Core_model extends CI_Model{
    function __construct() {
        parent::__construct();
    }
    function item_setting($guid,$branch){
        $data=array('item_id'=>$guid,
            'branch_id'=>$branch);
        $this->db->insert('items_setting',$data);
        $id=$this->db->insert_id();
        $orderid=md5($id.'items_setting');
        $guid=str_replace(".", "", "$orderid");
        $value=array('guid'=>$guid);
        $this->db->where('id',$id);
        $this->db->update('items_setting',$value);
    }
    
    
    function delete_item_setting($guid,$bid){
        $data=array('active_status'=>1,'delete_status'=>1);
        $this->db->where('item_id',$guid);
        $this->db->where('branch_id',$bid);
        $this->db->update('items_setting',$data);
        
            
        }
    function restore_item_setting($guid,$bid){
        $data=array('active_status'=>0,'delete_status'=>0);
        $this->db->where('item_id',$guid);
        $this->db->where('barnch_id',$bid);
        $this->db->update('items_setting',$data);
        
        
            
        }
    function suppliers_x_items($id,$bid,$mrp,$supplier,$selling_price,$cost_price){
            $data=array('item_id'=>$id,'mrp'=>$mrp,'supplier_id'=>$supplier,'price'=>$selling_price,'cost'=>$cost_price,'branch_id'=>$bid);
            $this->db->insert('suppliers_x_items',$data);
            
    }
   function posnic_join_like($table,$bid){
       
         $this->db->select()->from('suppliers_x_items');
         
         $this->db->join('items', "$table".'.item_id=items.guid AND suppliers_x_items.active = 0','left');
          $this->db->group_by("items".'.guid');
         $sql=  $this->db->get();
          $j=0;
        $data=array();
    foreach ($sql->result() as $row){
           $data[$j] = array(
                                          'label' =>$row->code ,
                                          'desc' =>$row->description,                                          
                                          'cost' =>$row->cost,                                          
                                          'sell' =>$row->price ,                                          
                                          'mrp' =>$row->mrp,                                          
                                          'id'=>$row->guid
                                );			
                                        $j++; 
    }
    return $data;
    }
                                    
}
?>