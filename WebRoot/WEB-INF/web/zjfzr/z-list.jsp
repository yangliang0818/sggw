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
        <jsp:include page="../head.jsp" flush="false"></jsp:include>
    </div>

    <div class="ui-content" style="font-size: 14px; line-height: 1.8">
        <h3 style="color: #ab7c12">专家辅助人
        </h3>
        <ur>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="z-1.html" style="color: #1a74ba;" rel="external">为专家辅助人出庭制度叫好</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="z-2.html" style="color: #1a74ba;" rel="external">鉴定"看不懂"？专家来辅助</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="../zy.html" style="color: #1a74ba;" rel="external">医疗纠纷处理中专家辅助人的作用</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="z-4.html" style="color: #1a74ba;" rel="external">专家辅助人与医生的区别</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="z-5.html" style="color: #1a74ba;" rel="external">专家辅助人与鉴定人等的区别</a>
            </li>
        </ur>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>