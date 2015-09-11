<%@ page import="java.util.Map" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <script type="text/javascript">
        function init() {
            document.forms[0].submit();
        }
    </script>
</head>
<body onload="init()">
<form action="index.html" method="post">
    <input type="hidden" value="sh" name="province">
</form>
</body>
</html>