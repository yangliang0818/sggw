<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-12-6
  Time: 下午3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function qryprogress(id) {
            with (document.forms[0]) {
                action = "admindeleteprogress!qryProgress.action";
                target = "progressiframe";
                submit();
            }
        }
    </script>
</head>
<body>
<form>
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;案例删除
    </STRONG><BR>
    </DIV>
    <li>案情列表(请先选中一个案例)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>选中</td>
            <td>序号</td>
            <td>案例标题</td>
            <td>案例编号</td>
            <td>案例时间</td>
        </tr>
        <s:iterator value="#session.adminNewsBeans" var="adminNewsBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="radio" name="id" value=" ${adminNewsBean.id}"
                           onclick="qryprogress(${adminNewsBean.id})">
                </td>
                <td width="8%" align="center">
                        ${stat.index+1}
                </td>
                <td width="60%">
                    <a href="newsarea!qryNewsArea.action?id=${adminNewsBean.id}">${adminNewsBean.area}${adminNewsBean.title}</a>
                </td>
                <td width="8%" align="center">
                        ${adminNewsBean.id}
                </td>
                <td align="center">
                        ${adminNewsBean.newsDate}
                </td>
            </tr>
        </s:iterator>
    </table>
    <iframe width="100%" scrolling="no" name="progressiframe" frameborder="0" height="700px;"
            style="margin: 0;padding: 0;"></iframe>
</form>
</body>
</html>