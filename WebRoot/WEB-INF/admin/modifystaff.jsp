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
        function setStaff(vid) {
            with (document.forms[0]) {
                id.value = vid;
            }
        }
    </script>
</head>
<body>
<form method="post" action="adminmodifystaff!modifyStaff.action">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;员工资料修改
    </STRONG><BR>
    </DIV>
    <li>员工信息列表(请先选中一个员工资料)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>选中</td>
            <td>姓名</td>
            <td>工号</td>
            <td>联系方式</td>
            <td>入职时间</td>
            <td>状态</td>
        </tr>
        <s:iterator value="#session.StaffBeans" var="staffBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="radio" name="vradio" value=" ${staffBean.id}"
                           onclick="setLawyer('${staffBean.id}','${staffBean.name}','${staffBean.phone}','${staffBean.status}')">
                </td>
                <td width="8%" align="center">
                        ${staffBean.name}
                </td>
                <td width="8%" align="center">
                        ${staffBean.id}
                </td>
                <td width="8%" align="center">
                        ${staffBean.phone}
                </td>
                <td width="8%" align="center">
                        ${staffBean.date}
                </td>
                <td width="8%" align="center">
                        ${staffBean.status}
                </td>
            </tr>
        </s:iterator>
    </table>
    <li>律师详细资料</li>
    <table>
        <tr>
            <td>
                序号
            </td>
            <td>
                <input type="text" name="id" size="30"><font color="red">*序号</font>
            </td>
        </tr>
        <tr>
            <td>
                律师姓名
            </td>
            <td>
                <input type="text" name="name" size="30"> <font color="red">*律师姓名</font>
            </td>
        </tr>
        <tr>
            <td>
                地区
            </td>
            <td>
                <input type="text" name="area" size="30"> <font color="red">*律师所在省、市、县</font>
            </td>
        </tr>
        <tr>
            <td>
                律所全称
            </td>
            <td>
                <input type="text" name="fullname" size="30"> <font color="red">*律师事务所全称</font>
            </td>
        </tr>
        <tr>
            <td>
                职业证号
            </td>
            <td>
                <input type="text" name="number" size="30"> <font color="red">*职业资格证号</font>
            </td>
        </tr>
        <tr>
            <td>
                手机号
            </td>
            <td>
                <input type="text" name="phone" size="30"> <font color="red">*手机号</font>
            </td>
        </tr>
        <tr>
            <td>
                QQ
            </td>
            <td>
                <input type="text" name="qq" size="30"> <font color="red">*QQ号</font>
            </td>
        </tr>
        <tr>
            <td>
                邮箱
            </td>
            <td>
                <input type="text" name="mail" size="30"> <font color="red">*邮箱地址</font>
            </td>
        </tr>
        <tr>
            <td>
                首次联络时间
            </td>
            <td>
                <input type="text" name="firstConnTime" size="30"> <font color="red">*第一次和律师联络的时间</font>
            </td>
        </tr>
        <tr>
            <td>
                首次联络人
            </td>
            <td>
                <input type="text" name="firstConnMan" size="30"> <font color="red">*我方第一个和律师联系的人员姓名</font>
            </td>
        </tr>
        <tr>
            <td>
                跟进情况
            </td>
            <td>
                <textarea rows="15" cols="50" name="content"></textarea><font color="red">*沟通的情况总体描述</font>
            </td>
        </tr>
        <tr>
            <td>
                聊天记录
            </td>
            <td>
                <input type="file" name="myFile" size="30"> <font color="red">*上传QQ聊天记录</font>
            </td>
        </tr>
    </table>
    <div style="margin-left: 100px;">
        <table>
            <tr>
                <td>
                    <input type="submit" value="提交">
                </td>
                <td>
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>