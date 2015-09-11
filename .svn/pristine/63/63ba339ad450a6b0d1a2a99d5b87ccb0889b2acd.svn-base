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
        function document.onkeydown() {
            var button = document.getElementById('btnSearch');

            if (event.keyCode == 13) {
                button.click();
                event.returnValue = false;
            }
        }

        function addShiguwen() {
            with (document.forms[0]) {
                if (phone.value == '') {
                    alert('联系电话不能为空!');
                    return;
                }
                if (content.value == '') {
                    alert('案情简述不能为空!');
                    return;
                }
                if (yzm.value == '') {
                    alert('验证码不能为空!');
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
    </SCRIPT>
</head>
<BODY onload="checkYzm()">
<FORM id=form1 method=post name=form1 action="shiguwen!addShiguwen.action">
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
                遇到事故你就问
            </div>
            <div class="aticle">
                <h5>
                    遇到事故你就问
                </h5>

                <p align="center"
                   class="areaFont" style="margin-bottom: 10px;"><font color="red">(带*号项为必填项)</font></p>

                <p align="left"
                   class="areaFont" style="line-height: 30px;"><B>"20%条款”服务保障：客户通过"事故问"委托律师，若因律师业务水平或服务态度原因导致案件败诉，且能够予以证实，则客户将可获得20%的诉讼费用退还。</B>
                </p>
                <p>
                <table style="line-height: 40px;">
                    <tr>
                        <td>
                            是否有人员伤亡
                        </td>
                        <td>
                            <input type="radio" name="ifToll" value="是" checked="checked">是
                            <input type="radio" name="ifToll" value="否">否
                            <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            责任划分情况
                        </td>
                        <td>
                            <input type="radio" name="duty" value="我方无责" checked="checked">我方无责
                            <input type="radio" name="duty" value="我方有责">我方有责
                            <input type="radio" name="duty" value="主次责任">主次责任
                            <input type="radio" name="duty" value="同等责任">同等责任
                            <input type="radio" name="duty" value="责任无法认定">责任无法认定
                            <input type="radio" name="duty" value="尚未划分责任">尚未划分责任
                            <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            责任划分是否有争议
                        </td>
                        <td>
                            <input type="radio" name="ifHaveContro" value="是" checked="checked">是
                            <input type="radio" name="ifHaveContro" value="否">否
                            <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            是否已做事故鉴定
                        </td>
                        <td>
                            <input type="radio" name="accidentJudge" value="尚未鉴定" checked="checked">尚未鉴定
                            <input type="radio" name="accidentJudge" value="已做法医类鉴定">已做法医类鉴定
                            <input type="radio" name="accidentJudge" value="已做车辆类鉴定">已做车辆类鉴定
                            <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            鉴定结果是否有争议
                        </td>
                        <td>
                            <input type="radio" name="judgeIfContro" value="是" checked="checked">是
                            <input type="radio" name="judgeIfContro" value="否">否
                            <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            事故事实是否有争议
                        </td>
                        <td>
                            <input type="radio" name="accidentIfContro" value="是" checked="checked">是
                            <input type="radio" name="accidentIfContro" value="否">否
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
                            <font color="red">*</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            案情简述
                        </td>
                        <td>
                            <textarea name="content" class="inputclass"
                                      style="width:360px; height:60px;margin-top: 10px;"></textarea>
                            <font color="red">*</font>
                        </td>
                    </tr>
                </table>
                <table style="margin-top: 20px;">
                    <tr>
                        <td>
                            <span style="margin-right: 81px;">验证码</span>
                        </td>
                        <td>
                            <input name="yzm" type="text" maxlength="10" class="inputclass"
                                   style="width:100px;height: 20px;"/>
                            <font color="red" style="margin-right: 20px;">*</font>
                        </td>
                        <td>
                            <img name="id" id="validateImg" src="yzm.action?sessionId=MessageTsjyCode" width="100px;" height="20px;"
                                 border="0"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <table style="">
                    <tr>
                        <td align="right" valign="top">&nbsp;</td>
                        <td align="left" class="areaFont">
                            <input type="button" value="提 交" onclick="addShiguwen()"
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
