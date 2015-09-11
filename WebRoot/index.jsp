﻿<%@ page import="com.sggw.web.SggwAction" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>交通事故_医疗事故_伤残鉴定_事故咨询_事故问-遇到事故你就问</title>
    <meta name="keywords" content="交通事故,医疗事故,伤残鉴定,事故咨询">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故、交通事故鉴定、医疗事故鉴定咨询;争议性鉴定报告评估;专业律师委托;专家证人出庭.全方位事故处理专业服务,费用更低,权益更有保障." />
    <link href="http://www.shiguwen.com/css/index.css" type="text/css" rel="stylesheet"/>
    <script src="http://www.shiguwen.com/js/script_gizp.js"></script>
    <script src="http://www.shiguwen.com/js/area.js"></script>
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
        function init(){
            if('${fristIndex}'!=1){
                document.forms[0].action="index!init.action";
                document.forms[0].submit();
            }
        }
    </script>
</head>
<body onLoad="setup();">
<!--header begin -->
<jsp:include page="/WEB-INF/head.jsp?menuid=m1" flush="false"></jsp:include>
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
                                <option>代为谈价</option>
                            </select>
                        </div>
                    </div>
                    <div class="option">
                        <label>问题分类</label>

                        <div class="selectBox">
                            <select class="select" name="qtype">
                                <option value="交通事故">交通事故</option>
                                <option value="医疗事故">医疗事故</option>
                                <%--<option value="DNA亲子">DNA亲子</option>--%>
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
        <div class="service_intro" style="height: 380px;">
            <ul class="txtlist cols">
                <li>
                    <h6>更低的费用</h6>

                    <p>提供低成本甚至零成本的维权方案，"有钱没钱，都能维权"</p>
                </li>
                <li>
                    <h6>更好的保障</h6>

                    <p>专业律师与专业鉴定机构一站式服务；服务质量第三方监督</p>
                </li>
            </ul>
           <%-- <p class="linkmore"><a href="knowmore.html" title="了解详情" class="btn_link" rel="nofollow" target="_blank"><font
                    style="font-family: '微软雅黑';font-size: 14px;">了解详情</font></a></p>--%>
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
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="http://www.shiguwen.com/images/slideshow_01.jpg" alt="" width="460"
                                                                                                                        height="270"/></a></li>
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="http://www.shiguwen.com/images/slideshow_02.jpg" alt="" width="460"
                                                                                                                        height="270"/></a></li>
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="http://www.shiguwen.com/images/slideshow_03.jpg" alt="" width="460"
                                                                                                                        height="270"/></a></li>
                    <li mod-comp="SlideShow-Item"><a href="http://www.shiguwen.com" rel="nofollow" target="_blank"><img src="http://www.shiguwen.com/images/slideshow_041.jpg" alt="" width="460"
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
                        <embed src="http://www.shiguwen.com/images/click.swf" height="25" width="110" allowscriptaccess="always" wmode="Opaque"
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
            <li style="font-family: '微软雅黑';font-size: 14px;">专业的平台，专业的服务资源</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">大幅降低维权成本，让维权无负担</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">法律服务+鉴定服务，权益更有保障</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">服务质量第三方监督，无后顾之忧</li>
            <li style="font-family: '微软雅黑';font-size: 14px;">服务全国、无地区限制</li>
        </ul>
    </div>
    <div class="companyIntro">
        <p class="intro" style="padding-left: 8px;margin-bottom: 0px;">
            <img src="http://www.shiguwen.com/images/logo.jpg" alt="" width="79" style="float: left;margin: 0px;padding: 0px;"/>是首个专业的事故处理第三方服务平台，平台致力于降低大众的维权门槛，让每个人都有条件维权，都能够更好的维权。事故问关注领域除了医疗事故、交通事故、工伤事故等狭义上的事故之外，还包括刑事案件等广义上的带有突发性特点的“事故”。事故问通过与专业可靠的律师、鉴定机构与鉴定专家深度合作，可以让您用更低的成本，获得更好的维权服务。
        </p>
        <p class="linkmore" style="font-size: 15px;"><a href="wm.html" rel="nofollow" target="_blank" style="color: #ab7c12;">点击进入&gt;&gt;</a></p>
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
                    <li><a href="jtsgzx.html">事故车速</a></li>
                    <li><a href="jtsgzx.html">痕迹分析</a></li>
                    <li><a href="jtsgzx.html">事故因果关系</a></li>
                    <li><a href="jtsgzx.html">谁是驾驶员</a></li>
                    <li><a href="jtsgzx.html">专业报告评估</a></li>
                    <li><a href="jtsgzx.html">车辆故障与质量问题调查</a></li>
                </ul>
            </div>
            <p class="linkmore" style="margin-top: 16px;font-size: 15px;"><a href="jtsgzx.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>点击进入&gt;&gt;</B></a></p>
        </div>
        <div>
            <h6 class="mb_hd" style="font-size: 15px;">医疗事故/人身损害问题咨询
            </h6>
            <div class="bd">
                <%--<p class="imgbox"><img src="images/bruise_consult.jpg" alt="" width="90" height="90"/></p>--%>
                <ul class="txtlist" style="font-size: 15px;padding-left: 10px;">
                    <li><a href="fyjd.html">医疗过错及参与度分析</a></li>
                    <li><a href="fyjd.html">伤残等级分析</a></li>
                    <li><a href="fyjd.html">伤情分析</a></li>
                    <li><a href="fyjd.html">死亡或受伤原因分析</a></li>
                    <li><a href="fyjd.html">致伤（死）物认定</a></li>
                    <li><a href="fyjd.html">生前伤与死后伤分析，等</a></li>
                </ul>
            </div>
            <p class="linkmore" style="margin-top: 16px;font-size: 15px;"><a href="fyjd.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>点击进入&gt;&gt;</B></a></p>
        </div>
    </div>
    <div class="key_knowledge" style="height: 231px;">
        <h6 class="mb_hd">为更好获得帮助，以下知识对您很重要</h6>
        <ul class="txtlist">
            <li><a href="gs.html" rel="nofollow" target="_blank">高速公路事故处理：找出“隐性第三方责任人”</a><img src="http://www.shiguwen.com/images/re.gif"></li>
            <li><a href="dc.html" rel="nofollow" target="_blank">医疗纠纷处理现状及对策</a></li>
            <li><a href="byx.html" rel="nofollow" target="_blank">医学鉴定前期评估的必要性</a></li>
            <li><a href="zjzxbg.html" rel="nofollow" target="_blank">专家咨询报告在事故处理中的价值</a></li>
            <li><a href="ylcxyj.html" rel="nofollow" target="_blank">关于依法惩处涉医违法犯罪维护正常医疗秩序的意见</a></li>
            <li><a href="swpc/swpcjjs.html" rel="nofollow" target="_blank">交通肇事致人死亡的赔偿金如何计算？</a></li>
        </ul>
        <p class="linkmore" style="font-size: 15px;margin-top: 12px;"><a href="morearea.html" title="" rel="nofollow" target="_blank" style="color: #ab7c12;"><B>更多知识&gt;&gt;</a></p>
    </div>
</div>
<iframe src="indexframe!init.action" width="985px;" height="817px;"  scrolling="no" frameborder="0px;"></iframe>
</div>
<!-- footer begin-->
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</form>
</body>
</html>