<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-12-6
  Time: 下午3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <SCRIPT src="admin/js/Dates.js"></SCRIPT>
    <script type="text/javascript">
        function fillprogress(vid, vattrDate, vnewsid) {
            with (document.forms[0]) {
                id.value = vid;
                date.value = vattrDate;
                caseid.value = vnewsid;
                content.value = document.getElementById("attrArea" + vid).value;
            }
        }
    </script>
</head>
<body>
<form method="post" action="adminsuccess!modifyProgress.action">
    <li>案情进展列表(请再选中一个案情进展)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>选中</td>
            <td>序号</td>
            <td>案情进展编号</td>
            <td>案情进展时间</td>
            <td>案例编号</td>
            <td>案情进展内容</td>
        </tr>
        <s:iterator value="#session.adminnewsAttrBeans" var="adminNewsAttrBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="radio" name="selectradio"
                           onclick="fillprogress('${adminNewsAttrBean.id}',
                                   '${adminNewsAttrBean.attrDate}','${adminNewsAttrBean.newsid}')">
                </td>
                <td width="8%" align="center">
                        ${stat.index+1}
                </td>
                <td width="10%" align="center">
                        ${adminNewsAttrBean.id}
                </td>
                <td width="10%" align="center">
                        ${adminNewsAttrBean.attrDate}
                </td>
                <td width="8%" align="center">
                        ${adminNewsAttrBean.newsid}
                </td>
                <td width="60%">
                    &nbsp; ${adminNewsAttrBean.attrArea}
                    <input type="hidden" id="attrArea${adminNewsAttrBean.id}" value="${adminNewsAttrBean.attrArea}">
                </td>
            </tr>
        </s:iterator>
    </table>
    <li>修改案情进展</li>
    <table>
        <tr>
            <td>
                案情进展编号
            </td>
            <td>
                <input type="text" name="id" readonly="readonly">自动填写，不可编辑
            </td>
        </tr>
        <tr>
            <td>
                案情进展时间
            </td>
            <td>
                <input type="text" name="date" onclick="setDay(this)"><font color="red">*格式：2012-12-05</font>
            </td>
        </tr>
        <tr>
            <td>
                案例编号
            </td>
            <td>
                <input type="text" name="caseid" readonly="readonly">自动填写，不可编辑
            </td>
        </tr>
        <tr>
            <td>案情进展内容</td>
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