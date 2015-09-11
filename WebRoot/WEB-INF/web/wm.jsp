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
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事故问(<a href="http://www.shiguwen.com"><font color="blue">www.shiguwen.com</font></a>)是首个专业的事故处理第三方服务平台，平台致力于降低大众的维权门槛，让每个人都有条件维权，都能够更好的维权。事故问关注的领域除了医疗事故、交通事故、工伤事故等狭义上的事故之外，还包括刑事案件等广义上的带有突发性特点的“事故”。</p>

        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们的合作方包括全国各地的专业律师，以及医学、法医学、道路交通等领域的鉴定机构与鉴定专家。在这里，您可以用更低的成本，获得全方位的维权服务，包括法律服务、事故鉴定服务以及专家辅助人服务。这些服务不受地域限制，无论您身处哪里，都可以就近找到我们的合作方，获得优质的服务。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为一个专业的第三方服务平台，我们为您带来的价值是：
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）帮助您大幅降低维权费用，甚至以“零费用”维权
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;针对各类案件维权难、维权成本高的问题，事故问利用与律师的长期合作关系，可帮助您争取服务费用大幅优惠，最高可将费用降低一半以上，让您维权无负担。不仅如此，如果您的经济确实困难，事故问还可以代为垫付律师服务费，维权成功后再收取费用，彻底解决您的经济压力，真正实现了“有钱没钱，都能维权”。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">如果您自己找到了合适的律师，但是费用问题谈不拢，也可以向我们寻求帮助。对于与律师进行价格沟通，我们比您有经验，也有优势。</font></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）为您提供全方位的专业服务资源
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            对于医疗、交通、工伤等事故，以及其他人身伤害案件，往往需要进行医学、法医学、车辆工程等方面的技术鉴定。事故问作为首个专业的服务平台，除了可为您提供全国各地的法律服务资源，还可为您提供各学科领域的鉴定机构与鉴定专家。若您需要进行鉴定，我们会根据具体案情，为您提供合适的鉴定机构；若您对已有的鉴定不服，我们除了可帮助您重新鉴定之外，还可以为您提供鉴定专家，以技术顾问（专家辅助人）的身份帮助您推翻不合理的鉴定。事故问利用专业资源整合的优势，所倡导的“法律+技术”相结合的一站式服务，可让维权效果更好。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）使您获得更好的服务保障
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在服务方面，事故问将“保障当事人的合法权益”放在首要位置。通过事故问，您无需担心找到不靠谱的律师、鉴定机构或鉴定专家，因为事故问已经替您筛选出了专业的、可靠的合作方。同时，事故问会扮演好“监督员”的角色，督促合作方为您提供更加用心的服务。事故问作为专业的第三方维权服务平台，对合作方的影响力远远比您要大，相比于您自己去操心服务质量，可以让您更加省时省心。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>