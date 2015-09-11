<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-23
  Time: 下午8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function deleteNews(id) {
            document.forms[0].action = "admindeletenews!deleteNews.action?id=" + id;
            document.forms[0].submit();
        }
    </script>
</head>
<body>
<form action="" method="post">
    <li>新闻列表</li>
    <table border="1" width="100%">
        <tr align="center">
            <td>删除</td>
            <td>新闻编号</td>
            <td>新闻标题</td>
            <td>新闻时间</td>
            <td>新闻内容</td>
        </tr>
        <s:iterator value="#session.newssBeans" var="newsBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="button" value="删除"
                           onclick="deleteNews(${newsBean.id})">
                </td>
                <td>
                        ${newsBean.id}
                </td>
                <td width="8%" align="center">
                        ${newsBean.title}
                </td>
                <td align="center">
                        ${newsBean.newsDate}
                </td>
                <td width="60%">
                    <a href="newsarea!qryNewsArea.action?id=${newsBean.id}">${newsBean.area}${newsBean.title}</a>
                </td>
            </tr>
        </s:iterator>
    </table>
</form>
</body>
</html>