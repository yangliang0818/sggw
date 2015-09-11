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
        function deleteServArea(vid) {
            with (document.forms[0]) {
                id.value = vid;
                submit();
            }
        }
    </script>
</head>
<body>
<form action="admindeleteservarea!deleteServArea.action" method="post">
    <input type="hidden" name="id">
    <li>接待点列表</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>操作</td>
            <td>编号</td>
            <td>省份简拼</td>
            <td>省份</td>
            <td>地区</td>
            <td>联系地址</td>
            <td>联系电话</td>
        </tr>
        <s:iterator value="#session.ServAreaBeans" var="servAreaBean" status="stat">
            <tr align="center">
                <td width="5%" align="center">
                    <input type="button" value="删除" name="modifyradio"
                           onclick="deleteServArea('${servAreaBean.id}')">
                </td>
                <td width="5%" align="center">
                        ${servAreaBean.id}
                </td>
                <td width="8%" align="center">
                        ${servAreaBean.simpleName}
                </td>
                <td width="8%" align="center">
                        ${servAreaBean.province}
                </td>
                <td width="5%">
                        ${servAreaBean.areaName}
                </td>
                <td>
                        ${servAreaBean.address}
                </td>
                <td width="10%">
                        ${servAreaBean.phone}
                </td>
            </tr>
        </s:iterator>
    </table>
</form>
</body>
</html>