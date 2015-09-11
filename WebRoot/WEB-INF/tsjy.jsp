<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <script src="js/script_gizp.js"></script>
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <SCRIPT language=javascript type=text/javascript>
        function addAdjust() {
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
                if (content.value == '') {
                    alert('内容不能为空!');
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
        function checkYzm() {
            var message = '${AlertMessage}';
            if (message != null && message != '') {
                alert(message);
                return;
            }
        }
        function Checkreg() {
            with (document.forms[0]) {
                var p1 = /^([0-9-]+)$/;
                var me = false;
                if (p1.test(phone.value))
                {
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
        function textCounter(field, countfield, maxlimit) {
            // 函数，3个参数，表单名字，表单域元素名，限制字符；
            if (field.value.length > maxlimit)
            //如果元素区字符数大于最大字符数，按照最大字符数截断；
                field.value = field.value.substring(0, maxlimit);
            else
            //在记数区文本框内显示剩余的字符数；
                countfield.value = maxlimit - field.value.length;
        }
    </SCRIPT>
</head>
<BODY onload="checkYzm()">
<FORM id=form1 method=post name=form1 action="tsjy!addTellAndAdvise.action">
    <!--header begin -->
    <jsp:include page="head.jsp?menuid=m1"></jsp:include>
    <!-- mainbody begin-->
    <div class="mainbody">
        <!-- lay_s255_m begin-->
        <div class="lay_s255_m">
            <!-- lay_sub begin-->
            <jsp:include page="left.jsp?itemid=item5"></jsp:include>
            <!-- lay_main begin-->
            <div class="lay_main">
                <div class="breadcrumb">您当前的位置是:
                    <a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>
                    投诉与建议
                </div>
                <div class="aticle">
                    <h5>
                        投诉与建议
                    </h5>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若您对事故问或事故问的合作方有任何意见或建议，请在此留言，以帮助我们对服务质量进行有效的监督，并不断改进。
                    </p>
                    <p>
                    <table style="line-height: 40px;" align="center">
                        <tr>
                            <td>
                                问题分类
                            </td>
                            <td>
                                <input type="radio" name="ntype" value="投诉" checked="checked">投诉
                                <input type="radio" name="ntype" value="建议">建议
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <font color="red">带*号项为必填项</font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <input name="name" type="text" maxlength="10" class="inputclass"
                                       style="width:160px;height: 20px;"/>
                                <font color="red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                联系电话
                            </td>
                            <td>
                                <input name="phone" type="text" maxlength="20" class="inputclass"
                                       style="width:160px;height: 20px;"/>
                                <font color="red" style="margin-right: 20px;">*只能输入数字和横线</font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                内容
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <textarea name="content" class="inputclass"
                                                      onKeyDown="textCounter(content,remLen,256);"
                                                      onKeyUp="textCounter(content,remLen,256);"
                                                      style="width:360px; height:100px;margin-top: 10px;"></textarea>
                                        </td>
                                        <td>
                                            <font color="red">*</font>
                                        </td>
                                        <td>
                                            还可以输入:<input name="remLen" type="text" value="256" size="1"
                                                         readonly="readonly">个字符
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="margin-right: 41px;">验证码</span>
                            </td>
                            <td>
                                <input name="yzm" type="text" maxlength="10" class="inputclass"
                                       style="width:100px;height: 20px;"/>
                                <font color="red" style="margin-right: 20px;">*</font>
                                <img name="id" id="validateImg" src="yzm.action?sessionId=MessageTsjyCode" width="100px;" height="20px;"
                                     border="0"/>
                                <iframe id="yzmframe" src="getyzm.html?sessionId=MessageTsjyCode"
                                        width="0" height="0"></iframe>
                            </td>
                        </tr>
                    </table>
                    <table style="margin-left: 120px;">
                        <tr>
                            <td align="right" valign="top">&nbsp;</td>
                            <td align="left" class="areaFont">
                                <input type="button" value="提 交" onclick="addAdjust()" onmouseover=""
                                       style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px; width:100px;background-color: #473505;color: #ffffff;"/>
                                <input type="reset" value="重 置"
                                       style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px; width:100px;background-color: #473505;color: #ffffff;"/>
                            </td>
                        </tr>
                    </table>
                    </p>
                </div>
                <div style="border: 1px solid;border-color: #ddd; height: 170px;">
                    <jsp:include page="interest.jsp?pagename=zyfx" flush="false"></jsp:include>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</form>
</body>
</html>
