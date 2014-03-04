<?php 
function full_url($s)
{
    $ssl = (!empty($s['HTTPS']) && $s['HTTPS'] == 'on') ? true:false;
    $sp = strtolower($s['SERVER_PROTOCOL']);
    $protocol = substr($sp, 0, strpos($sp, '/')) . (($ssl) ? 's' : '');
    $port = $s['SERVER_PORT'];
    $port = ((!$ssl && $port=='80') || ($ssl && $port=='443')) ? '' : ':'.$port;
    $host = isset($s['HTTP_X_FORWARDED_HOST']) ? $s['HTTP_X_FORWARDED_HOST'] : isset($s['HTTP_HOST']) ? $s['HTTP_HOST'] : $s['SERVER_NAME'];
    return $protocol . '://' . $host . $port . $s['REQUEST_URI'];
}
?>
<meta charset="utf-8" />
<!--<script type="text/javascript" src="http://quanlybanhang.360vnit.com/app/templates/js/core/function.admin.app.js?v=2.0" charset="UTF-8"></script>-->
<script type="text/javascript">
$(document).ready(function() {
    $("a.grouped_elements").fancybox({
        'padding'            : 0,
        'autoScale'            : false,
        'transitionIn'        : 'none',
        'transitionOut'        : 'none'
    });
});
</script>
<div id="result">
<table class="table_full" style="width: 100%;">
    <tr>
        <td style="background: #FFF;padding: 5px 5px 5px 5px;" valign="top">
            <table style="width: 100%;">
            <tr>
            <td><div class="h-title">Danh sách khóa học</div> </td>
            <td style="float: right;">
               
            <div class="addlink"><a href="http://quanlybanhang.360vnit.com/index.php/khncc/kh/add" class="add grouped_elements"><span>ThĂªm má»›i</span></a></div>
                                                          
            </td>
            </tr>
            </table> 
                                         
            <div class="box-content">
            <div class="box_find">
    
</div>
<form action="<?php echo base_url();?>ctv/productctv/deletes" method="post" accept-charset="utf-8" id="admindata_kh"> 
<input type="hidden" id="page" value="0"/>
<input type="hidden" id="callback" value="<?php echo base_url();?>ctv/productctv/ajax_get_product"/>
<table class="admindata">
    <thead>
        <tr>
            <th class="head" colspan="7">
                                <a class="del" onclick="return action_del('admindata_kh','khachhang');"><span>Xóa</span></a>                                Có <?php echo count($list_product_ref)?> khóa học <span class="pages"><span class="pagebar-mainbody"><a href="javascript:;">&lt;</a><span class="pagebar-selections"><span class="pagelink-current">1</span></span><a href="javascript:; " onclick="khachhang(2)">2</a><a href="javascript:; " onclick="khachhang(3)">3</a><a href="javascript:; " onclick="khachhang(4)">4</a><a href="javascript:;" onclick="khachhang(1+1)">&gt;</a></span>
</span>
            </th>
        </tr>
        <tr>
            <th class="checkbox"><input type="checkbox" name="sa" id="sa" onclick="check_chose('sa', 'ar_id[]', 'admindata_kh')"></th>
            <th class="id">Tên khóa học</th>
            <th>Giới thiệu</th>
            <th>Ngày hết hạn</th>
            <th>Giá</th>
            <th class="publish">Chức năng</th>
        </tr>        
    </thead>
    <?php 
    foreach($list_product_ref as $product_ref)
    {
    ?>
        <tr class="row1 ">
        <td align="center"><input  type="checkbox" name="ar_id[]" value="<?php echo $product_ref['user_product_id']?>"></td>
        <td><?php echo $product_ref['title']?></td>
        <td><?php echo $product_ref['description']?></td>
        <td><?php echo $product_ref['exp_date']?></td>
        <td><?php echo $product_ref['cost']?></td>
        <td align="center">
            <a class="delete_record" href="<?php echo base_url();?>ctv/productctv/delete/<?php echo $product_ref['user_product_id']?>" title="Xóa"><img src="http://quanlybanhang.360vnit.com/app/templates/icon/del.png"></a>        
        </td>
    </tr>       
     <?php }?>       
        <tfoot>
        <td colspan="7">
                        <a class="del" onclick="return action_del('admindata_kh','khachhang');"><span>Xóa</span></a>                            
             Có <?php echo count($list_product_ref)?> khóa học <span class="pages"><span class="pagebar-mainbody"><a href="javascript:;">&lt;</a><span class="pagebar-selections"><span class="pagelink-current">1</span></span><a href="javascript:; " onclick="khachhang(2)">2</a><a href="javascript:; " onclick="khachhang(3)">3</a><a href="javascript:; " onclick="khachhang(4)">4</a><a href="javascript:;" onclick="khachhang(1+1)">&gt;</a></span>
</span>
        </td>
    </tfoot>    
</table>
</form><script type="text/javascript">
function khachhang(page_no){  
    load_show();   
    var key = $("#key").val();
    $.post(base_url+"khncc/kh/dskh",{'page_no':page_no,'key':key},function(data){
        $("#khachhang_content").html(data);                                            
        load_hide();
    });
}

function find(){  
    load_show();  
    var key = $("#key").val();
    $.post(base_url+"khncc/kh/dskh",{'key':key},function(data){
        $("#khachhang_content").html(data);                                            
        load_hide();
    });
}
</script>  
            </div>
        </td>
    </tr>
</table>

</div>


