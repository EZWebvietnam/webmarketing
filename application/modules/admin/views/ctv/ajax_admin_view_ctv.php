
<script type="text/javascript">
    $(document).ready(function() {
        $("input").each(function() {
            $("input.readonly").css('background-color', '#f2f2f2');
        });
    });
</script>
<div class="h-pop">
    <div class="h-icon"></div>
    <h3>Chi tiết cộng tác viên</h3>
</div>
<div class="m-pop">
    <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/admin_cp/js/core/price_format.js"></script>
    <form action="<?php echo base_url(); ?>admin/ctvadmin/view/<?php echo $detail_ctv[0]['id'] ?>" method="post" accept-charset="utf-8" id="adminform"><input type="hidden" name="id" value="74">
        <table class="form" style="width: 550px;">

            <tr>
                <td class="label">Họ tên</td>
                <td colspan="3">
                    <?php echo $detail_ctv[0]['full_name'] ?>
                </td>
            </tr>
             <tr>
                <td class="label">SĐT</td>
                <td colspan="3">
                    <?php echo $detail_ctv[0]['phone'] ?>
                </td>
            </tr>
            <tr>
                <td class="label">Địa chỉ</td>
                <td colspan="3">
                    <?php echo $detail_ctv[0]['address'] ?>
                </td>
            </tr>
            <tr>
                <td class="label">Email</td>
                <td colspan="3">
                    <?php echo $detail_ctv[0]['email'] ?>
                </td>
            </tr>
            <tr>
                <td class="label">IP Last Login</td>
                <td colspan="3">
                    <?php echo $detail_ctv[0]['last_ip'] ?>
                </td>
            </tr>
            <tr>
                <td class="label">Last Login</td>
                <td colspan="3">
                    <?php echo date('d/m/Y h:i:s',strtotime($detail_ctv[0]['last_login'])); ?>
                </td>
            </tr>
            <td></td>
            
            </tr>

        </table>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $("a.grouped_elements").fancybox({
            'padding': 0,
            'titleShow': false,
            'autoScale': false,
            'transitionIn': 'none',
            'transitionOut': 'none',
            'hideOnOverlayClick': false,
            'hideOnContentClick': false,
            'overlayShow': true,
            'type': 'ajax'
        });
    });
</script>