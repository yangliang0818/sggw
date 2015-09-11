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
            <div class="breadcrumb">您当前的位置是:<a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>最新咨询</div>
            <div class="aticle">
                <h5>最新咨询</h5>
                <ul>
                    <s:iterator value="#session.pageNewAskBeans" var="newAskBean" status="stat">
                        <li>
                            <div style="width:680px;height:150px;margin-left:20px;padding-bottom:20px;border-bottom: 1px solid #01778f;">
                                <div style="float: left;margin-right: 10px;margin-bottom: 30px;margin-top: 10px;"><img width="100" height="100" alt="" src="images/zxtp.jpg"></div>
                                <div style="margin-top: 20px;">
                                    问题分类：<span style="color: #0000cc;"><B>${newAskBean.qtype}</B></span>
                                    <p>${newAskBean.content}</p>
                                    <p style="margin-top: 5px;" align="right">${newAskBean.askdate}</p>
                                </div>
                            </div>
                        </li>
                    </s:iterator>
                </ul>
                <p align="right" class="areaFont">页码：${newAskCurrentPage}/${newAskTotalPage} 每页：${newAskNumPage}条
                    <a href="newasklist.1.html">首页</a>|
                    <a href="newasklist.${newAskCurrentPage-1}.html">上一页</a> |
                    <a href="newasklist.${newAskCurrentPage+1}.html">下一页</a>|
                    <a href="newasklist.${newAskTotalPage}.html">尾页</a></p>            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 150px;">
                <jsp:include page="interest.jsp?pagename=wzjj" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
