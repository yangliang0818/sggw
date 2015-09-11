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
            3分钟让你掌握事故处理维权
        </h3>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发生事故后，牢记以下几点，可以帮你在事故处理中更好的维权。
        </p>

        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>第一，利用好司法鉴定的法律效力。</B>
        </p>

        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;司法鉴定主要解决两个问题，一是确定谁应该对事故负责（应该向谁索赔），二是确定索赔金额。司法鉴定报告具有法律效力,是我国七种法定证据之一，往往起到关键作用，要善于利用司法鉴定报告来维权（关于司法鉴定的作用，请见<a href="http://www.shiguwen.com/web/zyjs.html" target="_blank" style="color: #1a74ba;"><u><B>司法鉴定在交通事故处理中的作用</B></u></a>）。
        </p>

        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>第二，向事故鉴定专家寻求帮助。</B>
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;遇到难以鉴定，或鉴定费用过高，或对已有的鉴定报告不认可等情况，可向事故鉴定专家寻求帮助。与司法鉴定相比，专家提供帮助的形式与收费灵活，可以提供专业咨询意见，出具专业分析报告，甚至还可参与出庭或调解，以专家证人的身份帮你维权。
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于专家在事故处理中的作用，请见<a href="http://www.shiguwen.com/web/zjzxbg.html" target="_blank" style="color: #1a74ba;"><u><B>专家咨询报告在事故处理中的价值</B></u></a>以及<a href="http://www.shiguwen.com/web/fzzr.html" target="_blank" style="color: #1a74ba;"><u><B>专家证人与专家辅助人</B></u></a>。
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>第三，聘请专业的律师处理。</B>
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很多当事人为了省钱，在事故处理时不愿请律师。岂不知这样做是拣了芝麻丢了西瓜。专业律师熟悉相关法律法规和流程，可帮你争取权益最大化。自己处理的话，费时费心不说，该争取到的权益没有争取到，甚至该打赢的官司打输了，到时候得不偿失，后悔莫及。
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>最后，可以通过事故问获得事故处理帮助。</B>
        </p>
        <p class="areaFontP">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事故问作为一个专业的事故处理平台，拥有全国各地的专业资源，不管是做鉴定、找专家还是请律师，都可替你争取优惠的费用，并对各个环节的服务质量把关。若委托事故问提供"一站式"事故处理服务，事故问还可根据案情所需，为你做好全面的准备，整体费用更节省，权益更有保障，让事故处理不留遗憾。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>