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
    <META content="text/html" charset="UTF-8" http-equiv=Content-Type>
    <script type="text/javascript">
        function setLawyer(vid) {
            with (document.forms[0]) {
                id.value=vid;
                submit();
            }
        }
        function downFile(filepath){
            with(document.forms[0]){
                filename.value=filepath;
                target="hiddenframe";
                action="filedown.action";
                submit();
            }
        }
    </script>
</head>
<body>
<form method="post" action="admindeletelawyer!deleteLawyer.action">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;律师资料删除
    </STRONG><BR>
    </DIV>
    <li>律师资料列表(请先选中一个律师资料)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>选中</td>
            <td>序号</td>
            <td>律师姓名</td>
            <td>地区</td>
            <td>律所全称</td>
            <td>职业证号</td>
            <td>手机号</td>
            <td>QQ</td>
            <td>邮箱</td>
            <td>首次联络时间</td>
            <td>首次联络人</td>
            <td>聊天记录</td>
        </tr>
        <s:iterator value="#session.LawyerBeans" var="lawyerBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="button" name="vradio" value="删除"
                           onclick="setLawyer('${lawyerBean.id}')">
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.id}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.name}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.area}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.fullname}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.number}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.phone}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.qq}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.mail}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.firstConnTime}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.firstConnMan}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                   <a href="filedown.action?fileName=${lawyerBean.filepath}"><font color="#473505">${lawyerBean.filepath}&nbsp;&nbsp;</font></a>
                </td>
            </tr>
        </s:iterator>
    </table>
    <input type="hidden" name="id">
</form>
</body>
</html>