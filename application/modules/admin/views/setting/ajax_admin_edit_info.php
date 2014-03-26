
<script type="text/javascript">
    $(document).ready(function() {
        $("input").each(function() {
            $("input.readonly").css('background-color', '#f2f2f2');
        });
    });
</script>
<div class="h-pop">
    <div class="h-icon"></div>
    <h3>Sửa địa chỉ</h3>
</div>
<div class="m-pop">
    <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/admin_cp/js/core/price_format.js"></script>
    <form action="<?php echo base_url(); ?>admin/settingadmin/edit_address" method="post" accept-charset="utf-8" id="adminform"><input type="hidden" name="id" value="74">
        <table class="form" style="width: 550px;">

            
            <tr>
                <td class="label">Địa chỉ</td>
                <td colspan="3">
                    <textarea id="editor2"><?php echo $detail[0]['address'] ?></textarea>
                    <script type="text/javascript">
                                CKEDITOR.replace('editor2');
                            </script>
                </td>
            </tr>
            <tr>
                <td class="label"></td>
                <td colspan="3">
                    <input type="submit" value="Cập nhập" class="bt100"/>
                </td>
            </tr>
            <td></td>
            
            </tr>

        </table>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        //$('#cost_').priceFormat();
        $("#adminform").validate({
            rules: {
               
               
            },
            messages: {
               

            }
            , submitHandler: function(form) {
                var page = 1;
                dataString = $("#adminform").serialize();
                var content = CKEDITOR.instances['editor2'].getData();
                $.ajax({
                    type: "POST",
                    url: $("#adminform").attr('action'),
                    data: {address:content},
                    mimeType: "multipart/form-data",
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $.fancybox.close();
                        reload_callback("<?php echo base_url(); ?>admin/settingadmin/list_setting", page, 'khoahoc_content');
                        show_msg(data.msg);
                    }
                });
            }
        });
    });
</script>
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