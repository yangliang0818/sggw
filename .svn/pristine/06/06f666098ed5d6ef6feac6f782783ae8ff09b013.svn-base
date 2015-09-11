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
        function setInfo(vid, vqtype,vaskdate,vddate ) {
            with (document.forms[0]) {
                id.value = vid;
                qtype.value = vqtype;
                content.value = document.getElementById(vid+'content').value;
                date.value=vaskdate;
                ddate.value=vddate;
            }
        }

        function deleteInfo(vid){
            with (document.forms[0]) {
                id.value = vid;
                action="adminqrynewask!deleteNewAsk.action";
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
<body onload="init();">
<form action="adminqrynewask!modifyNewAsk.action" method="post">
    <div>
        <p align="left" class="areaFont">页码：${askCurrentPage}/${askTotalPage} 每页：${askNumPage}条
            <a href="adminqrynewask!qryNewAsk.action?index=1">首页</a>|
            <a href="adminqrynewask!qryNewAsk.action?index=${askCurrentPage-1}">上一页</a> |
            <a href="adminqrynewask!qryNewAsk.action?index=${askCurrentPage+1}">下一页</a>|
            <a href="adminqrynewask!qryNewAsk.action?index=${askTotalPage}">尾页</a></p>
        <table border="1" width="100%">
            <tr align="center" bgcolor="#7fff00">
                <td>操作</td>
                <td>选中</td>
                <td>序号</td>
                <td>问题分类</td>
                <td>咨询内容</td>
                <td>咨询时间</td>
                <td>数据时间</td>
            </tr>
            <s:iterator value="#session.NewAskBeans" var="newAskBean" status="stat">
                <tr>
                    <td width="3%" align="center">
                        <input type="button" name="vbtn"
                               onclick="deleteInfo('${newAskBean.id}')" value="删除">
                    </td>
                    <td width="2%" align="center">
                        <input type="radio" name="vradio" value=" ${newAskBean.id}"
                               onclick="setInfo('${newAskBean.id}','${newAskBean.qtype}','${newAskBean.askdate}','${newAskBean.date}')">
                        <input type="hidden" id="${newAskBean.id}content" value="${newAskBean.content}">
                    </td>
                    <td width="2%" align="center">
                            ${newAskBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${newAskBean.qtype}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${newAskBean.scontent}。。。。。。&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${newAskBean.askdate}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${newAskBean.date}&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
        </table>
        <li>最新咨询</li>
        <table>
            <tr>
                <td>
                    序号
                </td>
                <td>
                    <input type="text" name="id" readonly="readonly" style="width: 180px;">
                </td>
            </tr>
            <tr>
                <td>
                    问题分类
                </td>
                <td>
                    <select class="select" name="qtype" style="width: 180px;">
                        <option value="交通事故">交通事故</option>
                        <option value="医疗事故">医疗事故</option>
                        <option value="DNA亲子">DNA亲子</option>
                        <option value="其他">其他</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>咨询内容</td>
                <td>
                    <textarea rows="15" cols="60" name="content"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    咨询时间
                </td>
                <td>
                    <input type="text" name="date" style="width: 180px;">
                </td>
            </tr>
            <tr>
                <td>
                    数据时间
                </td>
                <td>
                    <input type="text" readonly="readonly" name="ddate" style="width: 180px;">
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <input type="submit" value="修改">
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