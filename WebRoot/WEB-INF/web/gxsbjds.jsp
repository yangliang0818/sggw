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
        <p align="center" style="margin-top: 10px;margin-bottom: 10px;">
            <img src="http://www.shiguwen.com/images/partner/law/gxsb.png" width="340px;">
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广西盛邦司法鉴定中心是经广西壮族自治区司法厅核准登记由中华人民共和国司法部备案的司法鉴定机构，司法鉴定许可证号：450410004。是梧州市一家面向社会服务的司法鉴定机构，出具的鉴定报告在全国范围之内均具有法律效力。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广西盛邦司法鉴定中心独立于公检法系统之外，是一家面向社会服务的综合性、权威性鉴定机构，不受其他社会因素影响，中立鉴定，鉴定结果科学、客观、公正。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广西盛邦司法鉴定中心与梧州市人民医院强强合作，拥有各种先进的鉴定设备和经验丰富的专家队伍。同时，中山大学、广东司法警官学院又是本中心的坚强技术后盾，能及时地完成各项鉴定业务。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;※ 鉴定范围※</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法医病理鉴定，法医临床鉴定，法医毒物鉴定，法医物证鉴定，文书鉴定</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;※服务宗旨※</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本中心在鉴定工作中坚持科学、独立、公正的原则，热诚、认真为委托人服务，遵循中立性与服务性相结合的方针，自觉接受社会各界的监督，保守国家秘密、商业秘密和个人隐私，尽职尽责、诚实守信、举止文明、廉洁自律，严格执行司法鉴定程序，始终遵循合法性、客观性、中立性、独立性、公正性原则，为推进民主法制建设而贡献力量。</p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>