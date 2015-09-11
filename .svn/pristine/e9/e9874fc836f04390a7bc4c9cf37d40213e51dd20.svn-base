<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <META name="keywords" content="伤残鉴定,伤残等级,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故鉴定、医疗事故鉴定咨询；争议性鉴定报告评估；专业律师委托；专家证人出庭。全方位事故处理专业服务，费用更低，权益更有保障。" />
    <link href="css/index.css" type="text/css" rel="stylesheet"/>
    <script src="js/script_gizp.js"></script>
    <script src="js/area.js"></script>
    <script type="text/javascript">
        //首先需要初始化省市
        var xmlDoc;
        var nodeIndex;
        function getxmlDoc() {
            xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
            var currNode;
            xmlDoc.async = false;
            xmlDoc.load("xml/Area.xml");
            if (xmlDoc.parseError.errorCode != 0) {
                var myErr = xmlDoc.parseError;
                alert("出错！" + myErr.reason);
            }
        }
        function Init() {
            //打开xlmdocm文档
            getxmlDoc();
            var dropElement1 = document.getElementById("Select1");
            var dropElement2 = document.getElementById("Select2");
            var dropElement3 = document.getElementById("Select3");
            RemoveDropDownList(dropElement1);
            RemoveDropDownList(dropElement2);
            RemoveDropDownList(dropElement3);
            var TopnodeList = xmlDoc.selectSingleNode("address").childNodes;
            if (TopnodeList.length > 0) {
                //省份列表
                var country;
                var province;
                var city;
                for (var i = 0; i < TopnodeList.length; i++) {
                    //添加列表项目
                    country = TopnodeList[i];
                    var eOption = document.createElement("option");
                    eOption.value = country.getAttribute("name");
                    eOption.text = country.getAttribute("name");
                    dropElement1.add(eOption);
                }
                if (TopnodeList[0].childNodes.length > 0) {
                    //城市列表
                    for (var i = 0; i < TopnodeList[0].childNodes.length; i++) {
                        var id = dropElement1.options[0].value;
                        //默认为第一个省份的城市
                        province = TopnodeList[0];
                        var eOption = document.createElement("option");
                        eOption.value = province.childNodes[i].getAttribute("name");
                        eOption.text = province.childNodes[i].getAttribute("name");
                        dropElement2.add(eOption);
                    }
                    if (TopnodeList[0].childNodes[0].childNodes.length > 0) {
                        //县列表
                        for (var i = 0; i < TopnodeList[0].childNodes[0].childNodes.length; i++) {
                            var id = dropElement2.options[0].value;
                            //默认为第一个城市的第一个县列表
                            city = TopnodeList[0].childNodes[0];
                            var eOption = document.createElement("option");
                            eOption.value = city.childNodes[i].getAttribute("name");
                            eOption.text = city.childNodes[i].getAttribute("name");
                            this.document.getElementById("Select3").add(eOption);
                        }
                    }
                }
            }
        }
        function selectCity() {
            var dropElement1 = document.getElementById("Select1");
            var name = dropElement1.options[dropElement1.selectedIndex].value;
            //alert(id);
            var countryNodes = xmlDoc.selectSingleNode('//address/province [@name="' + name + '"]');
            //alert(countryNodes.childNodes.length);
            var province = document.getElementById("Select2");
            var city = document.getElementById("Select3");
            RemoveDropDownList(province);
            RemoveDropDownList(city);
            if (countryNodes.childNodes.length > 0) {
                //填充城市
                for (var i = 0; i < countryNodes.childNodes.length; i++) {
                    var provinceNode = countryNodes.childNodes[i];
                    var eOption = document.createElement("option");
                    eOption.value = provinceNode.getAttribute("name");
                    eOption.text = provinceNode.getAttribute("name");
                    province.add(eOption);
                }
                if (countryNodes.childNodes[0].childNodes.length > 0) {
                    //填充选择省份的第一个城市的县列表
                    for (var i = 0; i < countryNodes.childNodes[0].childNodes.length; i++) {
                        //alert("i="+i+"\r\n"+"length="+countryNodes.childNodes[0].childNodes.length+"\r\n");
                        var dropElement2 = document.getElementById("Select2");
                        var dropElement3 = document.getElementById("Select3");
                        //取当天省份下第一个城市列表
                        var cityNode = countryNodes.childNodes[0];
                        //alert(cityNode.childNodes.length);
                        var eOption = document.createElement("option");
                        eOption.value = cityNode.childNodes[i].getAttribute("name");
                        eOption.text = cityNode.childNodes[i].getAttribute("name");
                        dropElement3.add(eOption);
                    }
                }
            }
        }
        function selectCountry() {
            var dropElement2 = document.getElementById("Select2");
            var name = dropElement2.options[dropElement2.selectedIndex].value;
            var provinceNode = xmlDoc.selectSingleNode('//address/province/city[@name="' + name + '"]');
            var city = document.getElementById("Select3");
            RemoveDropDownList(city);
            for (var i = 0; i < provinceNode.childNodes.length; i++) {
                var cityNode = provinceNode.childNodes[i];
                var eOption = document.createElement("option");
                eOption.value = cityNode.getAttribute("name");
                eOption.text = cityNode.getAttribute("name");
                city.add(eOption);
            }
        }
        function RemoveDropDownList(obj) {
            if (obj) {
                var len = obj.options.length;
                if (len > 0) {
                    //alert(len);
                    for (var i = len; i >= 0; i--) {
                        obj.remove(i);
                    }
                }
            }

        }
        function needhelp() {
            with (document.forms[0]) {
                target="_blank";
                //分两种情况投诉建议跳转到tsjy.jsp页面 其他跳转到needhelp.jsp页面
                if (document.getElementById("ntype").selectedIndex != 4) {
                    action = "needhelp.html";
                } else {
                    action = "tsjy.html";
                    submit();
                }
                submit();
            }
        }
    </script>
</head>
<body onLoad="setup();">
<!--header begin -->
<jsp:include page="head.jsp?menuid=m1" flush="false"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
<!-- part01 begin-->
<div class="cols part01" style="height: 350px;">
    <!-- left begin-->
    <div class="findbox">
        <div class="searchform">
            <form name="" action="" method="post">
                <div class="formItem cols">
                    <div class="option">
                        <label>所需帮助</label>

                        <div class="selectBox">
                            <select class="select" name="ntype" id="ntype">
                                <option>问题咨询</option>
                                <option>聘请律师</option>
                                <option>委托鉴定</option>
                                <option>投诉建议</option>
                                <option>其他</option>
                            </select>
                        </div>
                    </div>
                    <div class="option">
                        <label>问题分类</label>

                        <div class="selectBox">
                            <select class="select" name="qtype">
                                <option value="交通事故">交通事故</option>
                                <option value="医疗事故">医疗事故</option>
                                <option value="DNA亲子">DNA亲子</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="formItem">
                    <div class="option">
                        <label>所在地区</label>
                            <span>
                                 <select id="s1" name="province" runat="server"
                                         class="myselect">
                                 </select>
                                <em>省</em>
                            </span>
                            <span>
                                  <select id="s2" name="city" runat="server"
                                          class="myselect">
                                  </select>
                                <em>市</em>
                            </span>
                            <span>
                               <select id="s3" name="country" runat="server" class="myselect">
                               </select>
                               <em>区/县</em>
                            </span>
                    </div>
                </div>
                <p class="controlbar"><input type="button" onClick="needhelp();" class="btn_config" value=""/></p>
        </div>
        <div class="service_intro">
            <ul class="txtlist cols">
                <li>
                    <h6>更低的费用</h6>

                    <p>通过事故问获得专业服务，费用100%优惠；还有额外费用返还</p>
                </li>
                <li>
                    <h6>更好的保障</h6>

                    <p>专家律师与事故处理专家联合提供全方位服务，权益更有保障</p>
                </li>
            </ul>
            <p class="linkmore"><a href="knowmore.html" title="了解详情" class="btn_link" rel="nofollow" target="_blank"><font
                    style="font-family: '微软雅黑';font-size: 14px;">了解详情</font></a></p>
        </div>
    </div>
    <!-- right begin-->
    <div class="recommbox">
        <%--<p class="areaFont" style="color: #FFFFFF">
            访客信息：&nbsp;${session.ToDayCN}
        </p>
        <MARQUEE scrollamount="2" width="460">
            <p style="background: #FFFFFF;color: #9b6c01" class="areaFont">
                <s:iterator value="#session.Vistors" var="needHelpBean" status="var">
                    <s:set name="havaresult" value="true"></s:set>
                    <B>
                        <img src="images/fg.jpg" alt="" height="18px;">
                        ${needHelpBean.hh}点${needHelpBean.mm}分,
                        来自${needHelpBean.province}的${needHelpBean.name}提交了一个${needHelpBean.ntype}需求
                        &nbsp;&nbsp;
                    </B>
                </s:iterator>
            </p>
        </MARQUEE>
        <s:if test="#havaresult!=true">
            <p style="background: #FFFFFF;color: #9b6c01;" class="areaFont" align="center">
                <B>暂无访客</B>
            </p>
        </s:if>--%>
        <div class="slideshow" mod-type="SlideShow" mod-config="speed:300;" style="height: 270px;">
            <div class="imgbox" mod-comp="SlideShow-Viewport">
                <ul class="cols" mod-comp="SlideShow-Content">
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="images/slideshow_01.jpg" alt="" width="460"
                                                                                                           height="270"/></a></li>
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="images/slideshow_02.jpg" alt="" width="460"
                                                                                                           height="270"/></a></li>
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="images/slideshow_03.jpg" alt="" width="460"
                                                                                                           height="270"/></a></li>
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="images/slideshow_05.jpg" alt="" width="460"
                                                                                                           height="270"/></a></li>
                </ul>
            </div>
            <div class="triggle_bar" mod-comp="SlideShow-Triggle">
                <a href="#" class="on" mod-comp="SlideShow-Triggle-Item" rel="nofollow" target="_blank">1</a>
                <a href="#" mod-comp="SlideShow-Triggle-Item" rel="nofollow" target="_blank">2</a>
                <a href="#" mod-comp="SlideShow-Triggle-Item" rel="nofollow" target="_blank">3</a>
                <a href="#" mod-comp="SlideShow-Triggle-Item" rel="nofollow" target="_blank">4</a>
                <%-- <a href="#" mod-comp="SlideShow-Triggle-Item">5</a>--%>
            </div>
        </div>
        <div class="tips">
            <div class="emphasize cols">
                <span style="font-family: '微软雅黑'">已通过事故问聘请专业律师？</span>

                <div class="clickhere">
                    <p>
                        <embed src="images/click.swf" height="25" width="110" allowscriptaccess="always" wmode="Opaque"
                               allowfullscreen="true"></embed>
                    </p>
                    <p class="linkmore"><a href="djls.html" rel="nofollow" target="_blank">&nbsp;</a></p>
                </div>
                <span style="font-family: '微软雅黑'">进行登记，</span>
            </div>
            <p>享受事故问提供的所有保障!</p>
        </div>
    </div>
</div>
<!-- part02 begin-->
<div class="part02 cols">
    <div class="chooseReason" style="height: 242px;">
        <h6>选择事故问的原因</h6>
        <ul class="txtlist">
            <li style="font-family: '微软雅黑';font-size: 14px;">整合了国内优秀鉴定机构，可解决各种专业性问题</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">"跨专业、跨机构"专家资源，复杂争议性问题处理更有力度</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">专业律师+专业机构+专家证人，理赔诉讼一站式服务，效果更好</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">事故问对合作方的服务质量提供多方面保障</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">通过事故问获得专业服务，您将支付更低的费用</li>
        </ul>
    </div>
    <div class="companyIntro">
        <p class="intro" style="padding-left: 0px;">
            <img src="images/logo.jpg" alt="" width="79" style="float: left;margin: 0px;padding: 0px;"/>是一个提供全方位事故处理服务的网站。网站整合了全国各地的事故鉴定机构、事故鉴定专家、专业律师等资源。 通过事故问，可以委托鉴定机构进行事故鉴定、聘请专业律师、咨询事故处理中的各种专业性问题、获得专家证人出庭支持等。 事故问以“更低的费用，更好的保障”为使命，致力于打造一个专业、超值、可信赖的“一站式”事故处理服务平台。</p>

        <p class="linkmore" style="font-size: 15px;"><a href="wzjj.html" rel="nofollow" target="_blank">点击进入&gt;&gt;</a></p>
    </div>
</div>
<!-- part03 begin-->
<div class="part03 cols">
    <div class="traffic_consult" style="height: 231px;width: 512px;">
        <div style="width:253px; float: left;">
            <h6 class="mb_hd" style="font-size: 15px;">交通事故专业问题咨询</h6>

            <div class="bd">
                <%--<p class="imgbox"><img src="images/traffic_consult.jpg" alt="" width="90" height="90"/></p>--%>
                <ul class="txtlist" style="font-size: 15px;padding-left: 10px;">
                    <li>事故车速</li>
                    <li>痕迹分析</li>
                    <li>事故因果关系</li>
                    <li>谁是驾驶员</li>
                    <li>专业报告评估</li>
                    <li>车辆故障与质量问题调查</li>
                </ul>
            </div>
            <p class="linkmore" style="margin-top: 16px;font-size: 15px;"><a href="jtsg.html" title="" rel="nofollow" target="_blank">点击进入&gt;&gt;</a></p>
        </div>
        <div>
            <h6 class="mb_hd" style="font-size: 15px;">人体医学问题咨询</h6>

            <div class="bd">
                <%--<p class="imgbox"><img src="images/bruise_consult.jpg" alt="" width="90" height="90"/></p>--%>
                <ul class="txtlist" style="font-size: 15px;padding-left: 10px;">
                    <li>伤残等级分析</li>
                    <li>医疗纠纷分析</li>
                    <li>DNA亲子鉴定</li>
                    <li>死亡或受伤原因分析</li>
                    <li>致伤（死）物认定</li>
                    <li>生前伤与死后伤分析，等</li>
                </ul>
            </div>
            <p class="linkmore" style="margin-top: 16px;font-size: 15px;"><a href="fyjd.html" title="" rel="nofollow" target="_blank">点击进入&gt;&gt;</a></p>
        </div>
    </div>
    <div class="key_knowledge" style="height: 231px;">
        <h6 class="mb_hd">为更好获得帮助，以下知识对您很重要</h6>
        <ul class="txtlist">
            <li><a href="swpc/swpcjjs.html" rel="nofollow" target="_blank">交通肇事致人死亡的赔偿金如何计算？</a><img src="images/re.gif"></li>
            <li><a href="swpc/swpcxe.html" rel="nofollow" target="_blank">交强险中的"死亡伤残赔偿限额"不应以受害人</a></li>
            <li><a href="zjzxbg.html" rel="nofollow" target="_blank">专家咨询报告在事故处理中的价值&nbsp;&nbsp;</a></li>
            <li><a href="zyry.html" rel="nofollow" target="_blank">交通事故为什么需要聘请专业人员处理</a></li>
            <li><a href="zyjs.html" rel="nofollow" target="_blank">专业技术在交通事故处理中的作用</a></li>
            <li><a href="fxcs.html" rel="nofollow" target="_blank">交通事故责任认定为何要分析车速</a></li>
        </ul>
        <p class="linkmore" style="font-size: 15px;margin-top: 12px;"><a href="morearea.html" title="" rel="nofollow" target="_blank">更多知识&gt;&gt;</a></p>
    </div>
</div>
<div class="part05 cols"  style="margin-left: 0px;">
    <div style="width: 232px;float: left;">
        <div class="reception_center" style="height: 546px;margin-bottom: 10px;">
            <div class="key_knowledge" style="border: 0px solid #000000;width: 513px;margin-left: 0px;height: 270px;">
                <h6 class="mb_hd">人身损害问题专栏</h6>
                <img src="images/scdj.jpg" alt="" width="86px;" height="86px;" style="float: left;margin-top:28px;margin-right: 15px;margin-left: 10px;margin-bottom: 40px;">
                <ul class="txtlist">
                    <s:iterator value="#session.RTSHLinkList" var="rtshLink" status="var">
                        <s:if test="#var.isFirst()">
                            <li class="liclass"><a href="${rtshLink.link}" rel="nofollow" target="_blank">${rtshLink.name}&nbsp;&nbsp;</a><img src="images/re.gif"></li>
                        </s:if>
                        <s:else>
                            <li class="liclass"><a href="${rtshLink.link}" rel="nofollow" target="_blank">${rtshLink.name}</a></li>
                        </s:else>
                    </s:iterator>
                </ul>
                <p class="linkmore" style="font-size: 15px;margin-top: 25px;"><a href="morescjd.1.html" title="" rel="nofollow" target="_blank">更多知识&gt;&gt;</a></p>
            </div>
            <div class="key_knowledge" style="border: 0px solid #000000;width: 513px;margin-left: 0px;">
                <h6 class="mb_hd">交通事故问题专栏</h6>
                <img src="images/txtpic1.jpg" alt="" width="86px;" height="86px;" style="float: left;margin-top:28px;margin-right: 15px;margin-left: 10px;margin-bottom: 40px;">
                <ul class="txtlist">
                    <s:iterator value="#session.JTSGLinkList" var="jtsgLink" status="var">
                        <s:if test="#var.isFirst()">
                            <li class="liclass"><a href="${jtsgLink.link}" rel="nofollow" target="_blank">${jtsgLink.name}&nbsp;&nbsp;</a><img src="images/re.gif"></li>
                        </s:if>
                        <s:else>
                            <li class="liclass"><a href="${jtsgLink.link}" rel="nofollow" target="_blank">${jtsgLink.name}</a></li>
                        </s:else>
                    </s:iterator>
                </ul>
                <p class="linkmore" style="font-size: 15px;margin-top: 25px;"><a href="morejtsg.1.html" title="" rel="nofollow" target="_blank">更多知识&gt;&gt;</a></p>
            </div>
        </div>
    </div>
    <div class="key_knowledge" style="height: 546px;margin-left: 288px;">
        <h6 class="mb_hd">最新咨询&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <a href="newasklist.1.html"><font color="#FFFFFF">更多咨询&gt;&gt;</font></a></h6>
        <jsp:include page="newask.jsp" flush="false"></jsp:include>
    </div>
</div>
</div>
<!-- footer begin-->
<jsp:include page="footer.jsp"></jsp:include>
</form>
</body>
</html>
