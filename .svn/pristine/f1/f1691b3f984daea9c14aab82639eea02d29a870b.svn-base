<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-4-14
  Time: 下午3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <META content="text/html" charset="UTF-8" http-equiv=Content-Type>
    <script type="text/javascript">
        function setInfo(vid, vntype, vqtype, vname, vphone, vmail, vprovince,vcity,vcountry,vdate) {
            with (document.forms[0]) {
                id.value = vid;
                ntype.value = vntype;
                qtype.value = vqtype;
                name.value = vname;
                phone.value = vphone;
                mail.value = vmail;
                address.value = vprovince+vcity+vcountry;
                content.value = document.getElementById(vid+'content').value;
                date.value=vdate;
            }
        }

        function deleteInfo(vid){
            with (document.forms[0]) {
                id.value = vid;
                action="adminqryneedhelp!deleteNeedHelp.action";
                submit();
            }
        }
    </script>
</head>
<body>
<form action="" method="post">
    <div>
        <table border="1" width="100%">
            <tr align="center" bgcolor="#7fff00">
                <td>序号</td>
                <td>提交类型</td>
                <td>提交时间</td>
                <td>服务器响应时间</td>
                <td>服务器处理时间</td>
            </tr>
            <s:iterator value="#session.TjtjBeans" var="tjtjBean" status="stat">
                <tr>
                    <td width="2%" align="center">
                            ${tjtjBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${tjtjBean.type}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${tjtjBean.ttime}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${tjtjBean.stime}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${tjtjBean.tstime}毫秒&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
        </table>
    </div>
</form>
</body>
</html>