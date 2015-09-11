<%--
  Created by IntelliJ IDEA.
  User: yangliang
  Date: 13-8-25
  Time: 下午9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<input type="hidden" name="randomCode" id="randomCode"
       value="<%=request.getSession().getAttribute(request.getParameter("sessionId"))%>">
</body>
</html>