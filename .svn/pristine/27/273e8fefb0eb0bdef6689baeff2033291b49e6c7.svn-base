<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-1-7
  Time: 上午9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <META name="keywords" content="伤残鉴定,伤残等级,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故鉴定、医疗事故鉴定咨询；争议性鉴定报告评估；专业律师委托；专家证人出庭。全方位事故处理专业服务，费用更低，权益更有保障。" />
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <script language="javascript" type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".mainNav a").mouseover(function () {
                $(".mainNav a").attr("class", "");
                $("#" + this.id).attr("class", "actived");
                $(".secondNav a").attr("class", "");
                $("#" + this.id+"1").attr("class", "actived");
                var currentMenuNo = parseInt(this.id.substring(1));
                $(".secondNav div").each(function () {
                    $(this).hide();
                    $("#subNav" + currentMenuNo).show();
                });
            });
            $(".secondNav a").mouseover(function () {
                $(".secondNav a").attr("class", "");
                $("#" + this.id).attr("class", "actived");
            });
            $(".mainNav a").attr("class", "");
            $("#"+'<%=request.getParameter("menuid")%>').attr("class", "actived");
        });
    </script>
</head>
<body>
<div class="header">
    <div class="padder">
        <div class="menunav">
            <div class="navLaftBg">
                <div class="navRightBg">
                    <div class="mainNav">
                        <a href="http://www.shiguwen.com" id="n1" class="actived" target="_parent">首页</a>
                        <a href="wzjj.html" id="n2" target="_parent">网站简介</a>
                        <a href="zyfx.html" id="n3"  target="_parent">服务项目</a>
                        <a href="zjgw.action" id="n4" target="_parent">技术资源</a>
                        <a href="hzjdjg.action" id="n5" target="_parent">合作鉴定机构</a>
                        <a href="lx.action" id="n6" target="_parent">联系我们</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="secondNav">
           <%-- <div id="subNav2" class="subNav2">
                &lt;%&ndash;<a href="wzjj.html" class="actived" target="_parent" id="n21">网站简介</a>&ndash;%&gt;
                <a href="rdwt.action" target="_parent" id="n21">热点问题</a>
            </div>--%>
            <div id="subNav3" class="subNav3">
                <%--<a href="sfjd.action" class="actived" id="n31"  target="_parent">司法鉴定咨询</a>--%>
                <a href="zyfx.html" id="n31"  target="_parent">专业资料分析</a>
                <a href="ctfw.action" id="n32" target="_parent">专家出庭服务</a>
                <a href="sszc.action" id="n33"  target="_parent">一站式理赔诉讼支持</a>
                <a href="jlyfx.action" id="n34"  target="_parent">行车记录仪数据分析</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
