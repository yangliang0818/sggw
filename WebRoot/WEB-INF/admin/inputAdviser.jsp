<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-26
  Time: 下午10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>添加顾问</title>
</head>
<body>
<li>专家顾问信息录入</li>
<form method="post" action="adminsuccess!inputAdviser.action">
    <table>
        <tr>
            <td>
                专家姓名
            </td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td>
                专家简述
            </td>
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