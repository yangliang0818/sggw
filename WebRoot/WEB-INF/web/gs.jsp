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
            }, function () {
                $(this).find("ul").hide();
            });
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
            <B>高速公路事故处理：找出“隐性第三方责任人”</B>
        </h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着我国高速公路的日益拓展，高速公路交通事故比例占道路交通事故的比例呈不断上升之势。</p>

        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;与一般道路交通的管理不同，高速公路管理有较为严格的国家、行业标准，也有专门的行政管理部门来管理高速公路交通安全、交通秩序、公路保护范围等事项。高速公路管理的这一特殊性，使得高速公路事故的处理有很多“讲究”，与一般道路交通事故的处理有很大差别。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;据高速公路管理专家介绍，高速公路上发生的事故，除了事故当事人自身的原因之外，往往还有高速公路管理上的原因。但目前，国内除了专门从事高速公路管理的专业人才，绝大多数人，包括资深交通事故律师，都不清楚高速公路管理的相关政策法规和标准，从而让原本可以承担责任的高速公路经营管理者这一“隐性第三方责任人”被忽视，该争取的权益没争取到，白白错过了机会。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;与高速公路管理有关的专业知识包括：
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif">公路附属设施规范设置、维护标准</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif">公路养护安全作业规范标准</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif">适用道路管理者维护、警示、防护义务认定</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif">适用公路养护作业单位维护、警示、防护义务标准性</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发生高速公路事故时，如果有高速公路管理方面的原因，那么上面这些知识可以成为向高速公路经营管理者索赔的依据。当然，是否确实存在高速公路管理上的问题，需要由高速公路管理专家做出判断。因此，高速公路事故维权时，一定要记住，除了找一个靠谱的专业律师，还要找高速公路管理专家来帮您。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            事故问作为专业的事故处理服务平台，拥有各行业的事故处理专家资源。在事故维权中，这些专家将配合我们的专业律师，以“律师+专家”的双重实力，为您的维权提供保障。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>