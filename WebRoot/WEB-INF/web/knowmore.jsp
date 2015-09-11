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
            更低的费用,更好的保障
        </h3>
        <p >
            <strong>更低的费用</strong>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	通过事故问获得合作方提供的专业法律服务与专业技术服务，服务费用100%优惠*。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	通过事故问聘请专业律师，若因律师的服务质量影响到最终服务结果，一经核实，事故问将向客户提供额外补偿，最高一万元**。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">*  为获得本项优惠，请在问题咨询及合同签订前主动向事故问合作方提出。</font>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">**  为获得本项优惠，请在聘请律师后及时<a href="djls.html" style="color: #1a74ba;"><u><B>点此登记</B></u></a>。</font>
        </p>
        <p >
            <strong>更好的保障</strong>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事故问整合了专业律师、事故处理专家与事故鉴定机构，可根据案情所需，提供法律服务、事故鉴定服务、鉴定报告评估、专家证人出庭等全方位服务。各种服务有机结合，令诉讼理赔更有力度，合法权益更有保障。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	通过事故问聘请专业律师，如客户对律师的业务能力或服务态度有任何意见，可通过<a href="tsjy.html" style="color: #1a74ba;"><u><B>投诉建议</B></u></a>进行反映，我们将在第一时间获知，并及时对合作律师予以督促*。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	对于事故问合作机构提供的专业鉴定，若客户对鉴定结论有异议，事故问可免费对鉴定报告进行评估，确保客户得到严谨、准确的鉴定结果。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	对于复杂的、具有争议的事故，事故问可借助"跨领域、跨机构"的专业资源，为客户提供融合法律与技术的"一站式"服务，依靠这些专业资源的综合实力，最大程度保障客户的合法权益。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">* 为获得本项优惠，请在聘请律师后及时<a href="djls.html" style="color: #1a74ba;"><u><B>点此登记</B></u></a>。</font>
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>