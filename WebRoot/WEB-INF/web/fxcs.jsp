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
        <h3 style="color: #ab7c12">
            交通事故责任认定为何要分析车速
        </h3>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很多人可能还记得，前几年曾经有一个杭州飙车案轰动全国。这个案子之所以轰动，原因在于肇事车车速原本看上去很高，却被认定为仅有七十码。若车速为七十码，则此案只是一起普通交通事故，肇事者不涉及刑事责任；若车速过高，则肇事者可能会涉嫌危害公共安全罪，需要承担刑事责任。因此，车速的高低在本案中是一个核心问题，引起举国关注。
        </p>

        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上面这个事故是一个典型案例，说明了很多交通事故处理时为何要分析车速。分析车速的目的在于确定事故当事人是否有超速驾驶违章行为，一旦超速，将在责任划分及理赔时面临更大的责任分担。
        </p>

        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;由于车速的确定与分析过程比较复杂，因此实际中的很多事故，该做车速分析却没有做，导致当事人对责任认定存在异议。比如，没有红绿灯的交叉路口，相对行驶的一辆直行车与一辆正在转弯的车辆相撞，直行车车速很快，导致转弯车中的乘员受伤。这种情况下，若仅凭交通法中的“转弯车让直行车”来判定，则直行车无责任或只承担次要责任。但是，若经过车速鉴定，发现直行车存在超速行驶，则直行车应该承担同等责任甚至主要责任，因为车速过高往往是导致事故发生的直接原因。
        </p>

        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果在责任认定阶段没有考虑车速的问题怎么办？这种情况下可以提请对责任认定进行复核。即使复核无效，也可在理赔诉讼阶段，通过专业的车速鉴定报告，来要求改变责任分担。
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(事故问原创，转载请注明出处)
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>