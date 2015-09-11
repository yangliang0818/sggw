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
        <h3 style="color: #ab7c12">合作律师风采
        </h3>
        <ur>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-1.html" style="color: #1a74ba;" rel="external">医疗事故与医疗过错的区别</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-2.html" style="color: #1a74ba;" rel="external">出现医疗纠纷后患方应该考虑的八件事</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-3.html" style="color: #1a74ba;" rel="external">患方如何复印封存病历（可能面临的障碍及应对）</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-4.html" style="color: #1a74ba;" rel="external">医疗纠纷如何科学甄别专业律所和专业律师</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-5.html" style="color: #1a74ba;" rel="external">关于尸检应当由谁提出、是否已经告知尸检事项的举证责任</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-6.html" style="color: #1a74ba;" rel="external">医疗纠纷中鉴定机构的选择是举证的义务，也是权力</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-7.html" style="color: #1a74ba;" rel="external">医疗纠纷中涉及不同地域的多家医疗机构为被告的管辖问题</a>
            </li>
            <li class="areaFont"
                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                <a href="h-8.html" style="color: #1a74ba;" rel="external">湖南湘潭产妇死亡事件的法律分析</a>
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