<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <link rel="stylesheet" href="http://www.shiguwen.com/css/jquery.mobile-1.4.0-rc.1.css">
    <link rel="stylesheet" href="http://www.shiguwen.com/css/web/mobile.css">
    <!--必须框架jquery,jquery.mobile-->
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.js"></script>
    <script type="text/javascript" src="http://www.shiguwen.com/js/area.js"></script>
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.mobile-1.4.0-rc.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            /*下拉菜单效果*/
            $(".ui-block-a:eq(0),.ui-block-b:eq(0),.ui-block-c:eq(0),.ui-block-d:eq(0),.ui-block-e:eq(0)").hover(function () {
                $(this).find("ul").removeClass("ui-grid-c").show();
            }, function () { $(this).find("ul").hide(); });
        });
        function checkYzm() {
            var message = '${AlertMessage}';
            if (message != null && message != '') {
                alert(message);
                return;
            }
        }
        function textCounter(field, countfield, maxlimit) {
            // 函数，3个参数，表单名字，表单域元素名，限制字符；
            if (field.value.length > maxlimit)
            //如果元素区字符数大于最大字符数，按照最大字符数截断；
                field.value = field.value.substring(0, maxlimit);
            else
            //在记数区文本框内显示剩余的字符数；
                countfield.value = maxlimit - field.value.length;
        }
        function Checkreg() {
            with (document.forms[0]) {
                var p1 = /^([0-9-]+)$/;
                var me = false;
                if (p1.test(phone.value)) {
                    me = true;
                }
                if (!me) {
                    phone.value = '';
                    alert('对不起，您输入的联系电话含有非法字符,只接受数字和横线！');
                    phone.focus();
                    return false;
                }
            }
            return true;
        }
        function Init() {
            with (document.forms[0]) {
                var vtype = '${ntype}';
                for (var i = 0; i < ntype.length; i++) {
                    if (ntype[i].value == vtype) {
                        ntype[i].checked = true;
                    }
                }
                var vtype = '${qtype}';
                for (var i = 0; i < qtype.length; i++) {
                    if (qtype[i].value == vtype) {
                        qtype[i].checked = true;
                    }
                }
            }
        }
    </script>
</head>
<body onload="setup();checkYzm();">
<FORM id=form1 method=post name=form1 action="addls.html">
    <div data-role="page">
        <!--网站标题及相关导航-->
        <div id="head" data-role="header" data-theme="b">
            <jsp:include page="head.jsp" flush="false"></jsp:include>
        </div>

        <div class="ui-content" style="font-size: 14px; line-height: 1.8">
            <h3 style="color: #ab7c12">
                聘请律师登记
            </h3>

            <p>
            <table align="center" style="line-height: 40px;">
                <tr>
                    <td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <input name="name" type="text"  value="${name}" class="inputclass"
                               style="width:160px;height: 20px;"/>
                    </td>
                </tr>
                <tr>
                    <td>联系电话</td>
                    <td>
                        <input name="phone" type="text" value="${phone}"  class="inputclass"
                               style="width:160px;height: 20px;"/>
                    </td>
                </tr>
                <tr>
                    <td>律师姓名</td>
                    <td>
                        <input name="lsname" type="text" value="${lsname}" class="inputclass"
                               style="width:160px;height: 20px;"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        所在地区
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <select id="s1" name="province" runat="server">
                                        <option value="省份">省份</option>
                                    </select>
                                </td>
                                <td>
                                    <select id="s2" name="city" runat="server">
                                        <option value="城市">城市</option>
                                    </select>
                                </td>
                                <td>
                                    <select id="s3" name="country" runat="server">
                                        <option value="地区">地区</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            <tr>
                <td width="60px;">
                    验证码
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <input name="yzm" type="text" class="inputclass"
                                       style="height: 20px;"/>
                            </td>
                            <td>
                                <img name="id" id="validateImg"
                                     src="../yzm.html?sessionId=MessageNeedHelpCode"
                                     width="100px;" height="20px;"
                                     border="0"/>
                                <input type="hidden" name="randomCode" id="randomCode"
                                       value="<%=request.getSession().getAttribute("MessageNeedHelpCode")%>">
                                <iframe id="yzmframe" src="../getyzm.html?sessionId=MessageNeedHelpCode"
                                        width="0" height="0"></iframe>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
                <tr>
                    <td align="right" valign="top">&nbsp;</td>
                    <td align="left" class="areaFont">
                        <input type="button" value="提 交" onclick="addLsInfo()"
                               style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px;background-color: #473505;color: #ffffff;"/>
                        <input type="reset" value="重 置"
                               style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px;background-color: #473505;color: #ffffff;"/>
                    </td>
                </tr>
            </table>
            </p>
            <p style="margin-left: 210px;">
                <a href="knowmore.html"><u><B>为何要登记？</B></u></a>
            </p>
        </div>
        <!--底部版权信息-->
        <div data-role="footer" data-position="fixed" data-tap-toggle="false">
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </div>
</FORM>
</body>
<script type="text/javascript">
    function addLsInfo() {
        with (document.forms[0]) {
            if (name.value == '') {
                alert('姓名不能为空!');
                return;
            }
            if (phone.value == '') {
                alert('联系电话不能为空!');
                return;
            }
            if(!Checkreg()){
                return false;
            }
            if (lsname.value == '') {
                alert('聘请律师姓名不能为空!');
                return;
            }
            if (yzm.value == '') {
                alert('验证码不能为空!');
                return;
            }
            var obj = document.getElementById("yzmframe").contentWindow;
            var randomCode = obj.document.getElementById("randomCode");
            if (yzm.value != randomCode.value) {
                alert('验证码输入错误,请重新输入');
                yzm.value = "";
                return;
            }
            submit();
        }
    }
</script>
</html>