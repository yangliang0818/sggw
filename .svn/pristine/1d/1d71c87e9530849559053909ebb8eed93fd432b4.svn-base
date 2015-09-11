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
        function setLawyer(vid, vname, varea, vfullname, vnumber, vphone, vqq, vmail, vfirstConnTime, vfirstConnMan, vcontent, vmyFile) {
            with (document.forms[0]) {
                id.value = vid;
                name.value = vname;
                area.value = varea;
                fullname.value = vfullname;
                number.value = vnumber;
                phone.value = vphone;
                qq.value = vqq;
                mail.value = vmail;
                firstConnTime.value = vfirstConnTime;
                firstConnMan.value = vfirstConnMan;
                content.value = vcontent;
                myFile.value = vmyFile;
            }
        }
    </script>
</head>
<body>
<form method="post" action="fileupload!modifyLawyer.action">
    <DIV class=underline align="center"><STRONG class=font_24>&nbsp;律师资料修改
    </STRONG><BR>
    </DIV>
    <li>律师资料列表(请先选中一个律师资料)</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>选中</td>
            <td>序号</td>
            <td>律师姓名</td>
            <td>地区</td>
            <td>律所全称</td>
            <td>职业证号</td>
            <td>手机号</td>
            <td>QQ</td>
            <td>邮箱</td>
            <td>首次联络时间</td>
            <td>首次联络人</td>
            <td>聊天记录</td>
        </tr>
        <s:iterator value="#session.LawyerBeans" var="lawyerBean" status="stat">
            <tr>
                <td width="5%" align="center">
                    <input type="radio" name="vradio" value=" ${lawyerBean.id}"
                           onclick="setLawyer('${lawyerBean.id}','${lawyerBean.name}','${lawyerBean.area}','${lawyerBean.fullname}','${lawyerBean.number}','${lawyerBean.phone}','${lawyerBean.qq}','${lawyerBean.mail}','${lawyerBean.firstConnTime}','${lawyerBean.firstConnMan}','${lawyerBean.content}', '${lawyerBean.filepath}')">
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.id}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.name}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.area}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.fullname}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.number}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.phone}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.qq}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.mail}&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.firstConnTime}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                        ${lawyerBean.firstConnMan}&nbsp;&nbsp;
                </td>
                <td width="8%" align="center">
                    <a href="filedown.action?fileName=${lawyerBean.filepath}"><font
                            color="#473505">${lawyerBean.filepath}&nbsp;&nbsp;</font></a>
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