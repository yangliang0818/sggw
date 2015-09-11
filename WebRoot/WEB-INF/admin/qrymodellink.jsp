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
    <title>查询模块链接</title>
    <META content="text/html" charset="UTF-8" http-equiv=Content-Type>
    <script type="text/javascript">
        function setInfo(vid, vqtype,vname,vlink,vdate ) {
            with (document.forms[0]) {
                id.value = vid;
                qtype.value = vqtype;
                name.value=vname;
                address.value=vlink;
                date.value=vdate;
            }
        }

        function deleteInfo(vid){
            with (document.forms[0]) {
                id.value = vid;
                action="adminqrymodellink!deleteLink.action";
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
<form action="adminqrymodellink!modifyModelLink.action" method="post">
    <div>
        <p align="left" class="areaFont">页码：${modelCurrentPage}/${modelTotalPage} 每页：${modelNumPage}条
            <a href="adminqrymodellink!qryModelLink.action?index=1">首页</a>|
            <a href="adminqrymodellink!qryModelLink.action?index=${modelCurrentPage-1}">上一页</a> |
            <a href="adminqrymodellink!qryModelLink.action?index=${modelCurrentPage+1}">下一页</a>|
            <a href="adminqrymodellink!qryModelLink.action?index=${modelTotalPage}">尾页</a></p>
        <table border="1" width="100%">
            <tr align="center" bgcolor="#7fff00">
                <td>操作</td>
                <td>选中</td>
                <td>序号</td>
                <td>模块分类</td>
                <td>文章名称</td>
                <td>文章地址</td>
                <td>数据时间</td>
            </tr>
            <s:iterator value="#session.ModelBeans" var="modelBean" status="stat">
                <tr>
                    <td width="2%" align="center">
                        <input type="button" name="vbtn"
                               onclick="deleteInfo('${modelBean.id}')" value="删除">
                    </td>
                    <td width="2%" align="center">
                        <input type="radio" name="vradio" value=" ${modelBean.id}"
                               onclick="setInfo('${modelBean.id}','${modelBean.type}','${modelBean.name}','${modelBean.link}','${modelBean.date}')">
                    </td>
                    <td width="2%" align="center">
                            ${modelBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${modelBean.type}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${modelBean.name}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${modelBean.link}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${modelBean.date}&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
        </table>
        <li>模块链接</li>
        <table>
            <tr>
                <td>
                    序号
                </td>
                <td>
                    <input type="text" name="id" readonly="readonly" style="width: 260px;">
                </td>
            </tr>
            <tr>
                <td>
                    模块分类
                </td>
                <td>
                    <select class="select" name="qtype" style="width: 260px;">
                        <option value="人身损害问题专栏">人身损害问题专栏</option>
                        <option value="交通事故问题专栏">交通事故问题专栏</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>文章名称</td>
                <td>
                    <input type="text" name="name" style="width: 260px;">
                </td>
            </tr>
            <tr>
                <td>
                    文章链接
                </td>
                <td>
                    <input type="text" name="address" style="width: 260px;">
                </td>
            </tr>
            <tr>
                <td>
                    数据时间
                </td>
                <td>
                    <input type="text" readonly="readonly" name="date" style="width: 260px;">
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