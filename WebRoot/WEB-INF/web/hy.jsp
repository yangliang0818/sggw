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
            <B>律师会员服务</B>
        </h3>

        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在医疗、交通、人身伤害等案件的处理中，经常会遇到各种技术性问题，如事故因果关系、医疗过错参与度、伤残等级、伤情、汽车安全性能等。这些问题超出了法律问题的范畴，但往往对理赔诉讼具有重要影响，律师在办理此类案件时，如果有技术方面的支持，对案件的处理会大有帮助。
        </p>

        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事故问（<a href="http://www.shiguwen.com" style="color: #1a74ba;">www.shiguwen.com</a>）是国内首个以法律诉讼技术服务为特色的网站。网站拥有医学、法医学、车辆、痕迹分析等领域的专家资源与合作鉴定机构，可提供技术问题分析、司法鉴定、争议性鉴定报告评估、专家辅助人服务等。此外，通过与各地律师合作，事故问还可为全国范围内的客户推荐律师。
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为协助律师处理好专业性案件，即日起，事故问面向广大律师推出会员制服务，对于事故问的会员，可享受事故问提供的法律诉讼技术支持与案源优先推荐两大权益。
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>会员权益一：法律诉讼技术支持</B>
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 专业技术问题咨询
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 司法鉴定咨询与鉴定机构推荐
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 争议性鉴定报告评估（包括伤情、死因、医疗事故、医疗过错、车速、事故成因、痕迹等鉴定报告）
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 医疗类案件接案前材料审查，确定是否值得接案
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>会员权益二：案源优先推荐</B>
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于事故问的客户的法律服务需求，优先推荐给客户所在地的律师会员。
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（在涉及到技术性问题的案件中，以技术服务入手，取得当事人的信赖，在此基础上推荐律师，是事故问开创的一种新型服务模式。采用这种模式，事故问已经与许多律师开展过成功的合作）
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成为事故问的会员，您将可以：
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 提高专业性案件的处理能力
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 开拓新的业务领域（如专业门槛高的医疗纠纷领域）
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 拥有“法律+技术”的综合性实力，更具竞争优势
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.shiguwen.com/images/duigou.gif" alt=""> 获得更多的案源机会
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>会员费</B>
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red"><B>980元/年</B></font>（推广期优惠价格）<BR><BR>
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>附件1 各类案件中的专业技术问题</B>
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交通事故：事故成因、车速、谁是驾驶员、伤残等级、痕迹比对、车辆部件故障等
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医疗事故：医疗过错及参与度、因果关系、伤残等级等
        </p>
        <p class="areaFont">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人身损害刑事案：伤情（轻微伤、轻伤、重伤）分析、致死致伤物、生前伤死后伤等
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>