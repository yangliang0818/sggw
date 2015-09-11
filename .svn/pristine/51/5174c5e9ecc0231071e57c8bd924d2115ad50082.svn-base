<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-10
  Time: 下午9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>接待点录入</title>
</head>
<body>
<form action="adminsuccess!addServArea.action" method="post">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;接待点录入
    </STRONG><BR>
    </DIV>
    <BR>
    <table width="100%" align="center">
        <tr>
            <td width="8%">省份</td>
            <td>
                <select name="province" style="width: 215px;">
                    <s:iterator value="#session.ActiveProvinces" var="provinceBean" status="stat">
                        <option value="${provinceBean.simplename}">
                             ${provinceBean.name}
                        </option>
                    </s:iterator>
                </select>
            </td>
        </tr>
        <tr>
            <td width="8%">地区</td>
            <td>
                <input type="text" size="30" name="area"><font color="red">*例如：上海</font>
            </td>
        </tr>
        <tr>
            <td>联系地址</td>
            <td>
                <textarea rows="5" cols="80" name="address"></textarea><font color="red">*详细的联系地址</font>
            </td>
        </tr>
        <tr>
            <td>联系电话</td>
            <td>
                <input type="text" size="30" name="phone"><font color="red">*例如：021-31391923 </font><br/>
            </td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
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
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</form>
</body>
</html>