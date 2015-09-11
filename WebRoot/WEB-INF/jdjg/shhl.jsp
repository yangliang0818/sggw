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
                上海恒量医学交流服务中心司法鉴定所</div>
            <div class="aticle">
                <h5>上海恒量医学交流服务中心司法鉴定所</h5>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上海恒量医学交流服务中心司法鉴定所由上海交大教育服务产业投资管理（集团）有限公司和上海恒量保险公估有限公司共同捐资成立的上海恒量医学交流服务中心申请建立，由上海交通大学原副校长张世民任法人代表，依托并整合交大资源，聘请高级专业司法鉴定人员任职，目前主要依托上海交大医学院的力量开展法医临床和法医病理鉴定。上海恒量医学交流服务中心司法鉴定所坚持公平、公正、客观、科学的原则，力争建设成为一流的综合性司法鉴定中心。</p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 155px;">
                <jsp:include page="../interest.jsp?pagename=zyfx" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
