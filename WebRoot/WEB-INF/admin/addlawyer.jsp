<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-3-18
  Time: 下午10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>录入律师资料</title>
    <LINK rel=stylesheet
          type=text/css href="css/admin.css">
    <META content="text/html" charset="utf-8" http-equiv=Content-Type>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <script type="text/javascript">
        function submitForm(){
            with(document.forms[0]){
              fileName.value=myFile.value;
              submit();
            }
        }
    </script>
</head>
<body>
<form action="fileupload!addLawyer.action" method="post" enctype="multipart/form-data">
<li>录入律师资料</li>
    <table>
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
                <input type="text" name="qq" size="30"> <font color="red">QQ号</font>
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
                <input type="file" name="myFile"><font color="red">上传QQ聊天记录</font>
                <input name="fileName" type="hidden">
            </td>
        </tr>
    </table>
    <div class="margintop">
        <input type="button" value="提交" onclick="submitForm()">
        <input type="reset" value="重置">
    </div>
</form>
</body>
</html>