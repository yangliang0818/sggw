<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-11
  Time: 下午5:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <SCRIPT src="admin/js/Dates.js"></SCRIPT>
</head>
<body>
<form action="adminsuccess!addCaseProgress.action" method="post">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;案情进展录入
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
                            onclick="javascript:document.forms[0].caseNoText.value=${adminNewsBean.id};">
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
    <BR>
    <li>案情进展录入</li>
    <BR>
    <table width="100%">
        <tr>
            <td width="18%" align="left">
                案情编号
            </td>
            <td>
                <input type="text" readonly="readonly" name="caseNoText" size="30">
            </td>
        </tr>
        <tr>
            <td width="18%" align="left">
                进展时间
            </td>
            <td>
                <input type="text" name="date" size="30"><font color="red">*格式：2012-12-05</font>
            </td>
        </tr>
        <tr>
            <td width="18%" align="left">
                进展内容
            </td>
            <td>
                <textarea rows="15" cols="50" name="content"></textarea>
            </td>
        </tr>
        <tr>
            <td width="18%" align="left">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="18%" align="left">
                &nbsp;
            </td>
            <td>
                <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>