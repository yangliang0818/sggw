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
    <link href="../css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="../js/script_gizp.js"></script>
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
<jsp:include page="../head.jsp?menuid=m3"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="../left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:<a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>
                <a href="z-list.html">专家辅助人<em>&gt;</em></a>
                专家辅助人与医生的区别
            </div>
            <div class="aticle">
                <h5>专家辅助人与医生的区别</h5>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医疗纠纷案件的处理过程中，常常会请医生提供指导。但医生和专家辅助人的作用并不一样，两者的主要区别在于：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）专家辅助人一般是由具有司法鉴定资质的法医担任，专家既懂医，又懂法，与纯粹的医生相比具有优势。</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）医生受制于自身职业角色，一般不愿意公开和自己的医院同行作对，最多给出一些口头意见，不会出具签字的论证报告，更不会为患方出庭作证，因此发挥的作用比不上专家辅助人。</p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 150px;">
                <jsp:include page="../interest.jsp?pagename=wzjj" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
