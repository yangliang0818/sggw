<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <link rel="stylesheet" href="http://www.shiguwen.com/css/jquery.mobile-1.4.0-rc.1.css">
    <link rel="stylesheet" href="http://www.shiguwen.com/css/web/mobile.css">
    <!--必须框架jquery,jquery.mobile-->
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.js"></script>
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.mobile-1.4.0-rc.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            /*下拉菜单效果*/
            $(".ui-block-a:eq(0),.ui-block-b:eq(0),.ui-block-c:eq(0),.ui-block-d:eq(0),.ui-block-e:eq(0)").hover(function () {
                $(this).find("ul").removeClass("ui-grid-c").show();
            }, function () { $(this).find("ul").hide(); });
        });
    </script>
</head>
<body>
<div data-role="page">
    <!--网站标题及相关导航-->
    <div id="head" data-role="header" data-theme="b">
        <jsp:include page="head.jsp" flush="false"></jsp:include>
    </div>

    <div class="ui-content" style="font-size: 14px; line-height: 1.8">
        <p class="areaFont"
           style=" border-bottom: 1px solid #adadad;width: 100%;margin-bottom: 20px;margin-top: 20px;">
            <img src="http://www.shiguwen.com/images/bi.gif" alt="">&nbsp;<B>付款方式</B>
        </p>

        <p style="color: red">
            · 汇款中请注明您的真实姓名及联系方式，并尽量多汇一两角钱，以便确认;
        </p>

        <p style="color: red;border-bottom: 1px solid #adadad;padding-bottom: 20px;margin-bottom: 30px;">
            · 成功付费后请立即与我们的客服联系：400 021 9060。
        </p>

        <p style="color: #0000ff;">
            <B>银行汇款网上转账</B>
        </p>

        <p>
        <table width="100%" borderColor="#9ec9f4" bgColor="#9ec9f4" border="0" cellSpacing="1" cellPadding="1">
            <tr>
                <td width="30%" height="30" align="center" class="txt01" bgColor="#f2f6fb">
                    付款方式
                </td>
                <td width="70%" align="center" class="txt01" bgColor="#f2f6fb">
                    账户信息
                </td>
            </tr>
            <tr>
                <td height="56" align="center" bgColor="#ffffff">
                    <img src="http://www.shiguwen.com/images/bankny.gif" alt="">
                </td>
                <td height="56" align="left" class="txt01" bgColor="#ffffff">
                    开户行： 中国农业银行上海吴泾支行
                    <BR>
                    账  号：<strong>034020 0004002 3332</strong>
                    <BR>
                    收款人：上海富安汽车技术有限公司
                </td>
            </tr>
            <tr>
                <td height="56" align="center" bgColor="#ffffff">
                    <a href="http://www.alipay.com/user/logout.htm" target="_blank">
                        <img src="http://www.shiguwen.com/images/zfblogo.jpg" alt="" width="96px;">
                    </a>
                </td>
                <td height="56" align="left" class="txt01" bgColor="#ffffff">
                    户名：上海富安汽车技术有限公司
                    <BR>
                    支付宝账号：
                    <strong>info@farwei.com</strong>
                </td>
            </tr>
        </table>
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>