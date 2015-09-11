﻿﻿
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#m1").attr("class", "");
            $("#m2").attr("class", "");
            $("#m3").attr("class", "");
            $("#m4").attr("class", "");
            $("#m5").attr("class", "");
            $("#m6").attr("class", "");
            $("#m7").attr("class", "");
            $("#" + '<%=request.getParameter("menuid")%>').attr("class", "on");
        });
    </script>
</head>
<body>
<!--header begin -->
<div class="header">
    <div class="cols header_wrap">
        <div class="logo">
            <div style="width: 180px;">
            <button onclick="window.open('http://www.shiguwen.com/clwq.html')"
                    style="border:0px;width:180px;height:50px;background:#ffffff;">
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                        codebase="http://www.shiguwen.com/clwq.html"
                        width="180px;" height="40px;">
                    <param name="movie" value="images/threeminute.swf"/>
                    <param name="quality" value="high"/>
                    <param name="wmode" value="transparent">
                    <param name="wmode" value="#457fa8"/>
                    <embed src="images/threeminute.swf" width="180px;" height="50px;" allowscriptaccess="always" wmode="Opaque"
                           allowfullscreen="true"></embed>
                </object>
            </button>
            </div>
            <h1 class="imgbox"><a href="http://www.shiguwen.com"><img src="http://www.shiguwen.com/images/logo.jpg" alt="事故问" width="130" height="58"/></a></h1>

            <div class="intro" style="font-size: 12px;">
                <p><b class="icon_tel"></b>客服电话：<em>400-021-9060</em></p>

                <p>&nbsp;遇到事故你就问&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://e.weibo.com/farwei" target="_blank"><img src="http://www.shiguwen.com/images/weibogz.jpg" alt=""></a></p>
            </div>
        </div>
        <div class="mainnav" mod-type="TabShow">
            <ul class="cols">
                <li id="m1">
                    <h5><a href="http://www.shiguwen.com" title=""><font style="font-family: '微软雅黑';">首页</font></a></h5>
                </li>
                <li mod-comp="TabShow-Item1" id="m2" onmousemove="mouseenter('menu2')" onMouseout="mouseleave('menu2')">
                    <h5><a href="#" title="" style="cursor:default"><font style="font-family: '微软雅黑';">关于我们</font></a></h5>

                    <div class="expand" mod-comp="TabShow-Item-Expand1" id="menu2">
                        <p><a href="http://www.shiguwen.com/wm.html"><font style="font-family: '微软雅黑';">关于我们</font></a></p>
                        <p><a href="http://www.shiguwen.com/zs.html"><font style="font-family: '微软雅黑';">案例展示</font></a></p>
                        <p><a href="http://www.shiguwen.com/xc.html"><font style="font-family: '微软雅黑';">宣传报道</font></a></p>
                    </div>
                </li>
                <li mod-comp="TabShow-Item2" id="m3" onmousemove="mouseenter('menu3')" onMouseout="mouseleave('menu3')">
                    <h5><a href="#" title="" style="cursor:default"><font style="font-family: '微软雅黑';">服务项目</font></a></h5>

                    <div class="expand" mod-comp="TabShow-Item-Expand2" id="menu3">
                        <p><a href="http://www.shiguwen.com/tjjdjg.html"><font style="font-family: '微软雅黑';">鉴定机构推荐</font></a></p>

                        <p><a href="http://www.shiguwen.com/zx.html"><font style="font-family: '微软雅黑';">专业问题咨询</font></a></p>

                        <p><a href="http://www.shiguwen.com/zjzrct.html"><font style="font-family: '微软雅黑';">专家证人出庭</font></a></p>

                        <p><a href="http://www.shiguwen.com/wt.html"><font style="font-family: '微软雅黑';">专业律师委托</font></a></p>

                        <p><a href="http://www.shiguwen.com/yzsssfw.html"><font style="font-family: '微软雅黑';">一站式理赔诉讼服务</font></a></p>

                    </div>
                </li>
                <li id="m4"><h5><a href="http://www.shiguwen.com/jszy.html" title=""><font style="font-family: '微软雅黑';">技术资源</font></a></h5></li>
                <li id="m5"><h5><a href="http://www.shiguwen.com/j-list.1.html" title=""><font style="font-family: '微软雅黑';">交通事故</font></a></h5></li>
                <li id="m6"><h5><a href="http://www.shiguwen.com/s-list.1.html" title=""><font style="font-family: '微软雅黑';">医疗事故</font></a></h5></li>
                <li id="m7"><h5><a href="http://www.shiguwen.com/sf.html" title=""><font style="font-family: '微软雅黑';">收费标准</font></a></h5></li>
            </ul>
        </div>
    </div>
</div>
<div style="display: none;">
    <script src="http://s23.cnzz.com/stat.php?id=5477118&web_id=5477118&show=pic"
            language="JavaScript"></script>
    &nbsp;&nbsp;
</div>
</body>
</html>
