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
    <script type="text/javascript" src="http://www.shiguwen.com/js/area.js"></script>
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.js"></script>
    <script type="text/javascript" src="http://www.shiguwen.com/js/jquery.mobile-1.4.0-rc.1.min.js"></script>
    <!--图片轮播插件-->
    <script src="http://unslider.com/unslider.min.js"></script>
    <script type="text/javascript">
        $(function () {
            /*轮播效果*/
            $('.banner').unslider({
                speed: 500,
                delay: 3000,
                keys: true,
                dots: true,
                fluid: false
            });
            /*下拉菜单效果*/
            $(".ui-block-a:eq(0),.ui-block-b:eq(0),.ui-block-c:eq(0),.ui-block-d:eq(0),.ui-block-e:eq(0)").hover(function () {
                $(this).find("ul").removeClass("ui-grid-c").show();
            }, function () { $(this).find("ul").hide(); });
        });
        function needhelp() {
            with (document.forms[0]) {
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
<body onload="setup();">
<form action="" method="post">
<div data-role="page">
    <!--网站标题及相关导航-->
    <div id="head" data-role="header" data-theme="b">
        <jsp:include page="head.jsp" flush="false"></jsp:include>
    </div>

    <!--轮播图片,直接替换li元素即可-->
    <div class="ui-content" role="main" style="padding-top:0px;">
       <%-- <div class="banner">
            <ul>
                <li><img src="http://www.shiguwen.com/images/slideshow_01.jpg" alt="image"></li>
                <li><img src="http://www.shiguwen.com/images/slideshow_02.jpg" alt="image"></li>
                <li><img src="http://www.shiguwen.com/images/slideshow_03.jpg" alt="image"></li>
            </ul>
        </div>--%>
          <ul data-role="listview" data-split-icon="gear" data-inset="true">
           <li><a href="wm.html" rel="external">
               <div class="menuinfo">
                   <font size="2">事故问是首个专业的事故处理第三方服务平台，平台致力于降低大众的维权门槛，让每个人都有条件维权，都能够更好的维权。事故问关注领域除了医疗事故、交通事故、工伤事故等狭义上的事故之外，还包括刑事案件等广义上的带有突发性特点的“事故”。事故问通过与专业可靠的律师、鉴定机构与鉴定专家深度合作，可以让您用更低的成本，获得更好的维权服务。</font>
                   <p align="right"><a href="wm.html" rel="external"><font size="2">了解详细</font></a></p>
               </div>
           </a>
           </li>
           </ul>
           <!--在线查询表单信息-->
        <div class="ui-bar ui-bar-a">
            <div class="ui-field-contain" style="width:100%; clear:both; margin-bottom:5px;">
                <select id="ntype" name="ntype">
                    <option value="问题咨询">问题咨询</option>
                    <option value="聘请律师">聘请律师</option>
                    <option value="委托鉴定">委托鉴定</option>
                    <option value="代为谈价">代为谈价</option>
                </select>
            </div>

            <%--<div class="ui-field-contain" style="width:100%; clear:both;margin-bottom:5px;">
                <select name="qtype">
                    <option value="交通事故">交通事故</option>
                    <option value="医疗事故">医疗事故</option>
                    <option value="DNA亲子">DNA亲子</option>
                    <option value="其他">其他</option>
                </select>
            </div>--%>

            <div class="ui-field-contain" style="width:100%; clear:both;margin-bottom:5px;">
                <%--<fieldset data-role="controlgroup" data-type="horizontal">
                    <select name="province" id="s1">
                        <option value="省份">省份</option>
                    </select>
                    <select name="city" id="s2">
                        <option value="城市">城市</option>
                    </select>
                    <select name="country" id="s3">
                        <option value="地区">地区</option>
                    </select>
                </fieldset>--%>
                <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-active" onclick="needhelp();">提交</a>
            </div>
        </div>
        <!--折叠菜单,标题+相关介绍显示方式-->
        <div data-role="collapsible-set" data-inset="false" data-content-theme="a" style="margin-top:15px">
            <div data-role="collapsible" data-collapsed="false" data-collapsed-icon="carat-r" data-expanded-icon="carat-d" data-iconpos="right">
                <h3>选择事故问的原因</h3>
                <p style="line-height:1.5; margin:0px;  height:auto;">
                    <img src="http://www.shiguwen.com/images/duigou.gif">专业的平台，专业的服务资源<br />
                    <img src="http://www.shiguwen.com/images/duigou.gif">大幅降低维权成本，让维权无负担<br />
                    <img src="http://www.shiguwen.com/images/duigou.gif">法律服务+鉴定服务，权益更有保障<br />
                    <img src="http://www.shiguwen.com/images/duigou.gif">服务质量第三方监督，无后顾之忧<br />
                    <img src="http://www.shiguwen.com/images/duigou.gif">服务全国、无地区限制<br />
                </p>
            </div>
        </div>


        <!--图标菜单,图标+特点介绍显示方式-->
        <ul data-role="listview" data-split-icon="gear" data-inset="true">
            <li><a href="jtsg.html" style="background:transparent url(http://www.shiguwen.com/images/web/jt.png) 97.5% center no-repeat;" rel="external">
                <img src="http://www.shiguwen.com/images/traffic_consult.jpg">
                <h2>交通事故专业问题咨询<div class="menuinfo">
                    ✔事故车速&nbsp;&nbsp;✔专业报告评估<br/>
                    ✔谁是驾驶员&nbsp;&nbsp;✔事故因果关系<br/>
                    ✔痕迹分析&nbsp;&nbsp;✔车辆故障与质量调查
                </div>
                </h2>

            </a>
            </li>

            <li><a href="fyjd.html" style="background:transparent url(http://www.shiguwen.com/images/web/jt.png) 97.5% center no-repeat;" rel="external">
                <img src="http://www.shiguwen.com/images/bruise_consult.jpg">
                <h2>人体医学问题咨询<div class="menuinfo">
                    ✔致伤(死)物认定&nbsp;✔医疗纠纷分析&nbsp;<br/>
                    ✔伤残等级分析&nbsp;✔死亡原因分析<br/>
                    ✔DNA亲子鉴定✔生前与死后伤分析
                </div>
                </h2>
            </a>
            </li>

            <li><a href="flss.html" style="background:transparent url(http://www.shiguwen.com/images/web/jt.png) 97.5% center no-repeat;" rel="external">
                <img src="http://www.shiguwen.com/images/lawyer_area.jpg">
                <h2>专业律师聘请<div class="menuinfo">
                    ✔费用更低&nbsp;✔服务质量监督<br/>
                    ✔律师在身边就有✔专家出庭服务<br/>
                    ✔事故处理专家免费咨询&nbsp;
                </div>
                </h2>

            </a>
            </li>
            <li style="background: #fff">
                <ul id="sfzwq">
                    <li><a href="dc.html" rel="external"><img src="http://www.shiguwen.com/images/duigou.gif">医疗纠纷处理现状及对策</a></li>
                    <li><a href="clwq.html" rel="external"><img src="http://www.shiguwen.com/images/duigou.gif">3分钟让你掌握事故处理维权</a></li>
                    <li><a href="swpcjjs.html" rel="external"><img src="http://www.shiguwen.com/images/duigou.gif">交通肇事致人死亡的赔偿金如何计算</a></li>
                    <li><a href="zjzxbg.html" rel="external"><img src="http://www.shiguwen.com/images/duigou.gif">专家咨询报告在事故处理中的价值</a></li>
                    <li><a href="zyry.html" rel="external"><img src="http://www.shiguwen.com/images/duigou.gif">交通事故为什么需要聘请专业人员处理</a></li>
                </ul>
            </li>
        </ul>

    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</form>
</body>
</html>
