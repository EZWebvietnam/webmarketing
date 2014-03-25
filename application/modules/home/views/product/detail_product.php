
<div class="product_detail_1">
    <div class="cat_title">
        <a href="<?php echo base_url(); ?>p_c-<?php echo $product_detail[0]['id_cate'] ?>-<?php echo mb_strtolower(url_title(removesign($product_detail[0]['name']))) ?>"><?php echo $product_detail[0]['name'] ?></a>
    </div>
    <div class="mainimages">
        <?php
        if (file_exists($_SERVER['DOCUMENT_ROOT'] . ROT_DIR . 'file/uploads/product/' . $product_detail[0]['img']) && is_file($_SERVER['DOCUMENT_ROOT'] . ROT_DIR . 'file/uploads/product/' . $product_detail[0]['img']) && $product_detail[0]['img'] != '') {
            ?>
            <img src="<?php echo base_url(); ?>file/uploads/product/<?php echo $product_detail[0]['img'] ?>" alt="<?php echo $product_detail[0]['title'] ?>" width="490">
        <?php } else { ?>
            <img src="<?php echo base_url(); ?>file/uploads/no_image.gif" alt="<?php echo $product_detail[0]['title'] ?>" width="490">
        <?php } ?>
    </div>

    <div class="pro_name">
        <?php echo $product_detail[0]['title'] ?>
    </div>
    <div class="quick_descript">
        <p><span style="color: rgb(68, 68, 68); font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 11.818181991577148px; line-height: 17.99715805053711px; text-align: justify;"><?php echo $product_detail[0]['description'] ?></span></p>  
    </div>
    <br>
    <?php
    $detail_sale_off = $this->productmodel->get_sale_off_product($product_detail[0]['id_product']);
    if (empty($detail_sale_off)) {
        $price = $product_detail[0]['cost'];
        ?>
        <center>
            Giá gốc: <span class="orgin_price"><?php echo number_format($product_detail[0]['cost']) ?></span>  VND/Khóa học
        </center>
<?php
} else {
    $price = $product_detail[0]['cost'] - ($product_detail[0]['cost'] - ($product_detail[0]['cost'] * $detail_sale_off[0]['percent']) / 100);
    ?>
        <center>
            Giá gốc: <span class="orgin_price"><strike><?php echo number_format($product_detail[0]['cost'] - ($product_detail[0]['cost'] * $detail_sale_off[0]['percent']) / 100) ?></strike></span>  VND/Khóa học
        </center>
        <div class="price_detail">

            <center>
                <span class="price2"><?php echo number_format($product_detail[0]['cost'] - ($product_detail[0]['cost'] - ($product_detail[0]['cost'] * $detail_sale_off[0]['percent']) / 100)) ?></span> <span class="price2">(-<?php echo $detail_sale_off[0]['percent'] ?>%)</span> 
            </center>
        </div>
    <?php } ?>
    <?php
    if ($this->uri->segment(4) != '' || $this->uri->segment(4) != null) {
        ?>
        <input type="hidden" name="id_ref" id="id_ref" value="<?php echo base64_encode($this->uri->segment(4)); ?>" />
    <?php
    } else {
         ?>
            <input type="hidden" name="id_ref" id="id_ref" value="0" />
        <?php }?>
    <div>
        <br>
        <center>
            Số người đã mua:<br><span class="price2"> 54 </span><br>
            Thời gian còn lại:
            <?php
            $date = $product_detail[0]['exp_date'];
            $date_ex = explode('/', $date);
            ?>
            <script type="text/javascript">
                $(function() {
                    var liftoffTime = new Date(<?php echo $date_ex[2] ?>,<?php echo $date_ex[1] ?> - 1,<?php echo $date_ex[0] ?>);
                    $('#defaultCountdown274').countdown({until: liftoffTime, padZeroes: true});
                });
                function click_time()
                {
                    var periods = $('#defaultCountdown274').countdown('getTimes');
                    if(periods[3]==0 && periods[4]==0 && periods[5] == 0 && periods[6] == 0)
                    {
                        alert('Sản phẩm hết hạn, không thể tiến hành mua');
                        $('#btn_mua').attr("disabled",true);
                    }
                    else
                    {
                        add_to_card_form(<?php echo $product_detail[0]['id_product'] ?>,<?php echo $price ?>)
                    }
                }

            </script>
            <div id="defaultCountdown274" style="text-align:center;font-size:10px" class="hasCountdown"></div>

            <div>
                <br>
                <img id="btn_mua" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/mua.png" onclick="click_time();" class="add_cart_button">
            </div>
        </center>
    </div>
    <div style="height:1px;clear:both"></div>
</div>
<div style="hight:1px">&nbsp;</div>
<div style="clear:both"></div>
<div class="product_detail_2">
    <div class="right_header">NỘI DUNG CHI TIẾT</div>
    <div style="padding:10px">
<?php echo $product_detail[0]['content'] ?>
    </div>
    <div id="main2"></div>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-share-button" data-href="<?php echo full_url_($_SERVER)?>" data-type="button_count"></div>
    <!-- Đặt thẻ này vào nơi bạn muốn Nút +1 kết xuất. -->
<div class="g-plusone" data-annotation="inline" data-width="37" data-href="<?php echo full_url_($_SERVER)?>"></div>

<!-- Đặt thẻ này sau thẻ Nút +1 cuối cùng. -->
<script type="text/javascript">
  window.___gcfg = {lang: 'vi'};

  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/platform.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>
    <div class="fb-comments" data-href="<?php echo full_url_($_SERVER)?>" data-numposts="5" data-colorscheme="light"></div>
</div>	
