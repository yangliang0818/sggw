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
    <title>增加推荐内容</title>
    <LINK rel=stylesheet
          type=text/css href="css/admin.css">
    <META content="text/html" charset="utf-8" http-equiv=Content-Type>
</head>
<body>
<form action="adminsuccess!addInterest.action" method="post">
    <li>增加推荐内容</li>
    <table>
        <tr>
            <td>
                页面标题
            </td>
            <td>
                <input type="text" name="title" size="30"> <font color="red">*页面内容的标题</font>
            </td>
        </tr>
        <tr>
            <td>
                页面名称
            </td>
            <td>
                <input type="text" name="pagename" size="30"> <font color="red">*页面右击属性.action前面的部分</font>
            </td>
        </tr>
        <tr>
            <td>
                链接地址
            </td>
            <td>
                <input type="text" name="url" size="30"> <font color="red">*仅填写域名后面的部分</font>
            </td>
        </tr>
        <tr>
            <td>
                热度
            </td>
            <td>
                <input type="text" name="number" size="30" value="0"><font color="red"> *默认热度为0</font>
            </td>
        </tr>
        <tr>
            <td>
               所属栏目
            </td>
            <td>
                <select name="model">
                     <option value="首页">首页</option>
                     <option value="伤残鉴定">伤残鉴定</option>
                </select>
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