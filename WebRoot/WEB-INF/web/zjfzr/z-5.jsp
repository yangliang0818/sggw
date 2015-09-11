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
        <h3 style="color: #ab7c12">
            专家辅助人与鉴定人等的区别
        </h3>
        <p align="center">来源：江苏法院网  作者：蔡慧慧</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>1、专家辅助人与证人的区别</B></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我国证据法上的证人是指了解案件真实情况被通知到案作证的人。专家辅助人与证人主要有以下几个区别:一是对当事人的影响力。证人是由案件本身决定的，具有不可替代性和不可选择性，因此当事人是不能自己决定证人的。专家辅助人和证人不一样，当事人可以选择专家辅助人，所以他是可以被选择或者替代的，具有不特定性。二是资格要求。证人不需要有专门知识，他具备正确表达事实的能力就可以作证。但是专家辅助人必须要有与涉案专门性问题有关系的专门性知识。三是参与诉讼原因。证人因为了解案件的具体事实，所以参与到诉讼中，需要到庭陈述。法庭可以传唤证人到庭作证，当事人也可以向法庭申请证人出庭。专家辅助人之所以能够参加到诉讼中，利用自身专业知识发表意见，是因为当事人本身缺乏专业的知识，法庭同意当事人聘请专家的申请。</p>
        <p style="margin-top: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>2、专家辅助人与鉴定人的区别</B></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;专家辅助人非常容易与鉴定人混淆，因为鉴定人也具有专门知识，但是两者之间还是有明显的区别的，主要有以下三个方面：一是参与到诉讼中的原因。人民法院对专业性的问题觉得需要鉴定的，交给国家规定的鉴定部门鉴定。如果没有相关的法定鉴定部门，法院可以依照职权指定鉴定部门来鉴定。但是专家辅助人是因为当事人申请才参与到诉讼中来。二是在诉讼中的作用。因为鉴定人有专门的知识、专门的科学技术设备，还有一定的科技手段，所以鉴定人参与到诉讼中来，针对争议的问题可以查明事实真相，出具结论性意见。专家辅助人参加到诉讼中来的作用是：利用他掌握的知识或者长期积累下来的经验，针对案件的专门性问题，进行说明解释；同时专家辅助人还能对鉴定人询问，质证。三是在诉讼中的效力。根据我国民事诉讼法的相关规定，鉴定的结论属于法定证据的形式之一，是具有法律效力的，并且他的证明力是高于书证、证人证言和视听资料的。但是我国现行的民事诉讼法并没有规定专家辅助人在法庭上对专门问题的说明是证据，他仅仅起到对某一专门性问题起解释或澄清作用。</p>
        <p style="margin-top: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>3、专家辅助人与诉讼代理人的区别</B></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;虽然专家辅助人与诉讼代理人都是当事人聘请的，但是诉讼代理人在代理期间所发表的意见不都是针对专门性问题，诉讼代理人也不都具备专门性知识，与此同时在诉讼中诉讼代理人是以委托人的名义为委托人的利益而活动的。因此，在诉讼中，代理人是以当事人的名义进行诉讼的；他在诉讼过程中有特别的诉讼地位和特殊的权利。专家辅助人依赖其掌握的专业知识，针对专门性问题说明或者解释。他是以自己名义发表发表意见，是不需要当事人授权的，所以和当事人的个人意志没有关系。专家辅助人不具备和代理人同样的诉讼地位。从这里我们可以看出，专家辅助人与诉讼代理人最根本的不同就是以谁的名义进行诉讼活动：代理人以当事人名义，而专家辅助人以自己的名义。
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>