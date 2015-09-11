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
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="js/script_gizp.js"></script>
</head>
<body>
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
                为更好获得帮助，以下知识对您很重要
            </div>
            <div class="aticle">
                <h5>
                    为更好获得帮助，以下知识对您很重要
                </h5>
                <ur>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="dc.html">医疗纠纷处理现状及对策</a> <img src="images/re.gif" alt="${keyword}">
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="byx.html">医学鉴定前期评估的必要性</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="jh.html">为专家辅助人出庭制度叫好</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="fz.html">鉴定"看不懂"？专家来辅助</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="ylcxyj.html">关于依法惩处涉医违法犯罪维护正常医疗秩序的意见</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="swpc/swpcjjs.html">交通肇事致人死亡的赔偿金如何计算</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="wq.html">医疗纠纷，为何需要专家帮助维权？</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="zjzxbg.html">专家咨询报告在事故处理中的价值</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="zyry.html">交通事故为什么需要聘请专业人员处理</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="zyjs.html">司法鉴定在交通事故处理中的作用</a>
                    </li>
                    <li class="areaFont"
                        style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="fxcs.html">交通事故责任认定为何要分析车速</a>
                    </li>
                    <li class="areaFont" style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="yyw.html">对交通事故责任认定有疑问怎么办</a>
                    </li>
                    <%--<li class="areaFont" style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;">
                        <a href="flxl.html">司法鉴定报告的法律效力</a>
                    </li>--%>
                    <li class="areaFont" style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="fzzr.html">专家证人与专家辅助证人</a>
                    </li>
                    <li class="areaFont" style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="sgcx.html">关于事故再现</a>
                    </li>
                    <li class="areaFont" style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;line-height: 25px;">
                        <a href="swdhjz.html">三维动画在事故诉讼中的价值</a>
                    </li>
                </ur>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 170px;">
                <jsp:include page="interest.jsp?pagename=zyfx" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
