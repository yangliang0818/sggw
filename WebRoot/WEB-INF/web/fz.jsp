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
            }, function () {
                $(this).find("ul").hide();
            });
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
        <h3 style="color: #ab7c12">鉴定"看不懂"？专家来辅助</h3>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;此为江门首例 有助于更好理解专业问题认定事实。</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本报讯 （记者陈杰 通讯员张妙玲、区洁芳）打官司，除了双方当事人、律师以外，还有医疗事故鉴定人和专家辅助人。近日新会法院审理一起医疗事故案件时，为原告提供医疗事故鉴定的鉴定机构代表以及被告医院方面申请的专家辅助人双双出现在法庭上，为案件中导致患者死亡的原因进行专业对质，这也是江门首宗鉴定人和专家辅助人出庭对质案件。</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;患者死亡鉴定称医院存过错因为心血管发病，2012年年底，新会一患者被家属送往新会某医院就诊，医院诊断建议对患者实施心血管支架植入术，没想到在手术过程中，患者出现并发症死亡。</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;患者死亡后，其家属认为是医院诊疗不当造成患者死亡事故，找了医疗事故鉴定机构对死者死亡原因进行鉴定。鉴定意见认为，医院在对患者进行手术时，选用的支架的直径明显大于患者病变段血管直径，导致患者在手术中出现并发症死亡，认定医院方面存在过错。
        </p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于死者家属出具的医疗事故鉴定结果，医院方面表示异议，也向法院申请一心血管内科专家医生作为专家辅助人，为医院在出庭时提供专业帮助。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医院申请辅助人与鉴定人庭上对质,8月19日，新会法院开庭审理该案，庭审前，被告医院方面提出，由于院方对鉴定结果有异议，向法庭申请鉴定人出庭接受对质。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;庭审中，鉴定机构就其鉴定资质、鉴定具体程序、鉴定意见作出的科学技术理论依据、标准以及鉴定意见具体内容作了详细的陈述。原告（死者家属）和被告（医院）分别对鉴定意见发表质证意见，专家辅助人则就鉴定意见也提出了专业的质证意见，并现场播放幻灯片讲解如何确定植入支架的直径。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随后，双方当事人及专家辅助人在合议庭的指引下有序地对鉴定人进行了询问。
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;知多D为帮助法官更好理解专业问题并认定事实，新修改的《民事诉讼法》引入了可以对鉴定意见提出异议和专业提问的专家辅助人出庭制度。新会法院法官称，专家辅助人的出庭在江门还是第一例，有助于增加案件审判的公正。
        </p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(来源:广州日报)</p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>