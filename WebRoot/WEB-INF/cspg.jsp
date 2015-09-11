<%@ page import="java.util.Map" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    Map<String, String> map = (Map) request.getSession().getAttribute("PageKeywords");
    pageContext.setAttribute("keyword", map.get("cspg"));
%>
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
    <img src="images/logonew.jpg" width="20px;" height="30px;">
    <TITLE>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</TITLE>
    <meta name="description" content="事故责任咨询、事故处理咨询、事故原因咨询、理赔诉讼咨询">
    <jsp:include page="keyword.jsp?pagename=index"></jsp:include>
    <META content="text/html" charset="utf-8" http-equiv=Content-Type>
    <META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
    <META name="keywords" content="${keyword}">
    <meta name="Robots" content="all">
    <LINK rel=stylesheet
          type=text/css href="css/main.css">
    <SCRIPT type=text/javascript
            src="js/jquery-1.4.2.min.js"></SCRIPT>
    <SCRIPT type=text/javascript src="js/main.js"></SCRIPT>
    <STYLE type=text/css>
        #ScrollPic IMG {
            POSITION: absolute;
            DISPLAY: none
        }
    </STYLE>
    <SCRIPT language=javascript type=text/javascript>
        function document.onkeydown() {
            var button = document.getElementById('btnSearch');

            if (event.keyCode == 13) {
                button.click();
                event.returnValue = false;
            }
        }
    </SCRIPT>
    <META name=GENERATOR content="MSHTML 8.00.6001.18928">
</HEAD>
<BODY style="overflow-x:hidden">
<FORM id=form1 method=post name=form1 action="">
    <DIV><!-- 设置falsh 效果--></DIV>
    <DIV id=warp><!--头部开始-->
        <DIV id=headPage><!--logo开始-->
            <DIV id=logo class=float_left><!--<img src="common/images/logonew.jpg" > -->
                <br>&nbsp;&nbsp;&nbsp;
                <IMG width="140px;" height="65px;"
                     src="images/logonew.jpg">
                <font color="#473505" class="areaFont">
                    <B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        提供全方位的事故处理专业服务</B></font>
            </DIV>
            <!--logo结束--><!--搜索开始--><!--<DIV id=search class=float_right>-->
            <DIV id=serverNO class=float_right><IMG src="images/serviceNO.jpg"> <!--
<INPUT id=txtContent class="float_left searchInput" name=txtContent> 
<INPUT style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" id=btnSearch class=float_left src="common/images/headpage_07.gif" 
type=image name=btnSearch> -->
                <DIV class=del_float></DIV>
            </DIV>
            <DIV class=del_float></DIV>
            <!--搜索结束--></DIV>
        <BR><!--头部结束--><!--导航开始-->
        <DIV id=Nav>
            <iframe src="mymenu.action?menuid=n1" width="100%" frameborder="0" scrolling="no" height="65px;"></iframe>
        </DIV>
        <BR>
        <!--BANNER结束--><!--内容部分开始-->
        <DIV><!--第一屏开始-->
            <div style="width: 202px;padding-right: 40px;float: left;margin-bottom: 90%">
                <jsp:include page="leftframe.jsp"></jsp:include>
            </div>
            <div style="margin-bottom: 450px;">
                <p align="center"
                   class="ngtitle">车速鉴定报告评估</p>

                <p class="areaFont">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在重大交通事故中，经常需要进行车速鉴定与事故成因鉴定。通过鉴定，确定事故当事人是否有超速行驶或其他违章驾驶行为，为事故责任划分、理赔、诉讼等环节提供具有法律效力的依据。
                </p>

                <p class="areaFont">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车速鉴定涉及到车辆工程、力学、痕迹学人体损伤生物力学/生物医学等多学科领域的知识，鉴定技术含量高、专业性强、涉及领域广，是司法鉴定中难度最高的项目之一。
                </p>

                <p class="areaFont">
                    在实际中，经常会有当事人对拿到手的车速鉴定报告有疑问，甚至不认可鉴定结论，但由于车速鉴定涉及到非常专业的知识，当事人往往没有能力对鉴定报告的质量做出有效识别。重新申请鉴定，不仅程序复杂、收费高，更重要的是，结果并不一定是自己想要的。
                </p>

                <p class="areaFont">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    现在，事故问在车速鉴定领域的人才可为您提供车速鉴定报告的评估服务，依靠我们专业的知识与丰富的经验，解答您的各种疑问，并根据评估结果，为您提供合理的建议与后续帮助。
                </p>
                <jsp:include page="interest.jsp?pagename=sfjd"></jsp:include>
            </div>
        </DIV>
        <div style="border-top: 1px solid;border-top-color: #6e666b">
            <div align="center">
                <table>
                    <tr>
                        <td colspan="2">
                            <a href="http://www.accidentreconstruction.com/" target="_blank">
                                <img width="150" height="40" alt="国际事故再现委员会会员"
                                     src="images/ARC-Header2012.gif" border="none"/></a>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <font size="2">国际事故再现</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size="2">&nbsp;&nbsp;委员会会员</font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <a href="http://e.weibo.com/farwei" target="_blank">
                                            <img width="150" height="40" alt="新浪微博：富维事故研究"
                                                 src="images/sinaweibo.jpg" border="none"/></a>
                                    </td>
                                    <td>
                                        <font size="2"><br>&nbsp;&nbsp;富维事故研究</font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="http://www.farwei.com/" target="_blank">
                                <img width="150" height="40" alt="富维事故研究"
                                     src="images/farwei.jpg" border="none"/></a>
                        </td>
                    </tr>
                </table>
            </div>
            <div align="center" class="areaFont">
                <jsp:include page="copyright.jsp"></jsp:include>
            </div>
        </DIV>
    </div>
</FORM>
</BODY>
</HTML>
