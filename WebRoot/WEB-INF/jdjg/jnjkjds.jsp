<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>事故问-遇到事故你就问</title>

    <link href="../css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="../js/script_gizp.js"></script>
</head>
<body>
<!--header begin -->
<jsp:include page="../head.jsp?menuid=m3"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="../left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:
                <a href="../http://www.shiguwen.com">首页 <em>&gt;</em></a>
                <a href="../jszy.html">技术资源<em>&gt;</em></a>
                吉林津科司法鉴定中心</div>
            <div class="aticle">
                <h5>吉林津科司法鉴定中心
                </h5>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;吉林津科司法鉴定中心是吉林省司法厅于2009年批准成立的具有独立法人资格的中立性鉴定机构。面向社会进行司法鉴定服务工作。2010年5月获得吉林省法院入册。准许在法院系统开展司法鉴定业务。中心拥有先进的检验设备，一流的检验鉴定人才。以科学、独立、客观、公正为宗旨。业务上精益求精，鉴定准确无误，获得了业界的好评。吉林津科司法鉴定中心的鉴定范围包括：法医临床鉴定、微量鉴定、痕迹鉴定、文书鉴定、法医毒物鉴定、法医物证鉴定、医疗过错鉴定、劳动能力鉴定等。
                </p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 150px;">
                <jsp:include page="../interest.jsp?pagename=zyfx" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
