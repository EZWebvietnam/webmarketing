<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Chào mừng đến với <?php echo $site_name; ?>!</title></head>
<body>
<div style="max-width: 800px; margin: 0; padding: 30px 0;">
<table width="80%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="5%"></td>
<td align="left" width="95%" style="font: 13px/18px Arial, Helvetica, sans-serif;">
<h2 style="font: normal 20px/23px Arial, Helvetica, sans-serif; margin: 0; padding: 0 0 18px; color: black;">Xin chào <?php echo $name; ?>!</h2>
Cảm ơn bạn đã tiến hành đặt hàng tại website của chúng tôi. Chúng tôi xin gửi bạn chi tiết đơn đặt hàng của bạn<br />
<br />
<table border="1" bordercolor="#000000" style="background-color:#FFFFFF" width="100%" cellpadding="3" cellspacing="3">
	<tr>
		<td>Tên sản phẩm</td>
		<td>Số lượng</td>
		<td>Đơn giá</td>
                <td>Thành tiền</td>
	</tr>
        <?php 
       
        foreach($order_detail as $order)
        {
            $detail_product = $this->productmodel->product_detail($order['id_product']);
        ?>
	<tr>
		<td><?php echo $detail_product[0]['title']?></td>
		<td><?php echo $order['quantity']?></td>
		<td><?php echo $order['price']?></td>
                <td><?php echo $order['quantity']*$order['price']?></td>
	</tr>
        <?php } ?>
</table>


<br />
Cảm ơn bạn đã tin tưởng và sử dụng dịch vụ của Việt Mông Cổ!<br />
The <?php echo $site_name; ?> Team
</td>
</tr>
</table>
</div>
</body>
</html>
