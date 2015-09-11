<%@ page import="com.sggw.web.SggwAction" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <link href="http://www.shiguwen.com/css/index.css" type="text/css" rel="stylesheet"/>
    <script src="http://www.shiguwen.com/js/script_gizp.js"></script>
    <script src="http://www.shiguwen.com/js/area.js"></script>
</head>
<body>
<div class="part03 cols">
    <div class="traffic_consult" style="height: 231px;width: 512px;">
        <div style="width:512px; float: left;">
            <h6 class="mb_hd" style="font-size: 15px;">合作律师文集</h6>

            <div class="bd">
                <%--<p class="imgbox"><img src="images/traffic_consult.jpg" alt="" width="90" height="90"/></p>--%>
                <ul class="txtlist" style="font-size: 14px;padding-left: 10px;">
                    <li><a href="hzls/h-1.html" target="_blank">医疗事故与医疗过错的区别</a><img src="images/re.gif"></li>
                    <li><a href="hzls/h-2.html" target="_blank">出现医疗纠纷后患方应该考虑的八件事</a></li>
                    <li><a href="hzls/h-3.html" target="_blank">患方如何复印封存病历（可能面临的障碍及应对）</a></li>
                    <li><a href="hzls/h-4.html" target="_blank">医疗纠纷如何科学甄别专业律所和专业律师</a></li>
                    <li><a href="hzls/h-5.html" target="_blank">关于尸检应当由谁提出、是否已经告知尸检事项的举证责任</a></li>
                    <li><a href="hzls/h-6.html" target="_blank">医疗纠纷中鉴定机构的选择是举证的义务，也是权力</a></li>
                </ul>
            </div>
            <p class="linkmore" style="margin-top: 16px;font-size: 15px;"><a href="hzls/h-list.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>更多文集&gt;&gt;</B></a></p>
        </div>
    </div>
    <div class="key_knowledge" style="height: 231px;">
        <h6 class="mb_hd">专家辅助人</h6>
        <ul class="txtlist">
            <li><a href="zy.html" rel="nofollow" target="_blank">医疗纠纷处理中专家辅助人的作用</a><img src="images/re.gif"></li>
            <li><a href="zjfzr/z-1.html" rel="nofollow" target="_blank">为专家辅助人出庭制度叫好</a></li>
            <li><a href="zjfzr/z-2.html" rel="nofollow" target="_blank">鉴定“看不懂”？专家来辅助&nbsp;&nbsp;</a></li>
            <li><a href="zjfzr/z-4.html" rel="nofollow" target="_blank">专家辅助人与医生的区别</a></li>
            <li><a href="zjfzr/z-5.html" rel="nofollow" target="_blank">专家辅助人与鉴定人等的区别</a></li>
        </ul>
        <p class="linkmore" style="font-size: 15px;margin-top: 12px;"><a href="zjfzr/z-list.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>更多内容&gt;&gt;</B></a></p>
    </div>
</div>
<div class="part05 cols"  style="margin-left: 0px;">
    <div style="width: 232px;float: left;">
        <div class="reception_center" style="height: 546px;margin-bottom: 10px;">
            <div class="key_knowledge" style="border: 0px solid #000000;width: 513px;margin-left: 0px;height: 270px;">
                <h6 class="mb_hd">医疗事故/伤残鉴定问题专栏
                </h6>
                <img src="images/scdj.jpg" alt="" width="86px;" height="86px;" style="float: left;margin-top:28px;margin-right: 15px;margin-left: 10px;margin-bottom: 40px;">
                <ul class="txtlist">
                    <s:iterator value="#session.RTSHLinkList" var="rtshLink" status="var">
                        <s:if test="#var.isFirst()">
                            <li class="liclass"><a href="${rtshLink.link}" rel="nofollow" target="_blank">${rtshLink.name}&nbsp;&nbsp;</a><img src="images/re.gif"></li>
                        </s:if>
                        <s:else>
                            <li class="liclass"><a href="${rtshLink.link}" rel="nofollow" target="_blank">${rtshLink.name}</a></li>
                        </s:else>
                    </s:iterator>
                </ul>
                <p class="linkmore" style="font-size: 15px;margin-top: 25px;"><a href="s-list.1.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>更多知识&gt;&gt;</B></a></p>
            </div>
            <div class="key_knowledge" style="border: 0px solid #000000;width: 513px;margin-left: 0px;">
                <h6 class="mb_hd">交通事故问题专栏</h6>
                <img src="images/txtpic1.jpg" alt="" width="110px;" height="86px;" style="float: left;margin-top:28px;margin-right: 15px;margin-left: 10px;margin-bottom: 40px;">
                <ul class="txtlist">
                    <s:iterator value="#session.JTSGLinkList" var="jtsgLink" status="var">
                        <s:if test="#var.isFirst()">
                            <li class="liclass"><a href="${jtsgLink.link}" rel="nofollow" target="_blank">${jtsgLink.name}&nbsp;&nbsp;</a><img src="images/re.gif"></li>
                        </s:if>
                        <s:else>
                            <li class="liclass"><a href="${jtsgLink.link}" rel="nofollow" target="_blank">${jtsgLink.name}</a></li>
                        </s:else>
                    </s:iterator>
                </ul>
                <p class="linkmore" style="font-size: 15px;margin-top: 25px;"><a href="j-list.1.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>更多知识&gt;&gt;</B></a></p>
            </div>
        </div>
    </div>
    <div class="key_knowledge" style="height: 546px;margin-left: 288px;">
        <h6 class="mb_hd">最新咨询&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <a href="newasklist.1.html" target="_parent"><font color="#FFFFFF">更多咨询&gt;&gt;</font></a></h6>
        <jsp:include page="/WEB-INF/newask.jsp" flush="false"></jsp:include>
    </div>
</div>
</body>
</html>