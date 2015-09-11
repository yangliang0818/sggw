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
            事故问专家接受《宁波晚报》记者采访
        </h3>
        <p align="center">    <img src="http://www.shiguwen.com/images/xcbd/x-1.1.jpg" alt=""  width="340px;" height="300px;"></p>
        <p align="center">(高小姐自己制作的事故发生现场图)</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本报讯 昨天上午，海曙区人民法院第七法庭审理了一起交通事故案件。原告是慈溪女子高玉萍，她现场提交的一份由北京交通部公路科学研究所司法鉴定中心出具的车速鉴定结果令人关注。"这是我能为爸爸做的最后一件事情，也希望能借此推动宁波早日导入'车速鉴定'概念。"高玉萍告诉记者，为了这份鉴定，她前后奔波了近１０个月。
        </p>

        <p >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;２００９年３月６日，高玉萍的父亲驾驶加装动力装置的人力三轮车与一辆货车相撞，不幸死亡。慈溪市交警大队经调查后认定，事故双方各承担此事故的同等责任。其中对方货车司机负同等责任的主要理由为驾驶不符合技术标准的机动车上路行驶和驾车遇紧急情况时采取措施不当。
        </p>

        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"事故认定书中对货车是否超速这一问题没有涉及，我认为这是不全面的。"３月底，高玉萍向宁波市交警支队提出了复核申请，并多次表达了想做车速鉴定的意愿。得到的回答是，宁波没有相关车速鉴定的规定，也没有出具车速鉴定委托书的先例，原因主要是目前宁波乃至整个浙江省都没有经司法行政部门登记的涉及车速鉴定方面的检验鉴定机构。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;虽然想测速遇到了难题，可高玉萍并没有放弃。她直接通过北京一家律师事务所出面委托，并自己收集鉴定所需的事故相关资料，５０００元鉴定费用也是自己掏钱。去年１２月１１日，她终于拿到了司法鉴定意见书。结论是：事故发生时，货车行驶速度不低于７９．２５公里／小时。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"该事故路段的限速是７０公里／小时，我方认为被告属于超速行驶，应当承担８０％的赔偿责任。"昨天，原告诉讼代理人北京中闻律师事务所的律师张继军表示。对此，被告诉讼代理人的意见是，原交警部门在事故认定书中已明确为同等责任，并经过了复核，是合理合法的。死者驾驶加装动力装置的人力三轮车，借道时未按规定让本道内的车辆或者行人优先通行，本身也有过错，超速行驶与要求承担主要责任之间缺乏关联性。责任到底是"五五开"还是"二八开"，昨天法院没有当庭宣判。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宁波市交警支队事故对策处的陆警官就本案曾专程到慈溪现场了解过情况。他表示，交警部门完全按规定做了自己该做的事情，至于最终车速鉴定会不会被采纳，那是法院的事情，他们不好评价。对于宁波何时导入"车速鉴定"概念，目前也只能做探讨。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"随着我国检测能力的逐步提高，车速鉴定结果应该成为各地交警部门认定事故责任的重要依据之一。"刘晓峰博士，上海一家研究院汽车工程和工程力学方面的专家，昨天他作为证人出现在了法庭上。据他了解，像在北京、天津等大城市，出了交通事故做车速鉴定已成常态，相关机构的车速鉴定技术也已经非常成熟。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"我们是半年前在一个'交通事故咨询'ＱＱ群上偶然认识的，这次来主要是被小高的执着所感动，能帮就帮她一下。"刘晓峰博士说。（记者 王霞开）
        </p>
        <p align="center">    <img src="http://www.shiguwen.com/images/xcbd/x-1.png" alt=""  width="340px;" height="400px;"></p>
        <p>
            原文地址：<a href="http://daily.cnnb.com.cn/nbwb/html/2010-01/06/content_154898.htm" target="_blank" style="color: #1a74ba;">http://daily.cnnb.com.cn/nbwb/html/2010-01/06/content_154898.htm</a>
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>