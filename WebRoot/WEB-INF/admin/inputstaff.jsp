<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-4-20
  Time: 下午10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <SCRIPT src="admin/js/Dates.js"></SCRIPT>
</head>
<body>
<DIV class=underline align="center"><STRONG class=font_24>&nbsp;员工信息录入
</STRONG><BR>
</DIV>
<BR>
<table width="100%" align="center">
    <tr>
        <td width="8%">姓名</td>
        <td>
            <input type="text" size="30" name="area"><font color="red">*例如：张三</font>
        </td>
    </tr>
    <tr>
        <td>联系电话</td>
        <td>
            <input type="text" size="30" name="area"><font color="red">*13800138000</font>
        </td>
    </tr>
    <tr>
        <td>入职时间</td>
        <td>
            <input type="text" name="date" size="30" onclick="setDay(this)"><font color="red">*格式：2012-12-05</font><br/>
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
<table width="50%">
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
</body>
</html>