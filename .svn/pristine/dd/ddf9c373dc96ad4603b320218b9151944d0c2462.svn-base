<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-23
  Time: 下午8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function modifyServArea(vid, vsimpleName, vprovince, vareaName, vaddress, vphone) {
            with (document.forms[0]) {
                id.value = vid;
                simpleName.value = vsimpleName;
                province.value = vsimpleName;
                area.value = vareaName;
                address.value = vaddress;
                phone.value = vphone;
            }
        }
    </script>
</head>
<body>
<form action="adminmodifyservarea!modifServArea.action" method="post">
    <li>接待点列表</li>
    <table border="1" width="100%">
        <tr align="center" bgcolor="#7fff00">
            <td>修改</td>
            <td>编号</td>
            <td>省份简拼</td>
            <td>省份</td>
            <td>地区</td>
            <td>联系地址</td>
            <td>联系电话</td>
        </tr>
        <s:iterator value="#session.ServAreaBeans" var="servAreaBean" status="stat">
            <tr align="center">
                <td width="5%" align="center">
                    <input type="radio" value="修改" name="modifyradio"
                           onclick="modifyServArea('${servAreaBean.id}', '${servAreaBean.simpleName}',
                                   '${servAreaBean.province}','${servAreaBean.areaName}',
                                   '${servAreaBean.address}','${servAreaBean.phone}')">
                </td>
                <td width="5%" align="center">
                        ${servAreaBean.id}
                </td>
                <td width="8%" align="center">
                        ${servAreaBean.simpleName}
                </td>
                <td width="8%" align="center">
                        ${servAreaBean.province}
                </td>
                <td width="8%">
                        ${servAreaBean.areaName}
                </td>
                <td>
                        ${servAreaBean.address}
                </td>
                <td width="10%">
                        ${servAreaBean.phone}
                </td>
            </tr>
        </s:iterator>
    </table>
    <li>修改接待点</li>
    <table>
        <tr>
            <td>
                接待点编号
            </td>
            <td>
                <input type="text" name="id" size="30" readonly="readonly">
            </td>
        </tr>
        <tr>
            <td>
                省份简拼
            </td>
            <td>
                <input type="text" name="simpleName" size="30" readonly="readonly">
            </td>
        </tr>
        <tr>
            <td>
                省份
            </td>
            <td>
                <select name="province" style="width: 208px;">
                    <s:iterator value="#session.ActiveProvinces" var="provinceBean" status="stat">
                        <option value="${provinceBean.simplename}">
                                ${provinceBean.name}
                        </option>
                    </s:iterator>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                地区
            </td>
            <td>
                <input type="text" name="area" size="30">
            </td>
        </tr>
        <tr>
            <td>联系地址</td>
            <td>
                <textarea rows="5" cols="80" name="address"></textarea>
            </td>
        </tr>
        <tr>
            <td>联系电话</td>
            <td>
                <input type="text" name="phone" size="30">
            </td>
        </tr>
    </table>
    <table width="70%">
        <tr align="center">
            <td align="center">
                <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置">
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</form>
</body>
</html>