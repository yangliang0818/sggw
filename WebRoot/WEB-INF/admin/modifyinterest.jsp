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
    <title>修改内容推荐</title>
    <META content="text/html" charset="utf-8" http-equiv=Content-Type>
    <LINK rel=stylesheet
          type=text/css href="css/admin.css">
</head>
<body>
<form action="adminsuccess!modifyInterest.action" method="post">
    <li>修改内容推荐</li>
    <table>
        <tr>
            <td>
                页面标题
            </td>
            <td>
                <input type="hidden" name="id" value="${InterestBean.id}">
                <input type="text" name="title" size="30" value="${InterestBean.title}">
            </td>
        </tr>
        <tr>
            <td>
                页面名称
            </td>
            <td>
                <input type="text" name="pagename" size="30" value="${InterestBean.pageName}">
            </td>
        </tr>
        <tr>
            <td>
                页面地址
            </td>
            <td>
                <input type="text" name="url" size="30" value="${InterestBean.url}">
            </td>
        </tr>
        <tr>
            <td>
                热度
            </td>
            <td>
                <input type="text" name="number" size="30" value="${InterestBean.number}">
            </td>
        </tr>
        <tr>
            <td>
                所属模块
            </td>
            <td>
                <input type="text" name="model" size="30" value="${InterestBean.model}">
            </td>
        </tr>
        <tr>
            <td>
                录入时间
            </td>
            <td>
                <input type="text" name="date" size="30" value="${InterestBean.date}" readonly="readonly">
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