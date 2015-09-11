<%@ page import="java.util.Map" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    Map<String, String> map = (Map) request.getSession().getAttribute("PageKeywords");
    pageContext.setAttribute("keyword", map.get("menu"));
%>
<html>
<head>
    <title></title>
    <META name="keywords" content="${keyword}">
    <LINK rel=stylesheet
          type=text/css href="css/main.css">
</head>
<body>
<UL>
    <LI>
        <A href="ngindex.action"
           rel=common/images/nav_15.gif class="areaFont">
            <%
                String menuId = request.getParameter("menuId");
                if (null == menuId || "1".equals(menuId) || "".equals(menuId)) {
            %>

            <IMG width="86px;" height="28px;"
                 src="images/ngsy.jpg">
            <%
            } else {
            %>
             <span class="areaTitleFont" style="margin: 0,auto;padding-left: 20px;">
                  首&nbsp;&nbsp;&nbsp;&nbsp;页
                </span>
            <%
                }
            %>
        </A>
    </LI>
    <LI class=NavLine>|</LI>
    <LI><A href="ngfxpg.action"
           rel=common/images/nav_19.gif>
        <%
            if (null == menuId || "2".equals(menuId) || "".equals(menuId)) {
        %>

        <IMG width="86px;" height="28px;"
             src="images/ngzlfxypg.jpg">
        <%
        } else {
        %>
            <span class="areaTitleFont">
                  资料分析与评估
            </span>
        <%
            }
        %>
    </A>
    </LI>
    <LI class=NavLine>|</LI>
    <LI>
        <A href="ngsfjd.action"
           rel=common/images/nav_19.gif>
            <%
                if (null == menuId || "3".equals(menuId) || "".equals(menuId)) {
            %>

            <IMG width="86px;" height="28px;"
                 src="images/ngsfjdzx.jpg">
            <%
            } else {
            %>
            <span class="areaTitleFont">
                  司法鉴定咨询
            </span>
            <%
                }
            %>
        </A>
    </LI>
    <LI class=NavLine>|</LI>
    <LI><A href="ngsszc.action"
           rel=common/images/nav_21.gif>
        <%
            if (null == menuId || "4".equals(menuId) || "".equals(menuId)) {
        %>

        <IMG width="86px;" height="28px;"
             src="images/ngyzssszc.jpg">
        <%
        } else {
        %>
             <span class="areaTitleFont">
                  一站式诉讼支持
            </span>
        <%
            }
        %>
    </A>
    </LI>
    <LI class=NavLine>| <!--<LI><A href="index.jsp"
  rel=index/images/nav_23.gif><IMG src="index/images/nav1_23.gif"></A> </LI>
  <LI class=NavLine>| </LI>--></LI>
    <LI><A href="ngzjgw.action"
           rel=common/images/nav_25.gif>
        <%
            if (null == menuId || "5".equals(menuId) || "".equals(menuId)) {
        %>

        <IMG width="86px;" height="28px;"
             src="images/ngzjgw.jpg">
        <%
        } else {
        %>
              <span class="areaTitleFont">
                  专家顾问
            </span>
        <%
            }
        %>
    </A>
    </LI>
    <LI class=NavLine>|</LI>
    <LI><A href="nghzjdjg.action"
           rel=common/images/nav_27.gif>
        <%
            if (null == menuId || "6".equals(menuId) || "".equals(menuId)) {
        %>

        <IMG width="86px;" height="28px;"
             src="images/nghzjdjg.jpg">
        <%
        } else {
        %>
                <span class="areaTitleFont">
                  合作鉴定机构
            </span>
        <%
            }
        %>

    </A></LI>
    <LI class=NavLine>|</LI>
    <LI><A href="nghzls!qryHzls.action"
           rel=common/images/nav_27.gif>
        <%
            if (null == menuId || "7".equals(menuId) || "".equals(menuId)) {
        %>

        <IMG width="86px;" height="28px;"
             src="images/nghzls.jpg">
        <%
        } else {
        %>
                <span class="areaTitleFont">
                  合作律师
            </span>
        <%
            }
        %>
    </A></LI>
    <LI class=NavLine>|</LI>
    <LI><A href="nglx.action"
           rel=common/images/nav_27.gif>
        <%
            if (null == menuId || "8".equals(menuId) || "".equals(menuId)) {
        %>

        <IMG width="86px;" height="28px;"
             src="images/nglxwm.jpg">
        <%
        } else {
        %>
            <span class="areaTitleFont">
                  联系我们
            </span>
        <%
            }
        %>
    </A></LI>
</UL>
</body>
</html>