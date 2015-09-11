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
            document.forms[0].action = "admindeleteprogress!deleteProgress.action?id=" + id;
            document.forms[0].submit();
        }
    </script>
</head>
<body>
<form action="" method="post">
    <li>案情进展列表(请再选中一个案情进展)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>选中</td>
            <td>序号</td>
            <td>案情进展编号</td>
            <td>案情进展时间</td>
            <td>案例编号</td>
            <td>案情进展内容</td>
        </tr>
        <s:iterator value="#session.adminnewsAttrBeans" var="adminNewsAttrBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="button" value="删除"
                           onclick="deleteCase(${adminNewsAttrBean.id})">
                </td>
                <td width="8%" align="center">
                        ${stat.index+1}
                </td>
                <td width="10%" align="center">
                        ${adminNewsAttrBean.id}
                </td>
                <td width="10%" align="center">
                        ${adminNewsAttrBean.attrDate}
                </td>
                <td width="8%" align="center">
                        ${adminNewsAttrBean.newsid}
                </td>
                <td width="60%">
                    &nbsp; ${adminNewsAttrBean.attrArea}
                    <input type="hidden" id="attrArea${adminNewsAttrBean.id}" value="${adminNewsAttrBean.attrArea}">
                </td>
            </tr>
        </s:iterator>
    </table>
</form>
</body>
</html>