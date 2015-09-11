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
        function setShiguwen(vid,vifToll, vduty, vifHaveContro, vaccidentJudge, vjudgeIfContro,vaccidentIfContro
                ,vphone,vcontent) {
            with (document.forms[0]) {
                id.value = vid;
                ifToll.value = vifToll;
                duty.value = vduty;
                ifHaveContro.value = vifHaveContro;
                accidentJudge.value = vaccidentJudge;
                judgeIfContro.value = vjudgeIfContro;
                accidentIfContro.value = vaccidentIfContro;
                phone.value = vphone;
                content.value = vcontent;
            }
        }
    </script>
</head>
<body>
<form action="" method="post">
    <div>
        <table border="1" width="100%">
            <tr align="center" bgcolor="#7fff00">
                <td>选中</td>
                <td>序号</td>
                <td>是否有人员伤亡</td>
                <td>责任划分情况</td>
                <td>责任划分是否有争议</td>
                <td>是否已做事故鉴定</td>
                <td>鉴定结果是否有争议</td>
                <td>事故事实是否有争议</td>
                <td>联系电话</td>
                <td>案情简述</td>
            </tr>
            <s:iterator value="#session.ShiguwenBeans" var="shiguwenBean" status="stat">
                <tr>
                    <td width="2%" align="center">
                        <input type="radio" name="vradio" value=" ${shiguwenBean.id}"
                               onclick="setShiguwen('${shiguwenBean.id}','${shiguwenBean.ifToll}','${shiguwenBean.duty}','${shiguwenBean.ifHaveContro}',
                                       '${shiguwenBean.accidentJudge}','${shiguwenBean.judgeIfContro}','${shiguwenBean.accidentIfContro}',
                                       '${shiguwenBean.phone}','${shiguwenBean.content}')">
                    </td>
                    <td width="3%" align="center">
                            ${shiguwenBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${shiguwenBean.ifToll}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${shiguwenBean.duty}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${shiguwenBean.ifHaveContro}&nbsp;&nbsp;
                    </td>
                    <td width="6%" align="center">
                            ${shiguwenBean.accidentJudge}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${shiguwenBean.judgeIfContro}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${shiguwenBean.accidentIfContro}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${shiguwenBean.phone}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${shiguwenBean.scontent}&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
        </table>
        <li>遇到事故你就问</li>
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
                    是否有人员伤亡
                </td>
                <td>
                    <input type="text" name="ifToll">
                </td>
            </tr>
            <tr>
                <td>
                    责任划分情况
                </td>
                <td>
                    <input type="text" name="duty">
                </td>
            </tr>
            <tr>
                <td>
                    责任划分是否有争议
                </td>
                <td>
                    <input type="text" name="ifHaveContro">
                </td>
            </tr>
            <tr>
                <td>
                    是否已做事故鉴定
                </td>
                <td>
                    <input type="text" name="accidentJudge">
                </td>
            </tr>
            <tr>
                <td>
                    鉴定结果是否有争议
                </td>
                <td>
                    <input type="text" name="judgeIfContro">
                </td>
            </tr>
            <tr>
                <td>事故事实是否有争议</td>
                <td>
                    <input type="text" name="accidentIfContro">
                </td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td>
                    <input type="text" name="phone">
                </td>
            </tr>
            <tr>
                <td>案情简述</td>
                <td>
                    <textarea rows="15" cols="60" name="content"></textarea>
                </td>
            </tr>

        </table>
    </div>
</form>
</body>
</html>