<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-3-5
  Time: 上午10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function jihuo(vid,vstatus) {
            with (document.forms[0]) {
                id.value=vid;
                content.value=vstatus;
                action = "adminprovincemsg!jihuo.action";
                submit();
            }
        }
    </script>
</head>
<body>
<form action="" method="post">
    <input type="hidden" name="id" value="">
    <input type="hidden" name="content" value="">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;省份管理
    </STRONG><BR>
    </DIV>
    <table border="1" width="90%" align="center">
        <tr align="center" bgcolor="#7fff00">
            <td>省份编号</td>
            <td>省份简拼</td>
            <td>省份名称</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <s:iterator value="#session.ProvinceBeans" var="provinceBean" status="stat">
            <tr>
                <td width="8%" align="center">
                        ${provinceBean.id}
                </td>
                <td width="8%" align="center">
                        ${provinceBean.simplename}
                </td>
                <td width="8%" align="center">
                        ${provinceBean.name}
                </td>
                <td width="8%" align="center">
                        ${provinceBean.status}
                </td>
                <td width="8%" align="center">
                    <input type="button" name="jh" value="激活" onclick="jihuo('${provinceBean.id}','已激活')">
                    <input type="button" name="jh" value="去激活" onclick="jihuo('${provinceBean.id}','未激活')">
                </td>
            </tr>
        </s:iterator>
    </table>
</form>
</body>
</html>