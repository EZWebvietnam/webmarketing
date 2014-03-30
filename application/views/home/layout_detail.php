
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title><?php echo $header['title'] ?></title>
        <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
        <meta name="Author" content="<?php echo $header['author'] ?>" />
        <meta name="Publisher" content="<?php echo $header['publisher'] ?>" />
        <meta name="Copyright" content="<?php echo $header['copyright'] ?>" />
        <meta name="robots" content="<?php echo $header['robots'] ?>" />
        <meta name="distribution" content="<?php echo $header['distribution'] ?>" />
        <meta name="rating" content="<?php echo $header['rating'] ?>" />
        <meta name="keywords" content="<?php echo $header['keywords'] ?>" />
        <meta property="fb:app_id" content="150104728527998">


            <meta name="description" content="<?php echo $header['description'] ?>" />
            <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/css.css" media="screen"  />
            <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/jquery.countdown.css" media="screen"  />
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/scripts/main.htm"></script>
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/js/jquery-1.8.3.js"></script>
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/js/jquery.plugin.js"></script>
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/js/jquery.tools.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/js/jquery.countdown.js"></script>
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/js/jquery-ui.js"></script>
            <script type="text/javascript" src="<?php echo base_url(); ?>plugin/ckeditor/ckeditor.js"></script>

            <script type="text/javascript">
                var curent_price = 0;
                var curent_product_id = 0;
                var price_unit = "VND";
                var app_main_url = "";
                var my_safecode = "view";
                var app_ext = ".htm";
                var my_url = "U1";
                try {
                    var new_reg_success = '<p><span style="color: rgb(51, 51, 51);"><span style="font-size: medium;"><span style="font-family: Arial;">Xin chúc mừng!</span></span></span></p>    <p><span style="color: rgb(51, 51, 51);"><span style="font-size: medium;"><span style="font-family: Arial;">Bạn đã đăng ký nhận quà thành công.</span></span></span></p>    <p><span style="color: rgb(51, 51, 51);"><span style="font-size: medium;"><span style="font-family: Arial;">Bạn hãy mở Email để nhận quà của chúng tôi.</span></span></span></p>    <p><span style="color: rgb(51, 51, 51);"><span style="font-size: medium;"><span style="font-family: Arial;">Thành công cho bạn.</span></span></span></p>';
                } catch (e) {
                }
                var my_template = "template_1";
                var my_curent_page = "U1";
            </script>
            <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/js/cart_script3.js"></script>


    </head>
    <body>
        <div class="sidelinks-container"><h3><a href="#top">Top</a></h3></div>
        <div id='banner' style="min-height:80px">
            <div class='banner_content'>
                <!--Widget-->
                <div style="width:1000px">
                    <p style="margin:0;padding:0"><img alt="" src="<?php echo base_url(); ?>template/ezwebvietnam/home/bannervinamos3.png" /></p>  
                </div>
                <!--/Widget-->
            </div>
            <div class='banner_header'>
            </div>
            <div class='logo'>
                <img src='<?php echo base_url(); ?>file/uploads/logo/<?php echo $header['logo'] ?>' width='220' height='80' alt='' />
            </div>
            <div class='top_menu' >
                <a href="<?php echo base_url(); ?>" class="home">Trang chủ</a>
                <a href="/U1/contact.htm" class="contact">Liên hệ</a>
                <a href="#"  onclick="show_cart('<?php echo base_url(); ?>')"  class="cart">
                    Giỏ hàng (<span id="product_number" style="color:#ef4232;font-weight:700">0</span>)
                </a>
            </div>
            <div class='login_form'>
                <?php
                $login = array(
                    'name' => 'login',
                    'id' => 'login',
                    'value' => set_value('login'),
                    'maxlength' => 80,
                    'maxsize' => 30,
                    'class' => 'input-large span10',
                    'style' => 'width:200px;border:0;height:23px;color:#005398;font-style: italic;',
                    'placeholder' => 'Username'
                );
                $password = array(
                    'name' => 'password',
                    'id' => 'password',
                    'maxsize' => 30,
                    'class' => 'input-large span10',
                    'type' => 'password',
                    'style' => 'padding-left:10px;width:200px;border:0;height:23px;color:#005398;font-style: italic;',
                    'placeholder' => 'Password'
                );
                if (!$this->tank_auth->is_login_ctv(TRUE)) {
                    ?>
                    <form style='margin:0px;padding:0px' method='post' action='<?php echo base_url(); ?>cong-tac-vien/login'>

                        <input onclick="window.location.href = '<?php echo base_url(); ?>cong-tac-vien/register';
                                    return false;" style='float:right;margin-top:-5px' type="image" src="<?php echo base_url(); ?>template/ezwebvietnam/home/button-title-register.png" name="ss" value='ss' width="126" height="32" />
                        <input style='float:right;margin-top:-5px' type="image" src="<?php echo base_url(); ?>template/ezwebvietnam/home/button-title-login.png" name="submit" value='submit' width="126" height="32" />
                        <?php echo form_input($login); ?>
                        <?php echo form_input($password); ?>

                    </form>
                <?php } else { ?>
                    <style>
                        .setting{
                            padding-left:100px;width:160px;border:0;height:23px;color:white;font-style: italic;
                        }
                        .setting a {
                            color:white !important;
                        }

                    </style>
                    <span style="margin-top:-5px;width:160px;border:0;height:23px;color:white;font-style: italic;"> Xin chào <?php echo $this->session->userdata('username') ?> </span><span class="setting"> <a href="<?php echo base_url(); ?>cong-tac-vien">Cộng tác viên</a></span>
                <?php } ?>
            </div>
        </div>
        <div style='width:1000px;margin: 0 auto 0 auto;'>
            <ul id='menu'>
                <li>
                    <a href='<?php echo base_url(); ?>'>Trang Chủ</a>
                </li>
                <li>
                    <a href='<?php echo base_url(); ?>gioi-thieu'>Giới thiệu</a>
                </li>
                <li>
                    <a href='<?php echo base_url(); ?>san-pham'>Sản Phẩm</a>
                </li>
                <li>
                    <a  href='<?php echo base_url(); ?>hoi-dap'>
                        Hỏi Đáp		</a>
                </li>
                <li>
                    <a  href='<?php echo base_url(); ?>tin-tuc'>
                        Tin Tức		</a>
                </li>
                <li>
                    <a  href='<?php echo base_url(); ?>lien-he'>
                        Liên hệ		</a>
                </li>
            </ul>
            <div style='clear:both'></div>
        </div>
        <div id='hide_content' style="display:none"></div>
        <div id='process_loading' style="display:none"></div>
        <div id='emailform' style="display:none">
            <div  style="float:right;cursor:pointer;margin:0" onclick="close_form()"><b>[x]</b></div>
            <div id="email_form_content">
                <div class="content">
                    <p><embed height="160" loop="true" menu="true" play="true" pluginspage="http://www.macromedia.com/go/getflashplayer" src="https://vinamos.vn/uploads/popup-vinamos.swf" type="application/x-shockwave-flash" width="500"></embed></p>
                </div>
                <div class="formcontent">
                    <center>
                        <form id="email_form_content_table" name='emailform2' action='' method='post' onsubmit='return checkvaliemail()'>
                            <table width="330">
                                <tr>
                                    <td width="100">
                                        <span style="font-size:12px">Họ và tên:</span>
                                    </td>
                                    <td>
                                        <input type='text'  name='userrealname' id='userrealname' class="textbox" /><span id='userrealname_e' style="color:#f00;font-size:11px"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100">
                                        <span style="font-size:12px">Email:</span>
                                    </td>
                                    <td>
                                        <input type='text'  name='useremail' id='useremail' class="textbox" /><span id='email_e' style="color:#f00;font-size:11px"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100">
                                        <span style="font-size:12px">Điện thoại:</span>
                                    </td>
                                    <td>
                                        <input type='text'  name='userphone' id='userphone' class="textbox" /><span id='userphone_e' style="color:#f00;font-size:11px"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" valign="top">
                                        <span style="font-size:12px">Mã bảo mật:</span>
                                    </td>
                                    <td>
                                        <div style="float:left">
                                            <input type='text'  name='sercuritycode' id='sercuritycode'  class="textbox" style="width:50px" /><?php echo $image; ?>
                                            <br />
                                            <a href="#" onclick="$('#se_image').attr('src', '/captcha/captcha.php?' + new Date().getTime())">Đổi hình</a>
                                        </div>
                                        <span id='sercuritycode_e' style="color:#f00;font-size:11px"></span>
                                    </td>
                                </tr>
                            </table>
                            <div style="clear:both"></div>
                            <input type="submit" name="submit_email" value='   Gửi   '  />
                        </form>
                        <div id="email_form_content_loading" style="display:none"><br /><br /><br /><center><img src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/ajax-loader.gif" alt="loading" /></center></div>
                    </center>
                </div>
            </div>
        </div>
        <div id='cart_form' style="display:none">
            <div  style="float:right;cursor:pointer;margin:0" onclick="close_add_to_card_form()"><b>[x]</b></div>
            <div class="form_header">
                Thêm vào giỏ hàng
            </div>
            <div class="formcontent">
                <center>
                    <div id='add_to_cart_form_div'>
                        <form name='add_to_cart_form' action='' method='post'>
                            <table width="330">
                                <tr>
                                    <td width="100">
                                        <span style="font-size:12px">Số lượng:</span>
                                    </td>
                                    <td>
                                        <input type='text'  name='product_num' id='product_num' class="textbox" onkeyup="cal_price_value();" /><span id='product_num_e' style="color:#f00;font-size:11px"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" valign="top">
                                        <span style="font-size:12px">Thành tiền:</span>
                                    </td>
                                    <td>
                                        <span id="cash"></span><span id="price_u"></span>
                                    </td>
                                </tr>
                            </table>
                            <div style="clear:both"></div>
                            <input type="button" name="submit_email" onclick="add_to_cart_db(<?php echo $product_detail[0]['id_product'] ?>, '<?php echo base_url(); ?>');" value='Thêm vào giỏ'  />
                        </form>
                    </div>
                    <div id="add_to_cart_form_result">
                        <center>
                            <b>
                                Sản phẩm bạn vừa đặt đã được đưa vào giỏ hàng.<br />
                                Hãy vào giỏ hàng để tiến hành đặt hàng.<br />
                            </b>
                            Xin chân thành cảm ơn<br /><br />
                            <input type="submit" name="submit_email" value='   Vào giỏ hàng   ' onclick="close_add_to_card_form();
                                    show_cart('<?php echo base_url(); ?>');" /> 
                            <input type="submit" name="submit_email" value='   Mua tiếp   ' onclick="close_add_to_card_form();" />
                        </center>
                    </div>
                </center>
            </div>
        </div>
        <div id='show_cart_form' style="display:none;text-align:left">
            <div  style="float:right;cursor:pointer;margin:0" onclick="close_show_cart_form()"><b>[x]</b></div>
            <div class="form_header">Giỏ hàng <img src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/d_icon.png" width="30" alt="Xóa" style="cursor:pointer" onclick="if (confirm('Bạn có chăc muốn xóa?'))
                        clear_cart()" /></div>
            <div id="cart_content">

            </div>
            <div class="formcontent" style="height:280px;clear:both;margin-top:25px;overflow:auto;clear:both" onmouseover='$("#show_cart_form").draggable("disable");' onmouseout='$("#show_cart_form").draggable("enable");'>



            </div>
            <img src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/dathang.png" class="add_cart_button" onclick="show_order_form()" style="padding-top:5px" />
        </div>


        <div id='show_order_form' style="display:none">
            <div  style="float:right;cursor:pointer;margin:0" onclick="close_show_order_form()"><b>[x]</b></div>
            <div class="form_header">
                Đặt hàng
            </div>
            <div style="clear:both;margin-top:25px;display:none" id="o_content_result"><p><span style="color: rgb(51, 51, 51);"><span style="font-size: medium;"><span style="font-family: Arial;">Ch&uacute;c mừng bạn đ&atilde; đăng k&yacute;&nbsp;th&agrave;nh c&ocirc;ng!</span></span></span></p>    <p><span style="color: rgb(51, 51, 51);"><span style="font-size: medium;"><span style="font-family: Arial;">Ch&uacute;ng t&ocirc;i đ&atilde; gửi th&ocirc;ng b&aacute;o&nbsp;về Email của bạn, bạn h&atilde;y kiểm tra Email của m&igrave;nh trong &iacute;t ph&uacute;t nữa.</span></span></span></p></div>
            <div class="formcontent" style="clear:both;margin-top:25px" id="o_content">
                <table cellspacing='2' cellpadding='0' width="480" >
                    <tr>
                        <td width="100" align="right">

                        </td>
                        <td>
                            Bạn không thể click Đặt hàng nếu không điền hoặc điền không đúng mã bảo mật
                        </td>
                    </tr>
                    <tr>
                        <td width="100" align="right">
                            Họ và tên (*):
                        </td>
                        <td>
                            <input type="text" id="o_realname" name="o_realname" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td width="100" align="right">
                            Địa chỉ (*):
                        </td>
                        <td>
                            <input type="text" id="o_address" name="o_address" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td width="100" align="right">
                            Điện thoại (*):
                        </td>
                        <td>
                            <input type="text" id="o_phone" name="o_phone" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td width="100" align="right">
                            Email (*):
                        </td>
                        <td>
                            <input type="text" id="o_email" name="o_email" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td width="100" align="right" valign="top">
                            Mã bảo mật:
                        </td>
                        <td>
                            <div style="float:left">
                                <input type='text'  name='sercuritycode' id='o_sercuritycode'  style="width:80px" /><div id="image_cpc"><?php echo $image; ?></div>
                                <a style="cursor: pointer;" id="change_captcha">Đổi ảnh khác</a>
                            </div>
                            <span id='sercuritycode_e' style="color:#f00;font-size:11px"></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" align="right">
                            Yahoo:
                        </td>
                        <td>
                            <input type="text" id="o_yahoo" name="o_yahoo" size="30" />
                        </td>
                    </tr>

                </table>
                <center>
                    <img id="checkout" src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/dathang.png" class="add_cart_button" onclick="order_process('<?php echo base_url(); ?>')" style="padding-top:5px" />
                </center>
            </div>
            <div id="o_email_form_content_loading" style="display:none"><br /><br /><br /><center><img src="<?php echo base_url(); ?>template/ezwebvietnam/home/template/template_1/images/ajax-loader.gif" alt="loading" /></center></div>
        </div>

        <script type='text/javascript'>
            $(document).ready(function() {
                $("#footer").each(function() {
                    var $this = $(this);
                    $this.html($this.html().replace(/&nbsp;/g, ''));
                });
                document.getElementById('checkout').style.pointerEvents = 'none';
                $("#o_sercuritycode").change(function() {
                    $.ajax({
                        type: "POST",
                        url: '<?php echo base_url(); ?>home/product/check_captcha_ajax',
                        data: {captcha: $('#o_sercuritycode').val()},
                        mimeType: "multipart/form-data",
                        dataType: "json",
                        cache: false,
                        success: function(data) {
                            if (data.error == 1)
                            {
                                document.getElementById('checkout').style.pointerEvents = 'none';
                            }
                            else
                            {
                                document.getElementById('checkout').style.pointerEvents = 'auto';
                            }
                        }
                    });
                });
                $('#change_captcha').click(function() {
                    $.ajax({
                        type: "POST",
                        url: '<?php echo base_url(); ?>home/product/create_captcha_ajax',
                        mimeType: "multipart/form-data",
                        dataType: "json",
                        cache: false,
                        success: function(data) {
                            if (data.error == 0)
                            {
                                $('#image_cpc').html(data.img);
                            }
                        }
                    });
                });
                $("#hide_content").css("width", screen.width + 'px');
                $("#hide_content").css("height", screen.height + 'px');
                $("#emailform").css("left", ((screen.width / 2) - 250) + 'px');
                $("#cart_form").css("left", ((screen.width / 2) - 250) + 'px');
                $("#show_cart_form").css("left", ((screen.width / 2) - 250) + 'px');
                $("#show_order_form").css("left", ((screen.width / 2) - 250) + 'px');
                var checkform_email = getCookie('closeform');

                if (checkform_email != "true") {
                    $("#emailform").css("display", "");
                    $("#hide_content").css("display", "");
                    $("#emailform").draggable();
                }
                count_product_quantity();
                $("#product_num").keydown(function(event) {
                    // Allow: backspace, delete, tab, escape, and enter
                    if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 ||
                            // Allow: Ctrl+A
                                    (event.keyCode == 65 && event.ctrlKey === true) ||
                                    // Allow: home, end, left, right
                                            (event.keyCode >= 35 && event.keyCode <= 39)) {
                                // let it happen, don't do anything
                                return;
                            } else {
                                // Ensure that it is a number and stop the keypress
                                if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                                    event.preventDefault();
                                }
                            }
                        });
            });
        </script>
        <div id="body_bg">
            <div id='main_body_content2'>
                <div id="main_page" style="word-break: break-all;">
                    <div id="center222">
                        <?php echo $this->load->view($main_content); ?>

                        <div style='hight:1px'>&nbsp;</div>
                        <div style='clear:both'></div>
                        <!--Widget-->
                        <!--/Widget-->
                    </div>

                </div>
                <div id='left_block' >
                    <div style="padding:5px">
                        <!--Widget-->
                        <?php
                        foreach ($list_product_sale as $product_sale) {
                            ?>
                            <div>
                                <p style="text-align: center;">
                                    <a href="<?php echo base_url(); ?>">
                                        <?php
                                        if (file_exists($_SERVER['DOCUMENT_ROOT'] . ROT_DIR . 'file/uploads/sale/' . $product_sale['img']) && is_file($_SERVER['DOCUMENT_ROOT'] . ROT_DIR . 'file/uploads/sale/' . $product_sale['img']) && $product_sale['img'] != '') {
                                            ?>
                                            <img alt="" src="<?php echo base_url(); ?>file/uploads/sale/<?php echo $product_sale['img'] ?>" style="width: 240px; height: 300px;" />
                                        <?php } else { ?>
                                            <img alt="" src="<?php echo base_url(); ?>file/uploads/no_image.gif" style="width: 240px; height: 300px;" />
                                        <?php } ?>
                                    </a></p>    
                                <p style="text-align: center;"><a href="<?php echo base_url(); ?>" style="line-height: 1.6em;">
                                    </a><br />  &nbsp;</p>  
                            </div>
                        <?php } ?>
                        <div>
                            <p style="text-align: center;"><iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fvietmongco.vn&amp;width=240&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:240px; height:290px;" allowTransparency="true"></iframe></p>
                        </div>
                        <div>
                            <iframe target="__blank" src="http://www.youtube.com/subscribe_widget?p=vietmongco" 
                                    style="overflow: hidden; height: 105px; width: 240px; border: 0;" 
                                    scrolling="no" frameBorder="0">
                            </iframe>
                        </div>
                        <!--
                        <?php
                        foreach ($list_clip as $clip) {
                            ?>
                                        <div>
                                            <p><iframe allowfullscreen="" frameborder="0" height="200" src="//www.youtube.com/embed/<?php echo $clip['code'] ?>" width="235"></iframe></p>

                                        </div>
                        <?php } ?>
                        -->
                        <div>

                        </div>
                        <!--/Widget-->
                    </div>
                </div>	<div style='clear:both'></div>
            </div>
            <!--Widget-->
            <!--/Widget-->
            <div id="footer">
                <p style="text-align: center;"><span style="color:#FFF0F5;"><span style="font-size: small; font-family: Arial; line-height: 1.6em;">    </span><span style="font-family: Arial; line-height: 1.6em; font-size: 16px;"><strong> <?php echo $info_company[0]['address'] ?></strong></span></span></p>   
                <?php echo $info_company[0]['footer'] ?>
                Developed by <a href="http://www.facebook.com/ezwebvietnam" target="_blank">EZWebVietnam</a>
            </div>

    </body>
</html>