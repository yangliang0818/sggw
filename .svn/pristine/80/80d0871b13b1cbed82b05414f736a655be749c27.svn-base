<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <META name="keywords" content="伤残鉴定,伤残等级,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故鉴定、医疗事故鉴定咨询；争议性鉴定报告评估；专业律师委托；专家证人出庭。全方位事故处理专业服务，费用更低，权益更有保障。" />
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="js/script_gizp.js"></script>
    <SCRIPT language=javascript type=text/javascript>
        function document.onkeydown() {
            var button = document.getElementById('btnSearch');

            if (event.keyCode == 13) {
                button.click();
                event.returnValue = false;
            }
        }
        function servAreaInit() {
            document.getElementById('${ServArea}').style.background = "#000000";
            document.getElementById('${ServArea}').style.color = "#f0f8ff";
        }
    </SCRIPT>
</head>
<body onload="servAreaInit();">
<!--header begin -->
<jsp:include page="head.jsp?menuid=m1"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:
                <a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>
                联系您身边的接待处
            </div>
            <div class="aticle">
                <h5>
                    联系您身边的接待处
                </h5>
                <p class="citylist">
                    <s:iterator value="#session.ActiveProvinces" var="provinceBean" status="stat">
                        <a href="servarea!qryServArea.action?province=${provinceBean.simplename}"
                           id="${provinceBean.simplename}" title="">${provinceBean.name}</a>
                    </s:iterator>
                </p>
                <table width="100%" style="margin-top: 40px;">
                    <tr align="center" bgcolor="#000000" style="height: 50px;">
                        <td width="10%">
                            <font color="#f0f8ff" class="areaFont">地区</font>
                        </td>
                        <td >
                            <font color="#f0f8ff" class="areaFont">联系地址</font>
                        </td>
                        <td width="16%">
                            <font color="#f0f8ff" class="areaFont">联系方式</font>
                        </td>
                    </tr>
                    <s:iterator value="#session.ServAreaList" var="servAreaBean" status="stat">
                        <s:set name="havaresult" value="true"></s:set>
                        <tr align="center" style="line-height: 50px;font-size: 14px;" bgcolor="#f9f9f9">
                            <td>
                                    ${servAreaBean.areaName}
                            </td>
                            <td>
                                    ${servAreaBean.address}
                            </td>
                            <td>
                                    ${servAreaBean.phone}
                            </td>
                        </tr>
                    </s:iterator>
                    <s:if test="#havaresult!=true">
                        <tr align="center">
                            <td colspan="3">
                                暂无
                            </td>
                        </tr>
                    </s:if>
                </table>
                <p class="areaFont" align="right" style="margin-top: 20px;">（排名不分先后，以城市汉语拼音首字母排序）</p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 170px;">
                <jsp:include page="interest.jsp?pagename=zyfx" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
