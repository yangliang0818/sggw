<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <img src="http://www.shiguwen.com/images/partner/law/shzf.jpg" alt="" width="340px;" height="150px;">
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;华东政法大学司法鉴定中心成立30多年以来，为司法机关提供了近6万余案件的鉴定，采信率达到99.9%，在国内享有一定的知名度。近几年来，在司法部、市司法局正确领导下，学校领导支持下，中心添置、更新了鉴定所需的仪器设备，目前拥有为人、物、现象（影像）等鉴定的仪器设备，达到了鉴定的要求。同时中心依托华东政法大学国家级重点法学实验室，业务范围面向全国和上海市。中心接受公、检、法委托的各类案件，同时也接受保险公司、卫生部门等单位委托的人体损伤程度鉴定、伤残评定、死因鉴定、医疗纠纷、亲子鉴定、毒物分析，笔迹、印章鉴定，计算机声像资料鉴定，司法会计鉴定，保险理赔等，解决了许多疑难重大案件。中心为上海和全国建设和谐社会、依法治国国策做出了贡献，获得了各方面的认可，在国内有一定的影响力和声誉。并于2008年9月承办了“司法鉴定论坛——暨首届全国高校司法鉴定理论与实践研讨会”，取得了良好的社会与学术效果。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中心鉴定业务范围：法医病理鉴定、法医临床鉴定、法医物证鉴定、法医精神病鉴定、文书司法鉴定、痕迹司法鉴定、司法会计鉴定、计算机司法鉴定、声像资料司法鉴定；现具有司法鉴定执业资格的司法鉴定人44名，其中获博士、硕士学历者分别为14名和11名，副高以上职称31人。享受国务院特殊津贴者2人。
            中心主任闵银龙教授是华东政法大学刑事司法学院党委书记兼副院长、兼任生命科技与法律研究所所长。从事《法医学》、《司法鉴定学》、《现场物证技术研究》等教学科研工作近三十年，主编《法医学》是普通高等教育“十一五”国家级规划教材，并主编《司法鉴定》、《经济案件司法鉴定》、《司法精神医学》、《检案选编》《医患纠纷司法鉴定理论与疑难案例评析》《司法鉴定实验教程》等专著与教材，在《法学》、《中国司法鉴定》、《法医学杂志》、《刑侦研究》、《犯罪研究》、《国际东西方医学优秀成果经典》等国内外刊物上发表论文五十余篇。闵银龙教授长期从事司法鉴定检案实践，累计检案三万余例。兼任上海市犯罪学会副会长、上海市法医学会副秘书长、上海市人身伤害司法鉴定专家委员会专家委员、上海市法院咨询专家、中国司法鉴定杂志社副理事长、医学与法律特邀副主编、兼职律师等。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
