<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-15
  Time: 上午1:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function deleteCase(id) {
            document.forms[0].action = "admindeletepress!deletePress.action?id=" + id;
            document.forms[0].submit();
        }
    </script>
</head>
<body>
<form action="" method="post">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;案例删除
    </STRONG><BR>
    </DIV>
    <li>案情列表(请先选中一个案例)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>删除</td>
            <td>序号</td>
            <td>案例标题</td>
            <td>案例编号</td>
            <td>案例时间</td>
        </tr>
        <s:iterator value="#session.PressBeans" var="pressBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="button" value="删除"
                           onclick="deleteCase(${pressBean.id})">
                </td>
                <td width="8%" align="center">
                        ${stat.index+1}
                </td>
                <td width="60%">
                    <a href="newsarea!qryNewsArea.action?id=${pressBean.id}">${pressBean.area}${pressBean.title}</a>
                </td>
                <td width="8%" align="center">
                        ${pressBean.id}
                </td>
                <td align="center">
                        ${pressBean.newsDate}
                </td>
            </tr>
        </s:iterator>
    </table>
</form>
</body>
</html>