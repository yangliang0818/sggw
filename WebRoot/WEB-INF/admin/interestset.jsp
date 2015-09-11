<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-3-14
  Time: 下午10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>内容推荐设置</title>
    <LINK rel=stylesheet
          type=text/css href="css/admin.css">
    <script type="text/javascript">
        var vchecked = false;
        function modifyKeyword() {
            with (document.forms[0]) {
                if (vchecked != true) {
                    alert('请必须选中一条记录!');
                    return false;
                }
                action = "adminmodifyinterest!qryInterest.action";
                submit();
            }
        }
    </script>
</head>
<body>
<DIV class=underline align="center"><STRONG class=font_24>&nbsp;内容推荐设置
</STRONG><BR>
</DIV>
<li>推荐内容列表</li>
<form method="post">
    <table border="1" width="90%">
        <tr bgcolor="#7fff00" align="center">
            <td>
                选择
            </td>
            <td>
                编号
            </td>
            <td>
                页面标题
            </td>
            <td>
                页面名称
            </td>
            <td>
                页面链接
            </td>
            <td>
                热度
            </td>
            <td>
                所属模块
            </td>
            <td>
               录入时间
            </td>
        </tr>
        <s:iterator value="#session.InterestBeans" var="interestBean" status="stat">
            <tr>
                <td width="8%" align="center">
                    <input type="radio" name="id" value="${interestBean.id}" onclick="javascript:vchecked=true;">
                </td>
                <td width="8%" align="center">
                        ${interestBean.id}
                </td>
                <td width="28%">
                        ${interestBean.title}
                </td>
                <td width="8%" align="center">
                        ${interestBean.pageName}
                </td>
                <td align="center">
                        ${interestBean.url}
                </td>
                <td align="center">
                        ${interestBean.number}
                </td>
                <td align="center">
                        ${interestBean.model}
                </td>
                <td align="center">
                        ${interestBean.date}
                </td>
            </tr>
        </s:iterator>
    </table>
    <div class="margintop">
        <input type="submit" value="增加推荐内容" onclick="javascript:document.forms[0].action='adminaddinterest.action'">
        <input type="submit" value="修改推荐内容"
               onclick="modifyKeyword()">
        <input type="submit" value="删除推荐内容"
               onclick="javascript:document.forms[0].action='admininterestset!deleteInterest.action'">
    </div>
</form>
</body>
</html>