<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-23
  Time: 下午8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function init() {
           var currentDate=  new Date();
           document.forms[0].date.value=currentDate.getYear()+"-"+(currentDate.getMonth()+1)+"-"+currentDate.getDate();
        }
    </script>
</head>
<body onload="init()">
<form action="adminsuccess!inputNews.action" method="post">
    <table>
        <tr>
            <td>
                新闻时间
            </td>
            <td>
                <input type="text" name="date" size="30">
            </td>
        </tr>
        <tr>
            <td>
                新闻标题
            </td>
            <td>
                <input type="text" name="title" size="30">
            </td>
        </tr>
        <tr>
            <td>新闻内容</td>
            <td>
                <textarea rows="20" cols="100" name="content"></textarea>
            </td>
        </tr>
    </table>
    <table width="70%">
        <tr align="center">
            <td align="center">
                <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置">
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</form>
</body>
</html>