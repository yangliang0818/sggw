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
    <META name="keywords" content="伤残鉴定,伤残等级,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故鉴定、医疗事故鉴定咨询；争议性鉴定报告评估；专业律师委托；专家证人出庭。全方位事故处理专业服务，费用更低，权益更有保障。" />
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
                    新闻内容
            </div>
            <div class="aticle">
                <h5>
                    ${pressBean.title}-----------${pressBean.newsDate}
                </h5>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${pressBean.content}
                </p> <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <BR>
                <p align="right">
                    <A href="pressarea.${pressBean.index-1}.html" disable=true>上一新闻：${pressBean.ptitle}</A>
                </p>
                <p align="right">
                    <A href="presslist.html">返回新闻列表</A>
                </p>
                <p align="right">
                    <A href="pressarea.${pressBean.index+1}.html">下一新闻:${pressBean.ntitle}</A>
                </p>
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
