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
        <h3 style="color: #ab7c12">吉林省旧机动车鉴定估价有限公司
        </h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;吉林省旧机动车鉴定估价有限公司于2000年经原吉林省人民政府国内贸易办公室批准、吉林省工商行政管理局登记注册，取得企业法人营业执照。是吉林省内成立最早、资质最高、规模最大的旧机动车鉴定估价机构。我所先后于2002年2月和2004年9月经原吉林省经济贸易委员会（吉经贸资源字[2002]94号）、吉林省商务厅（吉商市场字[2004]7号）确认，具备旧机动车鉴定、估价的资质。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于2003年8月经吉林省司法厅批准，取得旧机动车司法鉴定、估价资格。（司法鉴定许可证证号2230109）。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于2003年2月成为吉林省高级人民法院指定旧机动车鉴定、估价单位。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于2003年1月成为长春市罚没物资管理中心指定旧机动车鉴定、估价单位。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于2004年12月入驻东三省最大的长春华港旧机动车交易市场，开展二手车交易评估业务。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我所地处长春市中心繁华地段——人民大街与解放大路交汇处，办公用房面积300m2。设有司法鉴定部、鉴定估价部、交易评估部、审核部、财务部及办公室6个部门，并在长春华港旧机动车交易市场设有评估窗口，从业人员30人，其中中国注册旧机动车高级鉴定估价师3人，高级工程师3人，汽车专业技师3人，中国注册旧机动车鉴定估价师16人。我所办公设备完善，业务全部实行局域联网，达到较高办公自动化水平；机动车检测设备齐全，有多台先进电脑检测设备，可对各种进口、国产车辆进行静态、动态全方位检测。并且与近百家汽车制造厂、汽车经销商、配件供应商建立了良好的合作关系，能及时、准确地了解各种车型整车及配件价格变动情况。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我所自成立以来，为吉林省高级人民法院及各地区中级人民法院司法鉴定中心、吉林省公安厅及各级公安机关、检察院、海关、工商、税务、财政、银行、资产管理公司、企事业单位、个人及旧机动车交易市场委托的旧机动车进行了大量的鉴定、估价工作，为法院判决、强制执行提供了详实准确的科学依据，无一次提出异议，从无差错，受到委托方的好评。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>