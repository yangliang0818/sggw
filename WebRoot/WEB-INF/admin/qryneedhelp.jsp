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
        function setInfo(vid, vntype, vqtype, vname, vphone, vmail, vprovince,vcity,vcountry,vdate) {
            with (document.forms[0]) {
                id.value = vid;
                ntype.value = vntype;
                qtype.value = vqtype;
                name.value = vname;
                phone.value = vphone;
                mail.value = vmail;
                address.value = vprovince+vcity+vcountry;
                content.value = document.getElementById(vid+'content').value;
                date.value=vdate;
            }
        }

        function deleteInfo(vid){
            with (document.forms[0]) {
                id.value = vid;
                action="adminqryneedhelp!deleteNeedHelp.action";
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
                <td>帮助类型</td>
                <td>问题分类</td>
                <td>姓名</td>
                <td>联系电话</td>
                <td>QQ号/电子邮箱</td>
                <td>所在地区</td>
                <td>联系时间/问题描述</td>
                <td>登记时间</td>
            </tr>
            <s:iterator value="#session.needHelpPageBeanList" var="needHelpBean" status="stat">
                <tr>
                    <td width="2%">
                        <input type="button" name="vbtn"
                               onclick="deleteInfo('${needHelpBean.id}')" value="删除">
                    </td>
                    <td width="2%" align="center">
                        <input type="radio" name="vradio" value=" ${needHelpBean.id}"
                               onclick="setInfo('${needHelpBean.id}','${needHelpBean.ntype}','${needHelpBean.qtype}','${needHelpBean.name}',
                                       '${needHelpBean.phone}','${needHelpBean.mail}','${needHelpBean.province}',
                                       '${needHelpBean.city}','${needHelpBean.country}','${needHelpBean.date}')">
                        <input type="hidden" id="${needHelpBean.id}content" value="${needHelpBean.content}">
                    </td>
                    <td width="2%" align="center">
                            ${needHelpBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${needHelpBean.ntype}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${needHelpBean.qtype}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${needHelpBean.name}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${needHelpBean.phone}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${needHelpBean.mail}&nbsp;&nbsp;
                    </td>
                    <td width="10%" align="center">
                            ${needHelpBean.province}&nbsp;&nbsp;${needHelpBean.city}&nbsp;&nbsp;${needHelpBean.country}
                    </td>
                    <td width="8%" align="center">
                            ${needHelpBean.scontent}&nbsp;&nbsp;......&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${needHelpBean.date}&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
            <p align="right" class="areaFont">页码：${currentpage}/${totalpage} 每页：${numberpage}条
                <a href="adminqryneedhelp!qryPageNeedHelp.action?index=1">首页</a>|
                <a href="adminqryneedhelp!qryPageNeedHelp.action?index=${currentpage-1}">上一页</a> |
                <a href="adminqryneedhelp!qryPageNeedHelp.action?index=${currentpage+1}">下一页</a>|
                <a href="adminqryneedhelp!qryPageNeedHelp.action?index=${totalpage}">尾页</a></p>
        </table>
        <li>所需帮助</li>
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
                    帮助分类
                </td>
                <td>
                    <input type="text" name="ntype">
                </td>
            </tr>
            <tr>
                <td>
                    问题分类
                </td>
                <td>
                    <input type="text" name="qtype">
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
                <td>
                    电子邮箱
                </td>
                <td>
                    <input type="text" name="mail">
                </td>
            </tr>
            <tr>
                <td>
                    所在地区
                </td>
                <td>
                    <input type="text" name="address" size="60">
                </td>
            </tr>
            <tr>
                <td>问题描述</td>
                <td>
                    <textarea rows="15" cols="60" name="content"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    登记时间
                </td>
                <td>
                    <input type="text" name="date">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>