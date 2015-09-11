<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>交通事故问题专栏-交通事故-事故问_交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <META name="keywords" content="交通事故">
    <meta name="description" content="交通事故问题专栏文章集合" />
    <link href="../css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="../js/script_gizp.js"></script>
</head>
<body>
<!--header begin -->
<jsp:include page="../head.jsp?menuid=m5"></jsp:include>
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
                交通事故问题专栏
            </div>
            <div class="aticle">
                <h5>
                    交通事故问题专栏
                </h5>

                <div style="float: left;margin-right: 15px;margin-left: 10px;margin-bottom: 300px;">
                    <img src="http://www.shiguwen.com/images/jtsgtb.jpg" alt="" width="86px;" height="86px;">
                </div>
                <div>
                    <ur>
                        <s:iterator value="#session.pageJTSGBeans" var="jtsgBean" status="stat">
                            <li class="areaFont"
                                style="border-bottom: 1px dashed;border-bottom-color:#ddd;list-style: disc;width: 580px;">
                                <a href="${jtsgBean.link}">${jtsgBean.name}</a>
                            </li>
                        </s:iterator>
                    </ur>
                </div>
                <p align="right" class="areaFont">页码：${jtsgCurrentPage}/${jtsgTotalPage} 每页：${jtsgNumPage}条
                    <a href="j-list.1.html">首页</a>|
                    <a href="j-list.${jtsgCurrentPage-1}.html">上一页</a> |
                    <a href="j-list.${jtsgCurrentPage+1}.html">下一页</a>|
                    <a href="j-list.${jtsgTotalPage}.html">尾页</a></p>
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
