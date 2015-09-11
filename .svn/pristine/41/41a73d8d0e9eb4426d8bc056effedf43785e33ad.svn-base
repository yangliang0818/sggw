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
        function modifyCase(vid, newsdate, vtitle) {
            with(document.forms[0]){
                id.value=vid;
                date.value = newsdate;
                title.value = vtitle;
                content.value =document.getElementById("content"+vid).value;;
            }
            /* document.forms[0].action = "adminmodifynews!modifyOneNews.action?id=" + id;
             document.forms[0].submit();*/
        }
    </script>
</head>
<body>
<form action="adminsuccess!modifyProgress.action" method="post">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;案例修改
    </STRONG><BR>
    </DIV>
    <li>案情列表(请先选中一个案例)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>修改</td>
            <td>序号</td>
            <td>案例标题</td>
            <td>案例编号</td>
            <td>案例时间</td>
        </tr>
        <s:iterator value="#session.adminNewsBeans" var="adminNewsBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="hidden" id="content${adminNewsBean.id}" value="${adminNewsBean.content}">
                    <input type="radio"  value="修改" name="modifyradio"
                           onclick="modifyCase('${adminNewsBean.id}', '${adminNewsBean.newsDate}','${adminNewsBean.title}')">
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
    <li>修改案例</li>
    <table>
        <tr>
            <td>
                案例编号
            </td>
            <td>
                <input type="text" name="id" size="30" readonly="readonly">自动填写，不可编辑
            </td>
        </tr>
        <tr>
            <td>
                案例时间
            </td>
            <td>
                <input type="text" name="date" size="30"><font color="red">*格式：2012-12-05</font>
            </td>
        </tr>
        <tr>
            <td>
                案例标题
            </td>
            <td>
                <input type="text" name="title" size="30"><font color="red">*例如：机动车相撞</font>
            </td>
        </tr>
        <tr>
            <td>案例内容</td>
            <td>
                <textarea rows="20" cols="100" name="content"></textarea><font color="red">*描述案子的内容</font>
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
</form>
</body>
</html>