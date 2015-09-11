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
        <h3 style="color: #ab7c12">四川西华机动车司法鉴定所</h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四川西华机动车司法鉴定所，是经四川省司法厅批准，
            依托西华大学交通与汽车工程学院设立的，为执法、仲裁活动提供科学鉴定的公益性组织。
            主要从事对涉及交通事故的车辆进行碰撞痕迹鉴定、车速鉴定、安全技术状况鉴定、交通事故形态鉴定以及其它与机动车有关的鉴定工作。
            现有执业司法鉴定人21名，其中具有高级职称15人。自2005年建所以来，已出具鉴定文书9000余份，为执法和诉讼活动提供了独立、客观的科学证据，受到好评。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为高校设立的司法鉴定所，我所坚持“独立客观、严谨规范”的执鉴宗旨，持续开展道路交通事故的成因分析及预防研究、事故车辆检验技术研究等科研工作。我所《汽车交通事故鉴定与分析技术研究》成果获四川省科技进步二等奖，获司法部“全国司法鉴定先进集体”称号；获国家认监委《资质认定》证书、认可委《认可证书》，获司法部司法鉴定科学技术研究所《车速鉴定能力验证》证书。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>