<%--
  Created by IntelliJ IDEA.
  User: yangliang
  Date: 13-8-17
  Time: 上午10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <style type="text/css">
        ul li a {
            color: #333;
        }

        ul li a:hover {
            color: #000;
            text-decoration: underline;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#item1").attr("class", "");
            $("#item2").attr("class", "");
            $("#item3").attr("class", "");
            $("#item4").attr("class", "");
            $("#" + '<%=request.getParameter("itemid")%>').attr("class", "on");
        });
    </script>
</head>
<body>
<div class="lay_sub">
    <%--<div class="online_service">
        <div class="sb_hd">
            <h6>在线支持</h6>
            <em></em>
        </div>
        <p class="imgbox"><a href="#" title="">
            <img src="http://www.shiguwen.com/images/online_service.png" width="180" height="72"
                 onclick="window.open('http://62886.fy.kf.qycn.com/vclient/chat/?websiteid=62886&amp;clerkid=516048&amp;clienturl=http%3A//www.shiguwen.com','_blank', 'toolbar=no,scrollbars=no,menubar=no,status=no,resizable=yes,location=no,width=650,height=500,top=100,left=200')"
                 alt=""/></a>
        </p>
    </div>--%>
    <div class="online_service">
        <div class="sb_hd">
            <h6 style="font-family:'微软雅黑">联系我们</h6>
            <em></em>
        </div>
        <p class="imgbox"><a href="http://www.shiguwen.com/lx.html" title="">
            <img src="http://www.shiguwen.com/images/lx.jpg" width="180" height="72" alt=""/></a>
        </p>
    </div>
    <div class="online_service">
        <div class="sb_hd">
            <h6 style="font-family:'微软雅黑">官方微信</h6>
            <em></em>
        </div>
        <p class="imgbox">
           <img src="http://www.shiguwen.com/images/sgw.jpg" alt="" width="180px;">
        </p>
    </div>
    <div class="online_service">
        <div class="sb_hd">
            <h6 style="font-family:'微软雅黑">最新文章</h6>
            <em></em>
        </div>
        <p class="imgbox">
        <ul style="padding-left: 15px;font-size: 14px;">
            <s:iterator value="#session.NewInterests" var="newInterests">
                <s:set name="havaresult" value="true"></s:set>
                <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;">
                    <a href="${newInterests.url}" title="${newInterests.title}">${newInterests.title}</a>
                </li>
            </s:iterator>
        </ul>
        </p>
    </div>
    <div class="online_service">
        <div class="sb_hd">
            <h6 style="font-family:'微软雅黑">最热文章</h6>
            <em></em>
        </div>
        <p class="imgbox">
        <ul style="padding-left: 15px;font-size: 14px;">
            <s:iterator value="#session.HotInterests" var="hotInterests">
                <s:set name="havaresult" value="true"></s:set>
                <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;">
                    <a href="${hotInterests.url}" title="${hotInterests.title}">&nbsp;${hotInterests.title}</a>
                </li>
            </s:iterator>
        </ul>
        </p>
    </div>
    <div class="online_service" style="height: 200px;">
        <div class="sb_hd">
            <h6 style="font-family:'微软雅黑">服务项目</h6>
            <em></em>
        </div>
        <p class="imgbox">
        <ul style="padding-left: 15px;font-size: 14px;">
            <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;" id="item1"><a href="jdjgtj.html">鉴定机构推荐</a></li>
            <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;" id="item2"><a href="zx.html">专业问题咨询</a></li>
            <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;" id="item3"><a href="zjzrct.html">专家证人出庭</a></li>
            <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;" id="item4"><a href="zylspq.html">专业律师聘请</a></li>
            <li style="font-family: '微软雅黑';margin-bottom: 5px;margin-left: 15px;list-style: disc;vertical-align: middle;" id="item4"><a href="yzsssfw.html">一站式理赔诉讼服务</a></li>
        </ul>
        </p>
    </div>
</div>
</body>
</html>