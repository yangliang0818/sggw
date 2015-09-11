<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="js/script_gizp.js"></script>
</head>
<body>
<!--header begin -->
<jsp:include page="head.jsp?menuid=m3"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:<a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>一站式理赔诉讼服务</div>
            <div class="aticle">
                <h5>一站式理赔诉讼服务</h5>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为事故问的一项独有服务，一站式理赔诉讼服务是指将专业鉴定、专家证人、专业律师等各种专业性资源有机融合在一起，以“技术+法律”的模式，为当事人提供事故处理中的一站式全包服务。采用这种服务模式最大的好处是，免去了当事人东奔西走，为了处理各种专业性问题而疲于奔波的烦恼（况且很多专业性资源当事人自己很难找到）。</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了使当事人的合法权益最大化，事故问将根据案情所需，协调各种专业资源参与事故的处理，并使总体费用更低。为了减轻当事人的前期经济负担，根据当事人的具体情况，事故问还可以采用后期付费的模式为当事人提供帮助。</p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 150px;">
                <jsp:include page="interest.jsp?pagename=wzjj" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
