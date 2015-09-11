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
<form action="adminsuccess!modifyPress.action" method="post">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;新闻修改
    </STRONG><BR>
    </DIV>
    <li>新闻列表(请先选中一个新闻)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>修改</td>
            <td>序号</td>
            <td>新闻标题</td>
            <td>新闻编号</td>
            <td>新闻时间</td>
        </tr>
        <s:iterator value="#session.PressBeans" var="pressBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="hidden" id="content${pressBean.id}" value="${pressBean.content}">
                    <input type="radio"  value="修改" name="modifyradio"
                           onclick="modifyCase('${pressBean.id}', '${pressBean.newsDate}','${pressBean.title}')">
                </td>
                <td width="8%" align="center">
                        ${stat.index+1}
                </td>
                <td width="60%">
                    <a href="newsarea!qryNewsArea.action?id=${pressBean.id}">${pressBean.area}${pressBean.title}</a>
                </td>
                <td width="8%" align="center">
                        ${pressBean.id}
                </td>
                <td align="center">
                        ${pressBean.newsDate}
                </td>
            </tr>
        </s:iterator>
    </table>
    <li>修改新闻</li>
    <table>
        <tr>
            <td>
                新闻编号
            </td>
            <td>
                <input type="text" name="id" size="30" readonly="readonly">自动填写，不可编辑
            </td>
        </tr>
        <tr>
            <td>
                新闻时间
            </td>
            <td>
                <input type="text" name="date" size="30"><font color="red">*格式：2012-12-05</font>
            </td>
        </tr>
        <tr>
            <td>
                新闻标题
            </td>
            <td>
                <input type="text" name="title" size="30"><font color="red">*例如：上海新鲜事</font>
            </td>
        </tr>
        <tr>
            <td>新闻内容</td>
            <td>
                <textarea rows="15" cols="80" name="content"></textarea><font color="red">*描述案子的内容</font>
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