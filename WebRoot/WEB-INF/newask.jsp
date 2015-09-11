<%--
  Created by IntelliJ IDEA.
  User: yangliang
  Date: 14-2-19
  Time: 下午11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <META name="keywords" content="伤残鉴定,伤残等级,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故鉴定、医疗事故鉴定咨询；争议性鉴定报告评估；专业律师委托；专家证人出庭。全方位事故处理专业服务，费用更低，权益更有保障。" />
    <meta name="description" content="jquery文字滚动，单排文字上下间歇滚动，柔美圆滑的上下文字间歇滚动，不需定义容器高度，就能进行文字上下间歇滚动。jQuery下载。" />
</head>

<body>
<style type="text/css">
    *{margin:0;padding:0;list-style-type:none;}
    a,img{border:0;}
    body{font:14px/180% ,"微软雅黑",Helvetica,sans-serif;color:#333;background:#fff;}
    .scrolltext{width:460px;height:500px;overflow:hidden;background:url(images/123aafa.png) no-repeat;}
        /* quotation */
    #quotation{width:460px;height:500px;overflow:hidden;margin:0px auto 0 auto;}
    #quotation li{line-height:20px;padding-bottom:0px;}
    #quotation li .a-r{text-align:right;}
    #quotation li span{color:#999;margin:0 0 0 10px;}
</style>

<div class="scrolltext">
    <div id="quotation">
        <ul>
            <s:iterator value="#session.NewAskList" var="newAskBean" status="stat">
                <li>
                    <div style="height:142px;width:420px;margin-left:20px;padding-bottom:20px;">
                        <div style="float: left;margin-right: 10px;margin-bottom: 30px;margin-top: 10px;"><img width="100" height="100" alt="" src="images/zxtp.jpg"></div>
                        <div style="margin-top: 20px;height: 110px;">
                            问题分类：<span style="color: #ab7c12;"><B>${newAskBean.qtype}</B></span>
                            <p>${newAskBean.content}</p>
                        </div>
                        <p style="margin-top: 5px;border-bottom: 1px solid #01778f;padding-bottom: 5px;" align="right">${newAskBean.askdate}</p>
                    </div>
                </li>
            </s:iterator>
        </ul>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        var scrtime;
        $("#quotation").hover(function(){
            clearInterval(scrtime);

        },function(){

            scrtime = setInterval(function(){
                var $ul = $("#quotation ul");
                var liHeight = $ul.find("li:last").height();
                $ul.animate({marginTop : liHeight + 35 + "px"},1000,function(){

                    $ul.find("li:last").prependTo($ul)
                    $ul.find("li:first").hide();
                    $ul.css({marginTop:0});
                    $ul.find("li:first").fadeIn(1000);
                });
            },6000);

        }).trigger("mouseleave");
    });
</script>

</body>
</html>
