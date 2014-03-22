<div class="product_detail_1">
    
    

    <div class="pro_name">
        <?php echo $detail[0]['title'] ?>
    </div>
    
   
</div>
<div style="hight:1px">&nbsp;</div>
<div style="clear:both"></div>
<div class="product_detail_2">
    <div class="right_header">CÂU HỎI</div>
    <div style="padding:10px">
<?php echo $detail[0]['question'] ?>
    </div>
    <div id="main2"></div>

</div>	
<?php 

if($detail[0]['status']==1)
{
?>
<div class="product_detail_2">
    <div class="right_header">TRẢ LỜI</div>
    <div style="padding:10px">
<?php echo $detail[0]['answer'] ?>
    </div>
    <div id="main2"></div>

</div>
<?php } ?>
Muốn gửi câu hỏi ? Click <a href="<?php echo base_url();?>gui-cau-hoi">Gửi câu hỏi</a>