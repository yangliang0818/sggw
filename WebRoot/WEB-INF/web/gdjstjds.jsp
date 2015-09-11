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
        <jsp:include page="head.jsp" flush="false"></jsp:include>
    </div>

    <div class="ui-content" style="font-size: 14px; line-height: 1.8">
        <h3 style="color: #ab7c12">
            广东杰思特司法鉴定所
        </h3>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广东杰思特司法鉴定所是经广东省司法厅核准登记建立、国家司法部入册、面向社会服务、第三方中立的司法鉴定机构。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;司法鉴定许可证号4402701，机构代码证号69713256-3。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从事鉴定的专业范围为：痕迹鉴定、声像资料鉴定。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;痕迹鉴定提供的服务包括：交通事故车辆质量痕迹鉴定、车速鉴定、车辆碰撞痕迹与地面拖痕、爆胎与起火痕迹鉴定，及各种疑难复杂现场的勘查与三维重建分析，发现提取手印、脚印、工具（撬剪砍砸钻痕）、枪弹（弹头弹壳、射击弹道）、车辆、火险、整体分离、牙印等痕迹的检验鉴定，为认定或否定嫌疑、确定案件性质、分析案情和诉讼，提供线索和依据。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;声像资料鉴定，提供的服务包括：声音鉴定、录音真伪、言语识别；图像鉴定、视频鉴定、监控模糊图象处理、颅像重合、人像组合、测谎等；计算机与电子设备（如U盘、录音笔、MP3、手机、数码相机、摄像机等）的证据保全及检验，网络证据（网页、邮件、即时消息等）保全及检验，计算机软硬件侵权鉴定、数据恢复与文件修复、数据销毁、密码破解、数字版权鉴定、音像影视作品的鉴定等。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本所具有人才和仪器设备等方面的优势。司法鉴定专家团队都是富有几十年专业技术经验的高级工程师；枪弹痕迹自动识别系统、指纹自动识别系统、监控模糊图象处理系统、现场痕迹物证图象处理系统、3维现场重建分析系统等检验鉴定设备精良，技术先进，处于目前国内外领先地位。目前本所重点实验室与深圳大学法学院实验中心合作建立起科技创新产学研基地和公共技术服务平台，并与位于加拿大的北美司法鉴定协会（NAFS）结盟，能够保证社会各界对司法鉴定、咨询、培训服务的需求。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本所接受司法机关、行政、企事业单位、律师事务所及公民个
            人委托依法开展专业技术鉴定、复核等工作，我所出具的司法鉴定报告在全国范围内具有第三方中立公正的法律效力，鉴定结论不受他人或地域限制。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们的宗旨是：以满腔热情和科学、客观、公平、公正的态度，认真负责、全心全意地做好本专业的司法鉴定工作，为广大民众排忧解难，用科学、准确、公正的鉴定结论感恩回报，为社会和谐安定努力奋斗！
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>