<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-3-18
  Time: 下午10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>修改关键字</title>
    <META content="text/html" charset="utf-8" http-equiv=Content-Type>
    <LINK rel=stylesheet
          type=text/css href="css/admin.css">
</head>
<body>
<form action="adminsuccess!modifyKeyword.action" method="post">
    <li>修改关键字</li>
    <table>
        <tr>
            <td>
                页面标题
            </td>
            <td>
                <input type="hidden" name="id" value="${KeywordBean.id}">
                <input type="text" name="title" size="30" value="${KeywordBean.title}">
            </td>
        </tr>
        <tr>
            <td>
                页面名称
            </td>
            <td>
                <input type="text" name="pagename" size="30" value="${KeywordBean.pagename}">
            </td>
        </tr>
        <tr>
            <td>
                关键字
            </td>
            <td>
                <input type="text" name="keyword" size="30" value="${KeywordBean.keyword}">
            </td>
        </tr>
    </table>
    <div class="margintop">
        <input type="submit" value="提交">
        <input type="reset" value="重置">
    </div>
</form>
</body>
</html>