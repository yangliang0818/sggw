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
        function modifyNews(id, newsdate, title, content) {
            var vform = document.forms[0];
            vform.id.value=id;
            vform.date.value = newsdate;
            vform.title.value = title;
            vform.content.value = content;
            /* document.forms[0].action = "adminmodifynews!modifyOneNews.action?id=" + id;
             document.forms[0].submit();*/
        }
    </script>
</head>
<body>
<form action="adminsuccess!modifyNews.action" method="post">
    <li>新闻列表</li>
    <table border="1" width="100%">
        <tr align="center">
            <td>修改</td>
            <td>新闻编号</td>
            <td>新闻标题</td>
            <td>新闻时间</td>
            <td>新闻内容</td>
        </tr>
        <s:iterator value="#session.newssBeans" var="newsBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="radio" value="修改" name="modifyradio"
                           onclick="modifyNews('${newsBean.id}', '${newsBean.newsDate}','${newsBean.title}','${newsBean.content}')">
                </td>
                <td>
                        ${newsBean.id}
                </td>
                <td width="8%" align="center">
                        ${newsBean.title}
                </td>
                <td align="center">
                        ${newsBean.newsDate}
                </td>
                <td width="60%">
                        ${newsBean.content}
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
                <input type="text" name="id" size="30" readonly="readonly">
            </td>
        </tr>
        <tr>
            <td>
                新闻时间
            </td>
            <td>
                <input type="text" name="date" size="30">
            </td>
        </tr>
        <tr>
            <td>
                新闻标题
            </td>
            <td>
                <input type="text" name="title" size="30">
            </td>
        </tr>
        <tr>
            <td>新闻内容</td>
            <td>
                <textarea rows="20" cols="100" name="content"></textarea>
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