<style>
    #main_body_content2 {
    background: url(<?php echo base_url();?>template/ezwebvietnam/home/template/template_1/images/content_bg_1.png) top left repeat-y !important;
    }
    #main_page
    {
        width:980px !important;
    }
    .product_detail_2
    {
        margin-left: 24px !important;
    }
</style>
<div class="product_detail_1">
    <div class="pro_name">
        <?php echo $product_detail[0]['title'] ?>
    </div>
    <br>
    <?php
    $detail_sale_off = $this->productmodel->get_sale_off_product($product_detail[0]['id_product']);
    if (empty($detail_sale_off)) {
        $price = $product_detail[0]['cost'];
        ?>
        <center>
            Giá gốc: <span class="orgin_price"><?php echo number_format($product_detail[0]['cost']) ?></span>  VND
        </center>
        <?php
    } else {
        $price = $product_detail[0]['cost'] - ($product_detail[0]['cost'] - ($product_detail[0]['cost'] * $detail_sale_off[0]['percent']) / 100);
        ?>
        <center>
            Giá gốc: <span class="orgin_price"><strike><?php echo number_format($product_detail[0]['cost'] - ($product_detail[0]['cost'] * $detail_sale_off[0]['percent']) / 100) ?></strike></span>  VND
        </center>
        <div class="price_detail">

            <center>
                <span class="price2"><?php echo number_format($product_detail[0]['cost'] - ($product_detail[0]['cost'] - ($product_detail[0]['cost'] * $detail_sale_off[0]['percent']) / 100)) ?></span> <span class="price2">(-<?php echo $detail_sale_off[0]['percent'] ?>%)</span> 
            </center>
        </div>
    <?php } ?>
    <center> <img id="btn_mua" width="169" height="40" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/mua_1.png" onclick="add_to_card_form(<?php echo $product_detail[0]['id_product'] ?>,<?php echo $price ?>);" class="add_cart_button"> </center>
    <?php
    if ($this->uri->segment(2) != '' || $this->uri->segment(2) != null) {
        ?>
        <input type="hidden" name="id_ref" id="id_ref" value="<?php echo base64_encode($this->uri->segment(2)); ?>" />
        <?php
    } else {
        ?>
        <input type="hidden" name="id_ref" id="id_ref" value="0" />
    <?php } ?>
    <div>
        <br>
        <div id="defaultCountdown274" style="text-align:center;font-size:10px" class="hasCountdown"></div>
        <div>
            <br>
        </div>
        </center>
    </div>
    <div style="height:1px;clear:both"></div>
</div>
<div style="hight:1px">&nbsp;</div>
<div style="clear:both"></div>
<div class="product_detail_2">

    <div style="padding:10px">
        <?php echo $product_detail[0]['content'] ?>
    </div>
    <div id="main2"></div>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-share-button" data-href="<?php echo full_url_($_SERVER) ?>" data-type="button_count"></div>
    <!-- Đặt thẻ này vào nơi bạn muốn Nút +1 kết xuất. -->
    <div class="g-plusone" data-annotation="inline" data-width="37" data-href="<?php echo full_url_($_SERVER) ?>"></div>

    <!-- Đặt thẻ này sau thẻ Nút +1 cuối cùng. -->
    <script type="text/javascript">
        window.___gcfg = {lang: 'vi'};

        (function() {
            var po = document.createElement('script');
            po.type = 'text/javascript';
            po.async = true;
            po.src = 'https://apis.google.com/js/platform.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(po, s);
        })();
    </script>
    <div class="fb-comments" data-href="<?php echo full_url_($_SERVER) ?>" data-numposts="5" data-colorscheme="light"></div>
</div>	
