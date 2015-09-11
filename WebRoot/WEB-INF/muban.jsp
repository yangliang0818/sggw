<%@ page import="java.util.Map" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    Map<String, String> map = (Map) request.getSession().getAttribute("PageKeywords");
    pageContext.setAttribute("keyword", map.get("muban"));
%>
<html>
<head>
    <TITLE>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</TITLE>
    <META name="keywords" content="${keyword}">
    <meta name="Robots" content="all">
    <META content="MSHTML 6.00.2900.6182" name=GENERATOR>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <META http-equiv=Expires content=0>
    <META content=NOHTMLINDEX name=ROBOTS>
    <LINK href="css/main.css"
          type=text/css rel=stylesheet>
    <SCRIPT type=text/javascript src="js/main.js"></SCRIPT>
</head>
<BODY class=body>
<FORM>
    <!--LOGO-->
    <div>
        <jsp:include page="logo.jsp"></jsp:include>
    </div>
    &nbsp;<br>
    <!--菜单栏-->
    <DIV class=topNavContainer>
        <jsp:include page="menu.html"></jsp:include>
    </div>
    &nbsp;<br>
    &nbsp;<br>
    &nbsp;<br>
    <!--正文部分-->
    <div>
        <!--左边导航-->
        <div class="inlineDiv">
            <jsp:include page="navigation.html"></jsp:include>
        </div>
        <!--正中部分-->
        <div style="width: 56%" class="inlineDiv">

        </div>
        <!--右边部分-->
        <DIV class=RightColumn>
            <jsp:include page="rightFrame.jsp"></jsp:include>
        </DIV>
    </div>
</form>
<!--版权部分-->
<div>
    <jsp:include page="copyright.html"></jsp:include>
</div>
</body>
</html>