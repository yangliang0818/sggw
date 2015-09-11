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
    <link href="css/index.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript">
        //首先需要初始化
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
        function addLsInfo() {
            with (document.forms[0]) {
                if (name.value == '') {
                    alert('姓名不能为空!');
                    return;
                }
                if (phone.value == '') {
                    alert('联系电话不能为空!');
                    return;
                }
                if(!Checkreg()){
                    return false;
                }
                if (lsname.value == '') {
                    alert('聘请律师姓名不能为空!');
                    return;
                }
                if (yzm.value == '') {
                    alert('验证码不能为空!');
                    return;
                }
                var obj = document.getElementById("yzmframe").contentWindow;
                var randomCode = obj.document.getElementById("randomCode");
                if (yzm.value != randomCode.value) {
                    alert('验证码输入错误,请重新输入');
                    yzm.value = "";
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
        function Checkreg() {
            with (document.forms[0]) {
                var p1 = /^([0-9-]+)$/;
                var me = false;
                if (p1.test(phone.value))
                {
                    me = true;
                }
                if (!me) {
                    phone.value = '';
                    alert('对不起，您输入的联系电话含有非法字符,只接受数字和横线！');
                    phone.focus();
                    return false;
                }
            }
            return true;
        }
    </script>
</head>
<body onload="checkYzm();Init();">
<FORM id=form1 method=post name=form1 action="addls.html">
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
                    聘请律师登记
                </div>
                <div class="aticle">
                    <h5>
                        聘请律师登记
                    </h5>

                    <p>
                    <table align="center" style="line-height: 40px;">
                        <tr>
                            <td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <input name="name" type="text"  value="${name}" class="inputclass"
                                       style="width:160px;height: 20px;"/><font color="red" style="margin-right: 20px;">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>联系电话</td>
                            <td>
                                <input name="phone" type="text" value="${phone}"  class="inputclass"
                                       style="width:160px;height: 20px;"/><font color="red" style="margin-right: 20px;">*只能输入数字和横线</font>
                            </td>
                        </tr>
                        <tr>
                            <td>律师姓名</td>
                            <td>
                                <input name="lsname" type="text" value="${lsname}" class="inputclass"
                                       style="width:160px;height: 20px;"/><font color="red" style="margin-right: 20px;">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                所在地区
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <select id="Select1" name="province" runat="server" onchange="selectCity();"
                                                    class="myselect">
                                                <option value="" selected="true">省/直辖市</option>
                                            </select>
                                        </td>
                                        <td>
                                            省
                                        </td>
                                        <td>
                                            <select id="Select2" name="city" runat="server" onchange="selectCountry()"
                                                    class="myselect">
                                                <option value="" selected="true">请选择</option>
                                            </select>
                                        </td>
                                        <td>
                                            市
                                        </td>
                                        <td>
                                            <select id="Select3" name="country" runat="server" class="myselect">
                                                <option value="" selected="true">请选择</option>
                                            </select>
                                        </td>
                                        <td>
                                            区/县
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                验证码
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <input name="yzm" type="text"  class="inputclass"
                                                   style="width:160px;height: 20px;"/>
                                        </td>
                                        <td>
                                            <font color="red" style="margin-right: 20px;">*</font>
                                        </td>
                                        <td>
                                            <img name="id" id="validateImg"
                                                 src="yzm.action?sessionId=MessageDjlsCode"
                                                 width="100px;" height="20px;"
                                                 border="0"/>
                                            <iframe id="yzmframe" src="getyzm.html?sessionId=MessageDjlsCode"
                                                    width="0" height="0"></iframe>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top">&nbsp;</td>
                            <td align="left" class="areaFont">
                                <input type="button" value="提 交" onclick="addLsInfo()"
                                       style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px; width:100px;background-color: #473505;color: #ffffff;"/>
                                <input type="reset" value="重 置"
                                       style="font-family:'微软雅黑';font-size:14px; font-weight:bold; height:35px; width:100px;background-color: #473505;color: #ffffff;"/>
                            </td>
                        </tr>
                    </table>
                    </p>
                    <p style="margin-left: 210px;">
                        <a href="knowmore.html"><u><B>为何要登记？</B></u></a>
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
