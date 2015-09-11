<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-1-7
  Time: 下午1:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="mymenu">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>蓝色水平二级导航菜单 by www.mycodes.net</title>
    <link rel="stylesheet" type="text/css" href="header.css" />
    <script language="javascript" type="text/javascript" src="jquery-1.3.2.min.js"></script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function(){
            $(".mainNav a").mouseover(function(){
                $(".mainNav a").attr("class","");
                $("#"+this.id).attr("class","actived");
                var currentMenuNo = parseInt(this.id.substring(1));
                $(".secondNav div").each(function(){
                    $(this).hide();
                    $("#subNav"+currentMenuNo).show();
                });
            });
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
                        <a href="http://www.mycodes.net/" id="n1" class="actived">首页</a>
                        <a href="http://www.mycodes.net/" id="n2">关于我们</a>
                        <a href="http://www.mycodes.net/" id="n3">服务项目</a>
                        <a href="http://www.mycodes.net/" id="n4">专家顾问</a>
                        <a href="http://www.mycodes.net/" id="n5">合作鉴定机构</a>
                        <a href="http://www.mycodes.net/" id="n6">联系我们</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="secondNav">
            <div id="subNav2" class="subNav2">
                <a href="http://www.mycodes.net/" class="actived">网站简介</a>
                <a href="http://www.mycodes.net/">热点问题</a>
            </div>
            <div id="subNav3" class="subNav3">
                <a href="http://www.mycodes.net/" class="actived">司法鉴定咨询</a>
                <a href="http://www.mycodes.net/">专业资料分析</a>
                <a href="http://www.mycodes.net/">专家出庭服务</a>
                <a href="http://www.mycodes.net/">一站式理赔诉讼支持</a>
                <a href="http://www.mycodes.net/">行车记录仪数据分析</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
