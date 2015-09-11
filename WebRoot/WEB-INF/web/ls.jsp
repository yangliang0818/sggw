<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            框架合作协议
        </h3>
        <p style="">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;甲方：事故问（<a href="www.shiguwen.com">www.shiguwen.com</a>）
        </p>

        <p style="">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乙方：区域合作律师
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;甲、乙双方本着平等互利、共同发展的原则，经友好协商，对于乙方成为甲方区域合作律师一事，达成如下框架合作协议，并由双方共同恪守。
        </p>

        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>一、双方职责</b>
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、甲方负责客户开拓、客户关系维护、业务协作，并负责落实客户所需的专业技术服务。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、乙方作为甲方的区域合作律师，负责为甲方推荐给乙方的客户（为双方共同的客户）提供法律服务。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>二、双方权利与义务</B>
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、双方有义务为共同的客户提供更好的服务，并在服务收费上酌情予以优惠。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、在为共同的客户提供服务时，一方有权对另一方的服务质量进行监督。对于不诚信、服务态度恶劣等不良行为，一方有权要求另一方即刻予以改正；情节严重且拒不改正者，一方有权中止双方的合作关系，并采用网站公告等形式进行曝光。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、若双方共同的客户与乙方建立委托关系，乙方有义务及时告知甲方。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、对于甲方推荐给乙方的客户，乙方有权自由决定是否接受。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、双方在合作过程中，有义务保护彼此共同的利益并维护彼此的声誉。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>三、收费方式</B>
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据客户意愿，客户可选择将服务费用支付给甲方或乙方，双方根据各自在业务中所起的作用对收益进行分配。分配方式如下：
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、对于以乙方为主完成的业务，甲方仅收取案件协作费，其余收入归乙方所有。其中：
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;服务收费不超过RMB 5000元：协作费为服务收费的10%
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;服务收费超过RMB 5000元：5000元以内部分收取10%协作费；超出5000元部分收取20%协作费
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;风险代理案件：协作费不低于RMB 1000元/起
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（对于风险代理案件，根据前期收费及后期收费的金额，分别按上述比例执行。服务收费不包含差旅费等办案支出）
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、对需要甲方提供技术服务的业务，双方收益分配一案一议，原则上甲方的技术服务费不低于总收费的30%（含前期收费及风险代理费）。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>四、禁止事项</B>
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、对于双方共同的客户，严禁一方在未告知另一方的情况下，私自与客户建立委托关系，此种行为将被视为严重的不诚信行为。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、双方在合作过程中，严禁出现有损对方声誉和利益的行为。
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>五、其他</B>
        </p>
        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本合作无固定期限，但双方有权根据双方的合作情况，随时调整合作期限。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
