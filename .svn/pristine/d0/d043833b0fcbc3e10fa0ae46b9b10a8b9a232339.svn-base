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
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.mobile-1.4.0-rc.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            /*下拉菜单效果*/
            $(".ui-block-a:eq(0),.ui-block-b:eq(0),.ui-block-c:eq(0),.ui-block-d:eq(0),.ui-block-e:eq(0)").hover(function () {
                $(this).find("ul").removeClass("ui-grid-c").show();
            }, function () { $(this).find("ul").hide(); });
        });
    </script>
</head>
<body>
<div data-role="page">
    <!--网站标题及相关导航-->
    <div id="head" data-role="header" data-theme="b">
        <jsp:include page="head.jsp" flush="false"></jsp:include>
    </div>

    <div class="ui-content" style="font-size: 14px; line-height: 1.8">
        <h3 style="color: #ab7c12">
            投诉与建议
        </h3>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若您对事故问或事故问的合作方有任何意见或建议，请在此留言，以帮助我们对服务质量进行有效的监督，并不断改进。
        </p>
        <table align="center">
            <tr>
                <td>
                    问题分类
                </td>
                <td>
                    <input type="radio" name="ntype" value="投诉" checked="checked">投诉<input type="radio" name="ntype" value="建议">建议
                </td>
            </tr>
            <tr>
                <td>
                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <input name="name" type="text" maxlength="10" class="inputclass"
                           style="width:160px;height: 20px;"/>
                </td>
            </tr>
            <tr>
                <td>
                    联系电话
                </td>
                <td>
                    <input name="phone" type="text" maxlength="20" class="inputclass"
                           style="width:160px;height: 20px;"/>
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
        </table>
        <input type="button" value="提 交" onclick="addAdjust()" onmouseover=""
               style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px; background-color: #473505;color: #ffffff;"/>
        <input type="reset" value="重 置"
               style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px; background-color: #473505;color: #ffffff;"/>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>