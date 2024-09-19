<!-- BEGIN: main -->
<div class="div_pay">
    <!-- BEGIN: error -->
    <div class="alert alert-danger">{ERROR}</div>
    <!-- END: error -->
    <div class="well">{LANG.note_pay}</div>
    <div class="div_pay_form">
        <form id="fcontact" method="post" action="" onsubmit="return nv_check_pay_send('{NV_GFX_NUM}');">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"> <em class="fa fa-user fa-fix fa-lg fa-horizon"> </em>
                    </span> <input maxlength="100" value="{DATA.customer_name}" name="customer_name" class="form-control required" placeholder="{LANG.customer_fullname}" type="text" />
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"> <em class="fa fa-envelope fa-fix fa-lg fa-horizon"> </em>
                    </span> <input maxlength="100" value="{DATA.customer_email}" name="customer_email" class="form-control required" placeholder="{LANG.customer_email}" type="text" />
                </div>
            </div>
            <!-- BEGIN: customer_phone -->
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"> <em class="fa fa-phone fa-fix fa-lg fa-horizon"> </em>
                    </span> <input maxlength="100" value="{DATA.customer_phone}" name="customer_phone" class="form-control" placeholder="{LANG.customer_phone}" type="text" />
                </div>
            </div>
            <!-- END: customer_phone -->
            <!-- BEGIN: customer_address -->
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"> <em class="fa fa-map-marker fa-fix fa-lg fa-horizon"> </em>
                    </span> <input maxlength="100" value="{DATA.customer_address}" name="customer_address" class="form-control" placeholder="{LANG.customer_address}" type="text" />
                </div>
            </div>
            <!-- END: customer_address -->
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"> <em class="fa fa-usd fa-fix fa-lg fa-horizon"> </em>
                    </span> <input maxlength="100" value="{DATA.customer_money}" onkeyup="this.value = FormatNumber(this.value);" name="customer_money" class="form-control required" placeholder="{LANG.customer_money}" type="text" />
                </div>
            </div>
            <!-- BEGIN: customer_content -->
            <div class="form-group">
                <div>
                    <textarea cols="8" name="transaction_info" class="form-control" maxlength="1000" placeholder="{LANG.customer_content}">{DATA.transaction_info}</textarea>
                </div>
            </div>
            <!-- END: customer_content -->
            <!-- BEGIN: baokim -->
            <div class="form-group">
                <div class="payment_list">
                    <div id="select_payment">
                        <div class="method row-fluid" id="2">
                            <div class="icon">
                                <img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{module_file}/creditcard.png" border="0" />
                            </div>
                            <div class="info">
                                <span class="title">Thanh toán trực tuyến bằng thẻ quốc tế</span>
                            </div>
                            <div class="bank_list">
                                <ul id="b_l">{PAYMENT_TYPE.credit_card}
                                </ul>
                            </div>
                            <div class="check_box"></div>
                        </div>
                        <div class="row-fluid method" id="3">
                            <div class="icon">
                                <img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{module_file}/transfer.png" border="0" />
                            </div>
                            <div class="info">
                                <span class="title">Chuyển khoản InternetBanking</span> <span class="desc">Chọn ngân hàng thanh toán</span>
                            </div>
                            <div class="bank_list">
                                <ul id="b_l">{PAYMENT_TYPE.internet_banking}
                                </ul>
                            </div>
                            <div class="check_box"></div>
                        </div>

                        <div class="row-fluid method" id="1">
                            <div class="icon">
                                <img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{module_file}/atm.png" border="0" />
                            </div>
                            <div class="info">
                                <span class="title">Thanh toán trực tuyến bằng thẻ ATM nội địa</span> <span class="desc">Chọn ngân hàng thanh toán</span>
                            </div>
                            <div class="bank_list">
                                <ul id="b_l">{PAYMENT_TYPE.local_card}
                                </ul>
                            </div>
                            <div class="check_box"></div>
                        </div>

                        <div class="row-fluid method" id="0">
                            <div class="icon">
                                <img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{module_file}/sercurity.png" border="0" />
                            </div>
                            <div class="info">
                                <div class="bk_logo">
                                    <a href="http://baokim.vn" target="_blank"><img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{module_file}/bk_logo.png" border="0" /></a>
                                </div>
                                <span class="title">Thanh toán Bảo Kim</span> <span class="desc">Thanh toán bằng tài khoản Bảo Kim (Baokim.vn)</span>
                            </div>
                            <div class="check_box"></div>
                        </div>
                    </div>
                    <input type="hidden" name="active_submit" value="submit" /> <input type="hidden" name="bank_payment_method_id" id="bank_payment_method_id" value="" /> <input type="hidden" name="shipping_address" size="30" value="Hà Nội" /> <input type="hidden" name="payer_message" size="30" value="Ok" /> <input type="hidden" name="extra_fields_value" size="30" value="" /> <input type="hidden" name="extra_payment" id="extra_payment" value="" />
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('.method').click(function () {
                            $(this).siblings().children().find('img').removeClass('img-active');
                            $('.method').removeClass('selected');
                            $('.check_box').removeClass('checked_box');
                            $(this).addClass('selected');
                            $('.selected .check_box').addClass('checked_box');
                            var method = $(this).attr('id');
                            if (method != 0) {
                                //$('.mode').css('display','block');
                                $('.info1').slideDown();
                                $('.selected img').click(function () {
                                    $('.method img').removeClass('img-active');
                                    $(this).addClass('img-active');
                                    var id = $(this).attr('id');
                                    $('#bank_payment_method_id').val(id);

                                });
                            } else {
                                //$('.mode').css('display','none');
                                $('.info1').slideUp('slow');
                                $('.method img').removeClass('img-active');
                            }
                        });

                        $('.input-mode').click(function () {
                            var a = $(this).val();
                            if (a == 2) {
                                $('#daykeep').css('display', 'block');
                            }
                            if (a == 1) {
                                $('#daykeep').css('display', 'none');
                            }

                        });
                    });
                </script>
            </div>
            <!-- END: baokim -->
            <!-- BEGIN: nganluongpro -->
            {FILE "nganluongpro.tpl"}
            <!-- END: nganluongpro -->

            <!-- BEGIN: captcha --> 
            <div class="form-group">
                <div class="middle text-right clearfix">
                    <img title="{LANG.input_capchar}" alt="{LANG.input_capchar}" src="{SRC_CAPTCHA}" class="captchaImg display-inline-block" width="150" height="40"> <em onclick="change_captcha('.fcode');" title="{LANG.change_captcha}" class="fa fa-pointer fa-refresh margin-left margin-right"></em> <input placeholder="{LANG.input_capchar}" maxlength="6" value="" name="captcha" class="fcode required form-control display-inline-block" style="width: 150px;" data-pattern="/^(.){6,6}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.alert_captcha}" type="text">
                </div>
            </div>
            <!-- END: captcha -->
            <div class="form-group text-center">
                <input type="hidden" name="checkss" value="{DATA.checkss}" /> <input class="btn btn-primary" name="submit" type="submit" value="{LANG.customer_submit}" />
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
    function FormatNumber(str) {
        var strTemp = GetNumber(str);
        if (strTemp.length <= 3)
            return strTemp;
        strResult = "";
        for (var i = 0; i < strTemp.length; i++)
            strTemp = strTemp.replace(",", "");
        var m = strTemp.lastIndexOf(".");
        if (m == -1) {
            for (var i = strTemp.length; i >= 0; i--) {
                if (strResult.length > 0 && (strTemp.length - i - 1) % 3 == 0)
                    strResult = "," + strResult;
                strResult = strTemp.substring(i, i + 1) + strResult;
            }
        } else {
            var strphannguyen = strTemp.substring(0, strTemp.lastIndexOf("."));
            var strphanthapphan = strTemp.substring(strTemp.lastIndexOf("."), strTemp.length);
            var tam = 0;
            for (var i = strphannguyen.length; i >= 0; i--) {

                if (strResult.length > 0 && tam == 4) {
                    strResult = "," + strResult;
                    tam = 1;
                }


                strResult = strphannguyen.substring(i, i + 1) + strResult;
                tam = tam + 1;
            }
            strResult = strResult + strphanthapphan;
        }
        return strResult;
    }

    function GetNumber(str) {
        var count = 0;
        for (var i = 0; i < str.length; i++) {
            var temp = str.substring(i, i + 1);
            if (!(temp == "," || temp == "." || (temp >= 0 && temp <= 9))) {
                alert("{LANG.inputnumber}");
                return str.substring(0, i);
            }
            if (temp == " ")
                return str.substring(0, i);
            if (temp == ".") {
                if (count > 0)
                    return str.substring(0, i);
                count++;
            }
        }
        return str;
    }

    function IsNumberInt(str) {
        for (var i = 0; i < str.length; i++) {
            var temp = str.substring(i, i + 1);
            if (!(temp == "." || (temp >= 0 && temp <= 9))) {
                alert("{LANG.inputnumber}");
                return str.substring(0, i);
            }
            if (temp == ",") {
                alert("{LANG.thaythedaucham}");
                return str.substring(0, i);
            }
        }
        return str;
    }
</script>
<!-- END: main -->