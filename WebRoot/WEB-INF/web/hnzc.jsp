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
            <img src="http://www.shiguwen.com/images/partner/law/hnzc.jpg" alt="" width="340px;">
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;河南至诚旧机动车鉴定评估有限公司是经国家商务部正式备案、河南省商务厅批准成立并颁发有《二手车鉴定评估机构核准证书》的有限责任公司，是我国首家成立的独立第三方专业机动车鉴定评估机构，2007年2月取得河南省司法厅颁发的《司法鉴定许可证》，并纳入中华人民共和国最高人民法院专家库名录。2011年5月由全国汽车维修专项技能认证技术支持中心授权为河南省唯一的《全国汽车专项技能认证》培训机构，负责全省的《汽车碰撞估损师》、《汽车保险理赔师》、《维修企业管理师》、《汽车营销师》《二手车鉴定评估师》等资格的培训、认证及推广。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司从业人员资质完备，具有国家注册高级鉴定评估师六名，中级鉴定评估师十五名，司法鉴定人五名，轮胎质量检验师三名，检验检测设备齐全。以专业的服务素养、一流的服务水准赢得客户的一致好评。公司将严守职业道德，遵循独立、公正、科学、客观的原则，竭诚为广大客户提供最优质服务！</p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>