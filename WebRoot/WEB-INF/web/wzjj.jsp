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
        <h3 style="color: #ab7c12">关于我们</h3>
        <p>事故问是一个提供全方位事故处理服务的网站。网站整合了全国各地的事故鉴定机构、事故鉴定专家、专业律师等资源。 通过事故问，可以委托鉴定机构进行事故鉴定、聘请专业律师、咨询事故处理中的各种专业性问题、获得专家证人出庭支持等。 事故问以“更低的费用，更好的保障”为使命，致力于打造一个专业、超值、可信赖的“一站式”事故处理服务平台。</p>
        <h4>一、合作资源</h4>
        <ul>
            <li>专业机构    事故问的合作专业机构包括全国各地的专业事故鉴定机构及科研机构（参见我们的技术资源）。 俗话说"术业有专攻"，每个机构在不同的专业领域都有自己的优势，可以根据实际情况，提供不同种类的事故鉴定，以及事故分析、事故深度研究。</li>
            <li>专家顾问    事故问的专家顾问团队由国内多个专业机构的技术负责人或技术骨干组成，专业涵盖了法医学、车辆工程、痕迹学、力学等各相关领域。对于事故处理中的专业性问题，专家可借助扎实的专业功底与丰富的从业经验进行解决。如有必要，专家还可配合律师参与调解、提供理赔诉讼指导，甚至以专家的身份出庭作证，以取得好的诉讼效果。</li>
            <li>专业律师    事故问的合作律师资源包括全国各地的事故处理专业律师，这些律师在事故理赔诉讼方面大都具有丰富的经验，可以为客户提供各种法律问题的咨询与服务。</li>
        </ul>

        <h4>二、更好的保障</h4>
        <p>
            通过事故问聘请专业律师，如客户对律师的业务能力或服务态度有任何意见，可通过投诉建议进行反映，我们将在第一时间获知，并及时对合作律师予以督促（为获得本项保障，请在聘请律师后及时点此登记）。
            此外，若因律师的服务质量影响到最终服务结果，一经核实，事故问将向客户提供额外补偿，最高一万元（为获得本项保障，请在聘请律师后及时点此登记）。
            对于事故问合作机构提供的专业鉴定，若客户对鉴定结论有异议，事故问可免费对鉴定报告进行评估，确保客户得到严谨、准确的鉴定结果。
            对于复杂的、具有争议的事故，事故问可借助“跨领域、跨机构”的专业资源，为客户提供融合法律与技术的“一站式”服务，依靠这些专业资源的综合实力，最大程度保障客户的合法权益。
        </p>
        <h4>三、更低的费用</h4>
        <p>
            事故问的合作方，无论是律师，还是专业机构，都可对我们的客户有一定的收费优惠。但是“更低的费用”不代表“最低的费用”，由于事故处理服务（尤其是法律服务）非标准化产品，没有统一的服务质量可供衡量，因此需要将服务质量与收费综合进行比较。若一味追求费用最低，而忽视了服务质量，往往会得不偿失。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>