<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-10
  Time: 上午12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<HEAD>
    <META http-equiv=Content-Type content="text/html; charset=UTF-8">
    <LINK href="images/admin/css/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%"
       background="images/admin/images/header_bg.jpg" border=0>
    <TR height=56>
        <TD width=260><IMG height=56 src="images/admin/images/header_left.jpg"
                           width=260></TD>
        <TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px"
            align=middle>当前用户：admin &nbsp;&nbsp; <A style="COLOR: #fff"
                                                    href=""
                                                    target=main>修改口令</A> &nbsp;&nbsp; <A style="COLOR: #fff"
                                                                                         onclick="if (confirm('确定要退出吗？')) return true; else return false;"
                                                                                         href="" target=_top>退出系统</A>
        </TD>
        <TD align=right width=268><IMG height=56
                                       src="images/admin/images/header_right.jpg" width=268></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TR bgColor=#1c5db6 height=4>
        <TD></TD>
    </TR>
</TABLE>
</BODY>
</HTML>
