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
        function setInfo(vid, vname, vphone, vlsname, vprovince, vcity, vcountry, vdate) {
            with (document.forms[0]) {
                id.value = vid;
                name.value = vname;
                phone.value = vphone;
                lsname.value = vlsname;
                address.value = vprovince + vcity + vcountry;
                date.value = vdate;
            }
        }
        function deleteInfo(vid){
            with (document.forms[0]) {
                id.value = vid;
                action="adminqrylsdj!deleteLsdj.action";
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
                <td>姓名</td>
                <td>联系电话</td>
                <td>律师姓名</td>
                <td>所在地区</td>
                <td>登记时间</td>
            </tr>
            <s:iterator value="#session.DjlsBeans" var="djlsBean" status="stat">
                <tr>
                    <td width="2%">
                        <input type="button" name="vbtn"
                               onclick="deleteInfo('${djlsBean.id}')" value="删除">
                    </td>
                    <td width="2%" align="center">
                        <input type="radio" name="vradio" value=" ${djlsBean.id}"
                               onclick="setInfo('${djlsBean.id}','${djlsBean.name}','${djlsBean.phone}',
                                       '${djlsBean.lsname}','${djlsBean.province}',
                                       '${djlsBean.city}','${djlsBean.country}','${djlsBean.date}')">
                    </td>
                    <td width="3%" align="center">
                            ${djlsBean.id}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${djlsBean.name}&nbsp;&nbsp;
                    </td>
                    <td width="4%" align="center">
                            ${djlsBean.phone}&nbsp;&nbsp;
                    </td>
                    <td width="5%" align="center">
                            ${djlsBean.lsname}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                            ${djlsBean.province}&nbsp;&nbsp;${djlsBean.city}&nbsp;&nbsp;${djlsBean.country}&nbsp;&nbsp;
                    </td>
                    <td width="8%" align="center">
                        ${djlsBean.date}&nbsp;&nbsp;
                    </td>
                </tr>
            </s:iterator>
        </table>
        <li>登记情况</li>
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
                    律师姓名
                </td>
                <td>
                    <input type="text" name="lsname">
                </td>
            </tr>
            <tr>
                <td>所在地区</td>
                <td>
                    <input type="text" name="address" size="60">
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