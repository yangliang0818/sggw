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
            <img src="http://www.shiguwen.com/images/partner/law/hnmj.jpg" alt="">
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;湖南明鉴司法鉴定所是湖南省司法厅于2007年11月经省司法厅批准成立的面向社会服务的车辆专业司法鉴定机构，本所拥有高级技术人才多名，配套相关检测设备，以法为纲，以镜为鉴，明鉴是非曲直，维护公平与正义，以科学的态度，严谨的办案程序，诚信的理念，优良的综合素质，竭诚为公，检，法机关仲裁机构及律师事务所，企事业单位和当事人提供司法鉴定服务，对弱势群体进行相关法律援助； 经湖南省司法厅审查考核，于2010年11月升级更名为湖南明鉴司法鉴定所。</p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>