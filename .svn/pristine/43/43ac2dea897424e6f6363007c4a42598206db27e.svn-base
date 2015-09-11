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
    <meta http-equiv="Content-Type" content="text/html; charset=GBK"/>
    <style type="text/css">

        * {
            padding: 0;
            margin: 0;
        }

        #roll {
            border: 1px;
            height: 162px;
            width: 195px;
            overflow: hidden;
            list-style: none;
            font-family: '微软雅黑';
        }

        #roll li {
            height: 30px;
            padding-left: 10px;
            line-height: 30px;
            border-bottom: 1px dashed #ddd;
        }

        a {
            font-size: 14px;
            text-decoration: none;
            font-family: '微软雅黑';
            color: #1e201e
        }

    </style>
    <title>无限滚动代码</title>

    <script type="text/javascript">
        function newslist() {
            var form = document.forms[0];
            form.target = "_parent";
            form.action = "presslist.html";
            form.submit();
        }
        function newsarea(index) {
            var form = document.forms[0];
            form.target = "_blank";
            form.action = "pressarea." + index + ".html";
            form.submit();
        }
    </script>
</head>
<body>
<form method="post">
    <%--<marquee behavior="scroll"
             direction="up"
             width="192px;"
             height="162px;"
             loop="-1"
             scrollamount="1.5"
             scrolldelay="0.5"
             onmouseover="this.stop()"  onmouseout="this.start()">

        <s:iterator value="#session.PressBeans" var="pressBean">
            <s:set name="havaresult" value="true"></s:set>
            <li style="margin-bottom: 5px;"><a onclick="newsarea('${pressBean.index}')" href="#">${pressBean.newsDate}&nbsp;${pressBean.title}</a></li>
        </s:iterator>
        <s:if test="#havaresult!=true">
            <p class="areaFont" align="center">暂无新闻</p>
        </s:if>
    </marquee>--%>
    <s:iterator value="#session.PressLimitBeans" var="pressLimitBean">
        <s:set name="havaresult" value="true"></s:set>
        <li style="margin-bottom: 5px;"><a onclick="newsarea('${pressLimitBean.index}')"
                                           href="#">${pressLimitBean.newsDate}&nbsp;${pressLimitBean.title}</a></li>
    </s:iterator>
    <s:if test="#havaresult!=true">
        <p class="areaFont" align="center">暂无新闻</p>
    </s:if>
    <p align="right"><a href="presslist.html" onclick="newslist()"><font style="font-family: '微软雅黑'">更多新闻</font></a></p>

    <div id="bug"></div>
</form>
</body>
</html>
