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
        function setTellAdvise(vid, vtype, vname, vphone, vdate) {
            with (document.forms[0]) {
                id.value = vid;
                ntype.value = vtype;
                name.value = vname;
                phone.value = vphone;
                content.value = document.getElementById(vid + 'content').value;
                date.value = vdate;
            }
        }
        function deleteInfo(vid){
            with (document.forms[0]) {
                id.value = vid;
                action="adminqrytsjy!deleteTsjy.action";
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
                <td>操作</td>
                <td>选中</td>
                <td>序号</td>
                <td>分类</td>
                <td>姓名</td>
                <td>联系电话</td>
                <td>留言内容</td>
                <td>登记时间</td>
            </tr>
            <s:iterator value="#session.TellAdviseBeans" var="tellAdviseBean" status="stat">
                <tr>
                    <td width="2%">
                        <input type="button" name="vbtn"
                               onclick="deleteInfo('${tellAdviseBean.id}')" value="删除">
                    </td>
                    <td width="2%" align="center">
                        <input type="radio" name="vradio" value=" ${tellAdviseBean.id}"
                               onclick="setTellAdvise('${tellAdviseBean.id}','${tellAdviseBean.type}','${tellAdviseBean.name}','${tellAdviseBean.phone}',
                                       '${tellAdviseBean.date}')">
                        <input type="hidden" id="${tellAdviseBean.id}content" value="${tellAdviseBean.content}">
                    </td>
                    <td width="3%" align="center">
                            ${tellAdviseBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${tellAdviseBean.type}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${tellAdviseBean.name}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${tellAdviseBean.phone}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${tellAdviseBean.scontent}......&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${tellAdviseBean.date}&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
        </table>
        <li>投诉与建议</li>
        <table>
            <tr>
                <td>
                    序号
                </td>
                <td>
                    <input type="text" name="id" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td>
                    分类
                </td>
                <td>
                    <input type="text" name="ntype">
                </td>
            </tr>
            <tr>
                <td>
                    姓名
                </td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>
                    联系电话
                </td>
                <td>
                    <input type="text" name="phone">
                </td>
            </tr>
            <tr>
                <td>内容描述</td>
                <td>
                    <textarea rows="15" cols="60" name="content"></textarea>
                </td>
            </tr>
            <tr>
                <td>登记时间</td>
                <td><input type="text" name="date"></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>