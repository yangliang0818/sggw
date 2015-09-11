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
    <title>删除推荐内容</title>
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
                action = "adminmodifyKeyword!qryKeyword.action";
                submit();
            }
        }
    </script>
</head>
<body>
<DIV class=underline align="center"><STRONG class=font_24>&nbsp;删除推荐内容
</STRONG><BR>
</DIV>
<li>推荐内容列表</li>
<form>
    <table border="1" width="90%">
        <tr bgcolor="#7fff00">
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
            </tr>
        </s:iterator>
    </table>
    <div class="margintop">
        <input type="submit" value="增加推荐内容" onclick="javascript:document.forms[0].action='adminaddinterest.action'">
        <input type="submit" value="修改推荐内容"
               onclick="modifyKeyword()">
        <input type="submit" value="删除推荐内容"
               onclick="javascript:document.forms[0].action='adminkeywordsset!qryInterests.action'">
    </div>
</form>
</body>
</html>