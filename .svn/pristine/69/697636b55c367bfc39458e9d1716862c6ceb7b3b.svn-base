<%@ page import="java.util.Map" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    Map<String, String> map = (Map) request.getSession().getAttribute("PageKeywords");
    String pagename = request.getParameter("pagename");
    if (null == map) {
        response.sendRedirect(pagename + "!init.action");
        return;
    }
    request.setAttribute("keyword", map.get(pagename));
%>