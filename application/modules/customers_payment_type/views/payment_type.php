<?php
echo form_open('customers_payment_type/payment_type');
echo "<table>";
if($count>0){
if($_SESSION['Posnic_User']=='admin'){
    $i=0;
     echo "<tr><td>SL NO</td><td>Type</td>";
    foreach ($row as $prow){
    echo "<tr><td>".++$i."</td><td>$prow->type</td><td>"?><a href="<?php echo base_url()?>index.php/customers_payment_type/edit_payment/<?php echo $prow->guid ?>">Edit</a> <?php echo "</td><td>"; if($prow->active==1){?><a href="<?php echo base_url()?>index.php/customers_payment_type/active_payment/<?php echo $prow->guid ?>"><?php echo $this->lang->line('active') ?></a> <?php }else{ ?><a href="<?php echo base_url()?>index.php/customers_payment_type/deactive_payment/<?php echo $prow->guid ?>"><?php echo $this->lang->line('deactive') ?></a> <?php  } if($prow->active_status==1){?><a href="<?php echo base_url()?>index.php/customers_payment_type/restore_payment/<?php echo $prow->guid ?>"><?php echo $this->lang->line('restore') ?></a> <?php } echo  "</td><td></td>";
    
    }
    echo "</table>";
    echo form_submit('active',$this->lang->line('active'));
    echo form_submit('deactive',$this->lang->line('deactive'));
   
}else{
      echo "<tr><td>SL NO</td><td>Type</td>";
    foreach ($row as $prow){
    echo "<tr><td>".++$i."</td><td>$prow->type</td><td>"?><a href="<?php echo base_url()?>index.php/customers_payment_type/edit_payment/<?php echo $prow->guid ?>">Edit</a> <?php echo "</td><td>"; if($prow->active==1){?><a href="<?php echo base_url()?>index.php/customers_payment_type/active_payment/<?php echo $prow->guid ?>"><?php echo $this->lang->line('active') ?></a> <?php }else{ ?><a href="<?php echo base_url()?>index.php/customers_payment_type/deactive_payment/<?php echo $prow->guid ?>"><?php echo $this->lang->line('deactive') ?></a> <?php  }  echo  "</td><td></td>";
    
    }
}  
echo form_submit('delete',$this->lang->line('delete'));
}else{
  
} 

echo form_submit('add',$this->lang->line('add'));echo form_submit('cancel',$this->lang->line('back_to_home'));
?>
