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
    <title>添加最新咨询</title>
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
<form action="adminaddnewask!addNewAsk.action" method="post" enctype="multipart/form-data">
    <li>添加最新咨询</li>
    <table>
        <tr>
            <td>
                问题分类
            </td>
            <td>
                <select class="select" name="qtype">
                    <option value="交通事故">交通事故</option>
                    <option value="医疗事故">医疗事故</option>
                    <option value="DNA亲子">DNA亲子</option>
                    <option value="其他">其他</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                咨询内容
            </td>
            <td>
                <textarea rows="15" cols="50" name="content"></textarea><font color="red">字数少于256个字</font>
            </td>
        </tr>
        <tr>
            <td>
                咨询时间
            </td>
            <td>
                <input type="text" name="date" size="30" onclick="setDay(this)"><font color="red">格式2014-02-23</font>
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