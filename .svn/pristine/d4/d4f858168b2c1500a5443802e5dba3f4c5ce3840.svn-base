<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>事故问-遇到事故你就问</title>
    <META name="keywords" content="伤残鉴定,伤残鉴定程序,伤残鉴定分析">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故鉴定、医疗事故鉴定咨询；争议性鉴定报告评估；专业律师委托；专家证人出庭。全方位事故处理专业服务，费用更低，权益更有保障。"/>
    <link href="../css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="../js/script_gizp.js"></script>
</head>
<body onload="">
<!--header begin -->
<jsp:include page="../head.jsp?menuid=m6"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="../left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:
                <a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>
                伤残鉴定背景知识
            </div>
            <div class="aticle">
                <h5>
                    伤残鉴定背景知识
                </h5>

                <div>
                    <img src="http://www.shiguwen.com/images/scdj.jpg" alt="" width="86px;" height="86px;"
                         style="float: left;margin-right: 15px;margin-left: 10px;margin-bottom: 300px;">
                </div>
                <div>
                    <ur>
                        <s:iterator value="#session.pageRTSHBeans" var="rtshBean" status="stat">
                            <li class="areaFont"
                                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;width: 580px;">
                                <a href="${rtshBean.link}">${rtshBean.name}</a>
                            </li>
                        </s:iterator>
                    </ur>
                </div>
                <p align="right" class="areaFont">页码：${rtshCurrentPage}/${rtshTotalPage} 每页：${rtshNumPage}条
                    <a href="s-list.1.html">首页</a>|
                    <a href="s-list.${rtshCurrentPage-1}.html">上一页</a> |
                    <a href="s-list.${rtshCurrentPage+1}.html">下一页</a>|
                    <a href="s-list.${rtshTotalPage}.html">尾页</a></p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 170px;">
                <jsp:include page="../interest.jsp?pagename=zyfx" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
