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
    <title>添加模块链接</title>
    <LINK rel=stylesheet
          type=text/css href="css/admin.css">
    <META content="text/html" charset="utf-8" http-equiv=Content-Type>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <SCRIPT src="admin/js/Dates.js"></SCRIPT>
    <script type="text/javascript">
        function submitForm(){
            with(document.forms[0]){
                submit();
            }
        }
        function init(){
            var msg='${AlertMsg}';
            if(msg!=''&&msg!=null){
                alert(msg)
            }
        }
    </script>
</head>
<body onload="init()">
<form action="adminaddmodellink!addLink.action" method="post" enctype="multipart/form-data">
    <li>添加模块链接</li>
    <table>
        <tr>
            <td>
                模块类别
            </td>
            <td>
                <select class="select" name="qtype">
                    <option value="人身损害问题专栏">人身损害问题专栏</option>
                    <option value="交通事故问题专栏">交通事故问题专栏</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                文章名称
            </td>
            <td>
                <input type="text" name="name" style="width: 260px;">
            </td>
        </tr>
        <tr>
            <td>
                文章地址
            </td>
            <td>
                <input type="text" name="address" style="width: 260px;">
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