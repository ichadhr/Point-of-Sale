<?php
echo form_open('taxes/add_new_tax');
echo "<table>";
echo "<tr><td>";echo form_label($this->lang->line('tax'));echo "</td><td>"; echo form_input('rate',set_value('rate'),'id=rate autofocus');echo "</td></tr>";
echo "<tr><td>";echo form_label($this->lang->line('tax_type'));echo "</td><td>";echo "<select name=type>";foreach ($row as $tow){ ?>
<option value="<?php echo $tow->guid ?>"><?php echo $tow->type?></option>    
    <?php }
echo "</select></td></tr>"    ;
echo "<tr><td>";echo form_submit('save',$this->lang->line('save'));echo "</td><td>";echo form_submit('cancel',$this->lang->line('cancel'));echo "</td></tr>";
echo form_close();
echo "</table>";
echo validation_errors();
?>
