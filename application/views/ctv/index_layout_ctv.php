
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html>
<head>
    <title>Quản lý bán hàng</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    

<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/jquery.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/360vnit.alert.js?v=2.0" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/menu.js?v=2.0" charset="UTF-8"></script>

<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/function.admin.app.js?v=2.0" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/app.js?v=2.0" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/tabui.js?v=2.0" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/jquery.validate.min.js?v=2.0" charset="UTF-8"></script>
<!--<script type="text/javascript" src="http://quanlybanhang.360vnit.com/app/templates/ckeditor/ckeditor.js"></script>-->

<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/fancybox/jquery.easing-1.3.pack.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/jquery.watermarkinput.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/price_format.js"></script>

<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/styles.css?v=2.0" media="screen" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/button.css?v=2.0" media="screen" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/tabui.css?v=2.0" media="screen" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/360vnit.alert.css?v=2.0" media="screen" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/menu.css?v=2.0" media="screen" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/fancybox/jquery.fancybox-1.3.4.css" media="screen" />


<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/datepicker.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/ezwebvietnam/admin_cp/css/datetheme.css">
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/jquery.ui.core.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/jquery.ui.datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/js/core/jquery.ui.widget.js"></script

 


</head>
<body>
    <div id="wrapper">
        <div id="loading">
            <div id="loadimg">Đang tải ...</div>
        </div>
        <!-- Begin Menu -->
        <div id="appmenu"><div id="menu">
    <ul>
        <li><a class="select" href="javascript:;" rel="hethong"><span>Hệ thống</span></a></li>
                <li><a href="javascript:;" rel="danhmuc"><span>Danh mục</span></a></li>
                        <li><a href="javascript:;" rel="chucnang"><span>Chức năng</span></a></li>
                        <li><a href="javascript:;" rel="baocao"><span>Báo cáo - Thống kê</span></a></li>
                        <li><a href="javascript:;" rel="congno"><span>Công nợ</span></a></li>
                        <li><a href="javascript:;" rel="tonkho"><span>Tồn kho</span></a></li>
                        <li><a href="javascript:;" rel="sodu"><span>Số dư đầu kỳ</span></a></li>
                        <li><a href="javascript:;" rel="timkiem"><span>Tìm kiếm</span></a></li>
            </ul>
</div>
<div id="submenu">
    <div id="div_hethong" class="menucontent" style="display: block;">
        <div class="box_menu">
            <div class="box_menu_right">    
                <ul>
                    <li class="main">
                        <a href="<?php echo base_url();?>ctv/homectv/logout" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/logout.png" alt=""></div>
                            Thoát                        </a>
                    </li>
                </ul>
                <div class="title_menu">Thoát</div>
             </div>
        </div>
        <div class="box_menu">
            <div class="box_menu_right">
                <ul>         
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/accountinfo" class="grouped_elements">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/taikhoan.png" alt=""></div>
                            Tài khoản                        </a>
                    </li>       
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/accountinfo/doimatkhau" class="grouped_elements">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/change_pass.png" alt=""></div>
                            Đổi mật khẩu                        </a>
                    </li> 
                </ul>
                <div class="title_menu">Tài khoản</div>
             </div>
        </div>
          
                                                  </div>
               <div id="div_danhmuc" class="menucontent">
         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                                        <li class="main">
                        <a href="<?php echo base_url();?>ctv/productctv/ajax_get_product" rel="khachhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/customers.png" alt=""></div>
                            Khóa học
                        </a>
                    </li>  
                                                            <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/khncc/ncc/dsncc" rel="npp" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/hire-me.png" alt=""></div>
                            Nhà cung cấp
                        </a>
                    </li> 
                                    </ul>
                <div class="title_menu">Khách hàng</div>
             </div>
         </div>
                  
                           <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                                        <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/store/liststore" rel="khohang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/store.png" alt=""></div>
                            Kho
                        </a>
                    </li>
                           
                                              
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/unit/listunit" rel="donvitinh" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/unit-icon.png" alt=""></div>
                            Đơn vị tính
                        </a>
                    </li> 
                                                            <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/tygia/dstygia" rel="tygia" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/bank.png" alt=""></div>
                            Tỷ giá
                        </a>
                    </li>
                     
                      
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/hanghoa/nghanhhang/dsnghanhhang" rel="nghanhhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/icon_cat.png" alt=""></div>
                            Ngành hàng
                        </a>
                    </li>
                                                            <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/hanghoa/nhomhang/dsnhomhang" rel="nhomhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/icon_cat.png" alt=""></div>
                            Nhóm hàng
                        </a>
                    </li>
                                                     
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/hanghoa/sanpham/dssanpham" rel="sanpham" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/box.png" alt=""></div>
                            Hàng hóa
                        </a>
                    </li>
                                                               
                                 
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/hanghoa/import/uploadfile" rel="sanpham" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/tonkho.png" alt=""></div>
                            Import Hàng hóa
                        </a>
                    </li>
                                         
                </ul>
                <div class="title_menu">Danh mục</div>
             </div>
         </div>
              </div> 
     <!-- Begin Bao cao-->
          
     <div id="div_baocao" class="menucontent"  >
                 <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                     
                    <li class="main">
                        <a style="max-width: 70px;" href="<?php echo base_url();?>ctv/homectv/login" rel="nhapxuatton" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/xuat-nhap-ton.png" alt=""></div>
                            Nhập xuất tồn
                        </a>
                    </li>
                                         
                    <li class="main">
                        <a style="max-width: 79px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/baocaotheongay/banhang" rel="theongay" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/date.png" alt=""></div>
                            Bán hàng và thu tiền theo ngày
                        </a>
                    </li> 
                                         
                    <li class="main">
                        <a style="max-width: 84px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/baocaotheongay/nhaphang" rel="nhaphang_chi" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/date.png" alt=""></div>
                            Nhập hàng và chi tiền theo ngày
                        </a>
                    </li> 
                                         
                    <li class="main">
                        <a style="max-width: 95px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/nhapvao/nhomhang" rel="nhapvao_nhomhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/khoahoc.png" alt=""></div>
                            Hàng hóa nhập vào theo Nhóm hàng
                        </a>
                    </li> 
                                    </ul>
                <div class="title_menu">Thống kê báo cáo</div>
             </div>
         </div>
                           <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                     
                    <li class="main">
                        <a style="max-width: 95px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/banra/nhomhang" rel="banra_nhomhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/khoahoc.png" alt=""></div>
                            Hàng hóa bán ra theo Nhóm hàng
                        </a>
                    </li> 
                                         
                    <li class="main">
                        <a style="max-width: 95px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/banra/nhanvien" rel="banra_nhanvien" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/khoahoc.png" alt=""></div>
                            Hàng hóa bán ra theo Nhân viên
                        </a>
                    </li> 
                                    </ul>
                <div class="title_menu">Bán hàng</div>
             </div>
         </div>
                           <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                     
                    <li class="main">
                        <a style="max-width: 65px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/baocaotheongay/thuchi" rel="hangton" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/hangton.png" alt=""></div>
                            Tổng hợp thu chi theo ngày
                        </a>
                    </li>
                                         
                    <li class="main">
                        <a style="max-width: 95px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/thuchi/index" rel="bc_thuchi" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/khoahoc.png" alt=""></div>
                            Báo cáo thu chi
                        </a>
                    </li> 
                                    </ul>
                <div class="title_menu">Thu chi</div>
             </div>
         </div>
                           <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                    <li class="item">
                        <ul class="main-sub">
                                                        <li><a href="http://quanlybanhang.360vnit.com/index.php/doanhso/banhang/nhanvien" rel="doanhso_nhanvien" class="v_link">Doanh số bán hàng theo nhân viên</a></li>
                                                                                    <li><a href="http://quanlybanhang.360vnit.com/index.php/doanhso/banhang/loinhuan" rel="loinhuan_donhang" class="v_link">Lợi nhuận theo đơn hàng</a></li>
                                                                                    <li><a href="http://quanlybanhang.360vnit.com/index.php/baocao/quahan/index" rel="hd_quahan" class="v_link">Đơn hàng xuất quá hạn thanh toán</a></li>
                                                    </ul>
                    </li> 
                </ul>
                <div class="title_menu">Bán hàng</div>
             </div>
         </div>
                  
     </div>     
     <!-- End Bao cao -->     
         <div id="div_chucnang" class="menucontent"  >
                 <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                              
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/nhap/nhaphang/dsnhaphang" rel="nhaphang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/cart_add.png" alt=""></div>
                            Nhập hàng
                        </a>
                    </li>
                                                  
                    <li class="main">
                        <a style="max-width: 65px;" href="http://quanlybanhang.360vnit.com/index.php/nhap/nhaphangkhachtra/dsnhaphang" rel="khachtra" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/cart_add.png" alt=""></div>
                            Nhập hàng khách trả
                        </a>
                    </li>   
                                    </ul>
                <div class="title_menu">Nhập hàng</div>
             </div>
         </div>
                                    <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                                     
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/xuat/xuathang/dsxuathang" rel="xuathang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/cart_remove.png" alt=""></div>
                            Xuất hàng
                        </a>
                    </li>
                                                    
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/xuat/xuathangtncc/dsxuathang" rel="trancc" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/cart_remove.png" alt=""></div>
                            Xuất hàng trả NCC
                        </a>
                    </li>
                                    </ul>
                <div class="title_menu">Xuất hàng</div>
             </div>
         </div>
                    
         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                              
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/xuat/xuatnoibo/dsxuatnoibo" rel="xuatnoibo" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/nhapxuatnoibo.png" alt=""></div>
                            Nhập xuất nội bộ
                        </a>
                    </li>            
                    
                </ul>
                <div class="title_menu">Xuất nhập NB</div>
             </div>
         </div>
                   
         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/xuat/banle/dsbanle" rel="banle" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/shopping.png" alt=""></div>
                            Xuất bán lẻ
                        </a>
                    </li>
                </ul>
                <div class="title_menu">Bán lẻ</div>
             </div>
         </div>
                  
                           <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                           
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/thuchi/chi/dschi" rel="chi" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/phieuthu.png" alt=""></div>
                            Phiếu chi
                        </a>
                    </li>
                                                            <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/thuchi/thu/dsthu" rel="thu" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/phieuthuchi.png" alt=""></div>
                            Phiếu thu
                        </a>
                    </li>
                                    </ul>
                <div class="title_menu">Thu chi</div>
             </div>
         </div>
                                    <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                                        <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/chungtu/listchungtu" rel="chungtu" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/invoice.png" alt=""></div>
                            Chứng từ
                        </a>
                    </li>
                     
                </ul>
                <div class="title_menu">Khác</div>
             </div>
         </div>
              </div> 
     <!-- Begin Công nợ-->
     <div id="div_congno" class="menucontent"  >
                         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                     
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/congno/khachhang" rel="congno_kh" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/customers.png" alt=""></div>
                            Công nợ khách hàng
                        </a>
                    </li> 
                                         
                    <li class="main">
                        <a style="max-width: 65px;" href="http://quanlybanhang.360vnit.com/index.php/congno/nhacungcap" rel="congno_npp" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/hire-me.png" alt=""></div>
                            Công nợ nhà phân phối
                        </a>
                    </li>
                                        
                     
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/congno/nhanvien" rel="congno_nv" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/khoahoc.png" alt=""></div>
                            Công nợ nhân viên
                        </a>
                    </li> 
                                    </ul>
                <div class="title_menu">Công nợ</div>
             </div>
         </div>
              </div>     
     <!-- End công nợ --> 
     <!-- Begin Tồn kho-->
     <div id="div_tonkho" class="menucontent"  >
                         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                           
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/baocao/hangton/tonkho" rel="ton_khohang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/store.png" alt=""></div>
                            Tồn theo kho
                        </a>
                    </li> 
                                               
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/baocao/tienton/ds" rel="tontien" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/store_monney.png" alt=""></div>
                            Tiền tồn theo kho
                        </a>
                    </li> 
                                         
                    <li class="main">
                        <a style="max-width: 65px;" href="http://quanlybanhang.360vnit.com/index.php/baocao/hangton/tonnghanhhang" rel="ton_nghanhhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/box.png" alt=""></div>
                            Tồn theo nghành hàng
                        </a>
                    </li>
                                         
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/baocao/hangton/tonnhomhang" rel="ton_nhomhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/icon_cat.png" alt=""></div>
                            Tồn theo nhóm hàng
                        </a>
                    </li> 
                                         
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/baocao/hangton/hanghoa" rel="ton_hanghoa" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/ton_theo_hang.png" alt=""></div>
                            Tồn theo hàng hóa
                        </a>
                    </li>
                                    </ul>
                <div class="title_menu">Thống kê hàng hóa tồn kho</div>
             </div>
         </div>
              </div>     
     <!-- End Tồn kho --> 
        <div id="div_sodu" class="menucontent"  >
         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                                        <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/sodu/khachhang/lists" rel="so_du_khachhang" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/sodu_kh.png" alt=""></div>
                            Số dư khách hàng
                        </a>
                    </li>
                                                            <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/sodu/nhacungcap/lists" rel="so_du_nhacungcap" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/sodu_ncc.png" alt=""></div>
                            Số dư nhà cung cấp
                        </a>
                    </li>
                                                            <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/sodu/sanpham/ds" rel="so_du_sanpham" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/sodu_sp.png" alt=""></div>
                            Số dư hàng hóa
                        </a>
                    </li>
                                    </ul>
                <div class="title_menu">Số dư</div>
             </div>
         </div>
    </div>
    <div id="div_timkiem" class="menucontent"  >
         <div class="box_menu">
            <div class="box_menu_right">
                <ul>
                    <li class="main">
                        <a href="http://quanlybanhang.360vnit.com/index.php/timkiem/hoadon/search" rel="timkiem_hoadon" class="v_link">
                            <div><img src="http://quanlybanhang.360vnit.com/icon/phieuthuchi.png" alt=""></div>
                            Tìm kiếm hóa đơn
                        </a>
                    </li>
                </ul>
                <div class="title_menu">Tìm kiếm</div>
             </div>
         </div>
     </div>
               
</div>
</div>
        <!-- End Menu -->
        <!--Begin content-->

         <div>
             <div id="content"><div>
         </div>
        
<ul id="tabs">
    <!-- Tabs go here -->
    <li class="current">
        <a class="tab" id="banlamviec" style="padding: 2px 10px 2px 5px">Bàn làm việc</a>
    </li>
</ul>
<div id="contenttab">
     <div class="show_overlay">
        <div class="overlay_msg">Đang tải Báo cáo...</div>
     </div>        
    <div id="banlamviec_content" class="sub_tabui">
        <table style="width: 100%;" class="table_full">
            <tr>
                <td valign="top" style="background: #FFF;padding: 5px 5px 5px 5px;">
                    <h3>Kết quả bán hàng theo ngày</h3>
                    <p>
                                                Tháng <select id="ch_m">
                                                        <option value="1" >1</option>
                                                        <option value="2" >2</option>
                                                        <option value="3" selected="selected">3</option>
                                                        <option value="4" >4</option>
                                                        <option value="5" >5</option>
                                                        <option value="6" >6</option>
                                                        <option value="7" >7</option>
                                                        <option value="8" >8</option>
                                                        <option value="9" >9</option>
                                                        <option value="10" >10</option>
                                                        <option value="11" >11</option>
                                                        <option value="12" >12</option>
                                                    </select>
                        Năm <select id="ch_y">
                                                        <option value="2014" selected="selected">2014</option>
                                                        <option value="2013" >2013</option>
                                                        <option value="2012" >2012</option>
                                                    </select>
                        <input type="button" id="bieudo_theongay" class="bt65" value="Xem biểu đồ">
                    </p>
                    <div id="chart_banhang_theo_ngay" style="width: 100%;">
                        
                    </div>
                    <h3>Biểu đồ doanh thu theo năm</h3>
                    <p>
                        Năm <select id="bd_y">
                                                        <option value="2014" selected="selected">2014</option>
                                                        <option value="2013" >2013</option>
                                                        <option value="2012" >2012</option>
                                                    </select>   
                        <input type="button" id="bieudo_theonam" class="bt65" value="Xem biểu đồ">                     
                    </p>
                    <div id="chart_tk_theonam" style="width: 100%;"></div>
                    <div id="chart_tk_theonam_ajax"></div>
                </td>
            </tr>
        </table>
                
    </div>
    <!-- Tab content goes here -->
<script type="text/javascript">
$(document).ready(function() {
    //Fetch Initial Data
    var thang = 03;
    var nam = 2014;
    $("#chart_banhang_theo_ngay").html('<img src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/images/loading.gif"> Đang tải dữ liệu biểu đồ');
    $.getJSON('<?php echo base_url();?>ajax/banhang_theongay/?thang='+thang+'&nam='+nam, function(data) {
        $("#chart_banhang_theo_ngay").css({'height':'300px'});
        buildLineChart(data);
    
        // Thong ke theo nam
        //$("#chart_tk_theonam").html('<img src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/app/templates/images/loading.gif"> Đang tải dữ liệu biểu đồ');
        /*$.getJSON(base_url+'ajax/thongke_theonam/?nam='+nam, function(data) {
            $("#chart_tk_theonam").css({'height':'400px'});
            buildLineLoinhuanNam(data);
            $.get(base_url+'ajax/thongke_theonam_ajax/?nam='+nam, function(data) {
                $("#chart_tk_theonam_ajax").html(data);
            });
        });*/
    });
    //On Change Refresh Chart
    
    $('#bieudo_theongay').click(function(e) {
        var thang = $("#ch_m").val();
        var nam = $("#ch_y").val();
        $("#chart_banhang_theo_ngay").html('<img src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/images/loading.gif"> Đang tải dữ liệu biểu đồ');
        $.getJSON('<?php echo base_url();?>ajax/banhang_theongay/?thang='+thang+'&nam='+nam, function(data) {
            $("#chart_banhang_theo_ngay").css({'height':'300px'});
            buildLineChart(data);
        });
    });
   

    //On Change Refresh Chart
    $('#bieudo_theonam').click(function(e) {
        var nam = $("#bd_y").val();
        $("#chart_tk_theonam").html('<img src="<?php echo base_url();?>template/ezwebvietnam/admin_cp/images/loading.gif"> Đang tải dữ liệu biểu đồ');
        $.getJSON('<?php echo base_url();?>ajax/thongke_theonam/?nam='+nam, function(data) {
            $("#chart_tk_theonam").css({'height':'400px'});
            buildLineLoinhuanNam(data);
            $.get('<?php echo base_url();?>ajax/thongke_theonam_ajax/?nam='+nam, function(data) {
                $("#chart_tk_theonam_ajax").html(data);
            });
        });
    });

});
</script> 
    </div>
<div id="footer">
    <div>Thời gian nạp trang 0.0782 's</div>
    <div>Copyright &copy; 2009 - 2011 Version 2.0. All right reserved</div>
</div>
<div id="msg"></div>
<div id="pop_bg"></div>
<div id="pop"></div>
</body>
</html>