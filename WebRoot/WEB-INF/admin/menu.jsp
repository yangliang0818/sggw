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
                href="javascript:void(0);">案例管理</A></TD>
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
               href="admininputcase.action"
               target=main>录入案例</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admincaseprogress!qryCase.action"
               target=main>录入案情进展</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminmodifycase!qryCase.action"
               target=main>修改案例</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminmodifycaseprogress!qryCaseProgress.action"
               target=main>修改案情进展</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admindeleteCase!qryCase.action"
               target=main>删除案例</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admindeleteCaseProgress!qryCaseProgress.action"
               target=main>删除案情进展</A></TD>
    </TR>
    <TR height=4>
        <TD colSpan=2></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(3)
                href="javascript:void(0);">接待点管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminprovincemsg!qryProvince.action"
               target=main>省份管理</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admininputservarea!qryActiveProvince.action"
               target=main>录入接待点</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminmodifyservarea!qryServArea.action"
               target=main>修改接待点</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admindeleteservarea!deleteNewsForward.action"
               target=main>删除接待点</A></TD>
    </TR>
    <TR height=4>
        <TD colSpan=2></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(4)
                href="javascript:void(0);">顾问管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admininputAdviser.action"
               target=main>添加专家顾问</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminmodifyAdviser.action"
               target=main>修改顾问资料</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>删除专家顾问</A></TD>
    </TR>
    <TR height=4>
        <TD colSpan=2></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(5)
                href="javascript:void(0);">新闻管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>

    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admininputpress.action"
               target=main>发布新闻</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminmodifypress!qryPress.action"
               target=main>修改新闻</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admindeletepress!qryPress.action"
               target=main>删除新闻</A></TD>
    </TR>
    <TR height=4>
        <TD colSpan=2></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(8)
                href="javascript:void(0);">人事管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child8 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>

    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admininputstaff.action"
               target=main>录入员工资料</A></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(10)
                href="javascript:void(0);">互动功能管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child10 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqryneedhelp!qryNeedHelp.action"
               target=main>查看所需帮助</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqrytsjy!qryTsjy.action"
               target=main>查看投诉与建议</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqrylsdj!qryLsdj.action"
               target=main>查看律师登记信息</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqrynewask!qryNewAsk.action"
               target=main>查看最新咨询</A>
        </TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminaddnewask.action"
               target=main>添加最新咨询</A>
        </TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqrymodellink!qryModelLink.action?index=1"
               target=main>查看模块链接</A>
        </TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminaddmodellink.action"
               target=main>添加模块链接</A>
        </TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(6)
                href="javascript:void(0);">高级管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>

    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>广告管理</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>访问统计</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>邮件发送设置</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>联系部门</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>用户留言</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>招聘职位</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>应聘人员</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>留言簿</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>产品订购</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>链接管理</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>文件管理</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>信息转移</A></TD>
    </TR>
    <TR height=4>
        <TD colSpan=2></TD>
    </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

    <TR height=22>
        <TD style="PADDING-LEFT: 30px" background=images/admin/images/menu_bt.jpg><A
                class=menuParent onclick=expand(7)
                href="javascript:void(0);">系统管理</A></TD>
    </TR>
    <TR height=4>
        <TD></TD>
    </TR>
</TABLE>
<TABLE id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0
       width=150 border=0>

    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminkeywordsset!qryKeywords.action"
               target=main>关键词设置</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="admininterestset!qryInterests.action"
               target=main>内容推荐设置</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="adminqrytjtj!qryTjtj.action"
               target=main>查看数据提交时长</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>功能管理</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>菜单管理</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>首页设置</A></TD>
    </TR>
    <TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/admin/images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild
               href="#"
               target=main>管理员列表</A></TD>
    </TR>
    <TR height=4>
        <TD colSpan=2></TD>
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
