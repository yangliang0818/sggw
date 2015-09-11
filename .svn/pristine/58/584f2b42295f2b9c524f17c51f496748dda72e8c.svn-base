<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-1
  Time: 下午10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />

    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>

    <style type="text/css">

        *{padding:0; margin:0;}

        #roll{ border:1px;height:162px; width:252px; overflow:hidden;list-style:none; font-family:'微软雅黑';}

        #roll li{height:30px; padding-left:10px;line-height:30px; border-bottom:1px dashed #ddd;}

        a{font-size:14px; text-decoration:none; font-family:'微软雅黑';COLOR: #473505;}

    </style>
    <script type="text/javascript">
        function newslist(){
            var form=document.forms[0];
            form.target="_parent";
            form.action="newslist.action";
            form.submit();
        }
        function newsarea(index){
            var form=document.forms[0];
            form.target="_parent";
            form.action="newsarea!qryNewsArea.action?index="+index;
            form.submit();
        }
    </script>
</head>
<body style="background-color: #FBFDE7 ">
<form method="post">
        <marquee behavior="scroll"
                 direction="up"
                 width="250px;"
                 height="160px;"
                 loop="-1"
                 scrollamount="1.5"
                 scrolldelay="0.5"
                 onmouseover="this.stop()"  onmouseout="this.start()">

        <s:iterator value="#session.newsBeans" var="newsBean">
            <s:set name="havaresult" value="true"></s:set>
        <li style="margin-bottom: 5px;"><a onclick="newsarea('${newsBean.index}')" href="#">${newsBean.newsDate}&nbsp;${newsBean.title}</a></li>
        </s:iterator>
        <s:if test="#havaresult!=true">
            <p class="areaFont" align="center">暂无案情</p>
        </s:if>
        </marquee>
    <p align="right"><a href="#" onclick="newslist()">更多案情</a></p>
    <div id="bug"></div>
</form>
</body>



</html>
