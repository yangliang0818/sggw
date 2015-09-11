<%--
  Created by IntelliJ IDEA.
  User: yangliang
  Date: 13-11-5
  Time: 下午10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div style="background: #e2e0de;">
    <p class="areaFont">本文标签： <a href="http://www.shiguwen.com"><%=request.getParameter("keywords")%></a></p>
    <p class="areaFont">文文地址：<a href="http://www.shiguwen.com"><%=request.getParameter("pageUrl")%></a>,如需转载请注明出处！</p>
    <p class="areaFont">本文版权：<a href="http://www.shiguwen.com">事故问(www.shiguwen.com)</a> 版权所有！</p>
</div>
</body>
</html>