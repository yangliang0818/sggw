<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-11-10
  Time: 上午12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<HEAD>
    <META http-equiv=Content-Type content="text/html; charset=gb2312">
    <LINK href="images/admin/css/admin.css" type="text/css" rel="stylesheet">
    <SCRIPT language=javascript>
        function expand(el) {
            childObj = document.getElementById("child" + el);

            if (childObj.style.display == 'none') {
                childObj.style.display = 'block';
            }
            else {
                childObj.style.display = 'none';
            }
            return;
        }
    </SCRIPT>
</HEAD>
<BODY>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170
       background=images/admin/images/menu_bg.jpg border=0>
<TR>
<TD vAlign=top align=middle>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

    <TR>
        <TD height=10></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(1)
                href="javascript:void(0);">律师跟进管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminaddlawyer.action"
               target=main>录入律师资料</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminmodifylawyer!qryLawyer.action"
               target=main>修改律师资料</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admindeletelawyer!qryLawyer.action"
               target=main>删除律师资料</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqrylawyer!qryLawyer.action"
               target=main>查询律师资料</A></TD>
    </TR>
</TABLE>
<TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>

    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>修改口令</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               onclick="if (confirm('确定要退出吗？')) return true; else return false;"
               href="http://www.865171.cn"
               target=_top>退出系统</A></TD>
    </TR>
</TABLE>
</TD>
<TD width=1 bgColor=#d1e6f7></TD>
</TR>
</TABLE>
</BODY>
</HTML>
