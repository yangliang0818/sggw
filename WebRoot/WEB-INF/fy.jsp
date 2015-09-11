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
    <meta name="keywords" content="伤残鉴定,伤残等级,交通事故,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故、交通事故鉴定、医疗事故鉴定咨询;争议性鉴定报告评估;专业律师委托;专家证人出庭.全方位事故处理专业服务,费用更低,权益更有保障."/>
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="js/script_gizp.js"></script>
    <script type="text/javascript">
        function document.onkeydown() {
            if ((window.event.altKey) &&
                    ((window.event.keyCode == 37) || //屏蔽 Alt+ 方向键 ←
                            (window.event.keyCode == 39)))  //屏蔽 Alt+ 方向键 →
            {
                alert("不准你使用ALT+方向键前进或后退网页！");
                event.returnValue = false;
            }
            //注：这还不是真正地屏蔽 Alt+ 方向键，因为 Alt+ 方向键弹出警告框时，按住 Alt 键不放，
            //用鼠标点掉警告框，这种屏蔽方法就失效了。以后若有哪位高手有真正屏蔽 Alt 键的方法，请告知。
            if ((event.keyCode == 8) || //屏蔽退格删除键
                    (event.keyCode == 116) || //屏蔽 F5 刷新键
                    (event.ctrlKey && event.keyCode == 82)) {       //Ctrl + R
                event.keyCode = 0;
                event.returnValue = false;
            }
            if (event.keyCode == 122) {
                event.keyCode = 0;
                event.returnValue = false;
            }   //屏蔽F11
            if (event.ctrlKey && event.keyCode == 78) event.returnValue = false;    //屏蔽 Ctrl+n
            if (event.shiftKey && event.keyCode == 121) event.returnValue = false;  //屏蔽 shift+F10
            if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
                window.event.returnValue = false;                               //屏蔽 shift 加鼠标左键新开一网页
            if ((window.event.altKey) && (window.event.keyCode == 115)) {           //屏蔽Alt+F4
                window.showModelessDialog("about:blank", "", "dialogWidth:1px;dialogheight:1px");
                return false;
            }
        }
    </script>
</head>
<body>
<!--header begin -->
<jsp:include page="head.jsp?menuid=m3"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:<a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>
                医疗纠纷处理收费标准
            </div>
            <div class="aticle">
                <h5>医疗纠纷处理收费标准</h5>

                <p><B>一、纯技术服务收费标准：</B></p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;采用前期费用+后期费用的两阶段收费方式。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、前期费用：2800元</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;包含服务内容：</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）专家撰写并签字的书面意见报告，对医院的过错、因果关系及赔偿金额等进行专业的论述，作为调解或诉讼的专业依据。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）事故处理全程技术指导。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）司法鉴定辅助服务。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）专家免费出面参与调解或诉讼（不含差旅费，差旅费实报实销）。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、后期费用：一般按医院赔偿额度的10%-15%收取。（若争取不到医院赔偿，则不收取后期费用。）
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）上述服务内容为完整的技术服务内容，并非每个案件都需要完整的技术服务。
                </p>               

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）根据案件的复杂程度以及患方的承受能力，前期费用会适当增加或降低，后期收费比例也会做相应调整。个别情况下，可采取前期“零收费”的方式。
                </p>
								<p><B>二、"法律+技术"一站式综合性服务收费标准：</B></p>               

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;采用前期费用+后期费用的两阶段收费方式。根据案情的复杂程度以及患方的承受能力，前期费用与后期收费比例协商确定。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;包含服务内容：
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）全程法律服务：由患方当地的合作律师全权代理患方的法律事务。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）全程技术服务：参见上述"纯技术服务"的服务内容。
                </p>               
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多内容请点击：<a href="dc.html"><font color="blue"><B>医疗纠纷处理现状及对策</B></font></a>
                </p> 
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 150px;">
                <jsp:include page="interest.jsp?pagename=wzjj" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
