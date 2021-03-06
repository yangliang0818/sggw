<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <link rel="stylesheet" href="http://www.shiguwen.com/css/jquery.mobile-1.4.0-rc.1.css">
    <link rel="stylesheet" href="http://www.shiguwen.com/css/web/mobile.css">
    <!--必须框架jquery,jquery.mobile-->
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.js"></script>
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.mobile-1.4.0-rc.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            /*下拉菜单效果*/
            $(".ui-block-a:eq(0),.ui-block-b:eq(0),.ui-block-c:eq(0),.ui-block-d:eq(0),.ui-block-e:eq(0)").hover(function () {
                $(this).find("ul").removeClass("ui-grid-c").show();
            }, function () { $(this).find("ul").hide(); });
        });
    </script>
</head>
<body>
<div data-role="page">
    <!--网站标题及相关导航-->
    <div id="head" data-role="header" data-theme="b">
        <jsp:include page="../head.jsp" flush="false"></jsp:include>
    </div>
    <div class="ui-content" style="font-size: 14px; line-height: 1.8">
        <h3>对**司法鉴定中心车辆速度技术检验报告书若干技术问题的意见
        </h3>
        <p><B>分析材料：</B></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、**司法鉴定中心车辆速度技术检验报告书（**司法鉴定中心[2013]痕检字第**号）</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、道路交通事故现场图
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、交通事故现场照片
        </p>
        <p>
            <B>一、简要案情</B>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2014年1月20日7时40分许，在某国道（从事故现场照片来看，该国道为沥青路面，且路面平直，不存在坡度及弯道）发生一起桂**号中型普通客车与粤**号小型轿车碰撞的交通事故（以下简称“本事故”）。**司法鉴定中心对本案中所涉车辆进行了车辆速度技术检验（**司法鉴定中心[2013]痕检字第**号）。根据检验结果，桂**号中型普通客车碰撞前的瞬时车速约为66km/h；粤**号小型轿车碰撞前的瞬时车速约为72km/h。
        </p>
        <p>
            <B>二、对**司法鉴定中心[2013]痕检字第**号报告的意见</B>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、根据本事故的道路交通事故现场图可知，两车碰撞点为A点。其中桂**号车由碰撞点到该车停止位的距离由两部分构成：其一是碰撞点A至B距离，为18.8米；其二是B点至该车停止位距离，约为25米。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在车速检测报告中，计算桂**号车的车速时仅仅考虑B点至该车停止位距离，而未考虑A点至B点的距离。根据事故现场照片，桂**号车左前轮受力使得前轴向后推移，迫使左前轮产生横向滑移，因此该车由A点运动至B点非滚动滑移，故该处能量的消耗不应忽略。若将该处能量消耗考虑进去，则桂**号车的碰撞前瞬时车速会高很多。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、车速检测报告中计算桂**号车的等效速度时，所用的等效速度计算公式 仅仅适用于轿车（参见中华人民共和国公共安全行业标准GA/T643-2006《典型交通事故形态车辆行驶速度技术鉴定》）。等效速度 的来源为大量轿车前置碰撞试验基础上得到的经验公式，用于大客车将产生错误。由于客车的刚度系数通常比轿车大，因此对于本事故桂**号车的碰撞变形量，所对应的等效速度要高于原检测报告中的计算结果。考虑到这一点，桂**号车的碰撞前瞬时车速还会更高。
        </p>
        <p>
            <B>三、结论</B>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**司法鉴定中心[2013]痕检字第**号车速检测报告存在计算疏漏和计算公式应用错误，导致桂**号中型普通客车的车速检测结果（66km/h）低于实际车速，因此本检测结果不应采信。根据前述分析可知，桂**号中型普通客车在碰撞前超速行驶的可能性很大。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>