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
    <script src="js/script_gizp.js"></script>
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <SCRIPT language=javascript type=text/javascript>
        function document.onkeydown() {
            var button = document.getElementById('btnSearch');

            if (event.keyCode == 13) {
                button.click();
                event.returnValue = false;
            }
        }

        function addShiguwen() {
            with (document.forms[0]) {
                if (phone.value == '') {
                    alert('联系电话不能为空!');
                    return;
                }
                if (content.value == '') {
                    alert('案情简述不能为空!');
                    return;
                }
                if (yzm.value == '') {
                    alert('验证码不能为空!');
                    return;
                }
                submit();
            }
        }
        function checkYzm() {
            var message = '${AlertMessage}';
            if (message != null && message != '') {
                alert(message);
                return;
            }
        }
    </SCRIPT>
</head>
<BODY onload="checkYzm()">
<FORM id=form1 method=post name=form1 action="shiguwen!addShiguwen.action">
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
                    更低的费用,更好的保障
                </div>
                <div class="aticle">
                    <h5>
                        更低的费用,更好的保障
                    </h5>
                    <p >
                        <strong>更低的费用</strong>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	通过事故问获得合作方提供的专业法律服务与专业技术服务，服务费用100%优惠*。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	通过事故问聘请专业律师，若因律师的服务质量影响到最终服务结果，一经核实，事故问将向客户提供额外补偿，最高一万元**。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">*  为获得本项优惠，请在问题咨询及合同签订前主动向事故问合作方提出。</font>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">**  为获得本项优惠，请在聘请律师后及时<a href="djls.html" style="color: blue;"><u><B>点此登记</B></u></a>。</font>
                    </p>
                    <p >
                        <strong>更好的保障</strong>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事故问整合了专业律师、事故处理专家与事故鉴定机构，可根据案情所需，提供法律服务、事故鉴定服务、鉴定报告评估、专家证人出庭等全方位服务。各种服务有机结合，令诉讼理赔更有力度，合法权益更有保障。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	通过事故问聘请专业律师，如客户对律师的业务能力或服务态度有任何意见，可通过<a href="tsjy.html" style="color: blue;"><u><B>投诉建议</B></u></a>进行反映，我们将在第一时间获知，并及时对合作律师予以督促*。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	对于事故问合作机构提供的专业鉴定，若客户对鉴定结论有异议，事故问可免费对鉴定报告进行评估，确保客户得到严谨、准确的鉴定结果。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;•	对于复杂的、具有争议的事故，事故问可借助"跨领域、跨机构"的专业资源，为客户提供融合法律与技术的"一站式"服务，依靠这些专业资源的综合实力，最大程度保障客户的合法权益。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">* 为获得本项优惠，请在聘请律师后及时<a href="djls.html" style="color: blue;"><u><B>点此登记</B></u></a>。</font>
                    </p>
                </div>
                <div style="border: 1px solid;border-color: #ddd; height: 170px;">
                    <jsp:include page="interest.jsp?pagename=zyfx" flush="false"></jsp:include>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</form>
</body>
</html>
