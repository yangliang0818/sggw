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
        <h3 style="color: #ab7c12">医疗纠纷，为何需要专家帮助维权？</h3>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、医疗纠纷打官司聘请律师费用高，处理时间长，所以应首选调解，调解不成再打官司。但医学问题的专业性强，当事人无法证明医院的过错程度与应该赔偿的金额，无论是调解还是打官司都处于弱势，很难取得好的效果。而法医鉴定专家可以对医院的过错程度与赔偿金额给出专业的依据，帮助争取尽量多的赔偿。当事人额外得到的赔偿要远远大于支付给专家的费用。
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、没有专家的帮助，拿不出专业的证据，维权很容易变成“医闹”，有理也变成了无理。目前对医闹的打击力度越来越大，靠医闹达到目的越来越难。（<font
                style="color: red"><B>2014年4月22日，最高人民法院、最高人民检察院、公安部、司法部、国家卫生和计划生育委员会联合发布《关于依法惩处涉医违法犯罪维护正常医疗秩序的意见》</B></font>）
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、如果做医疗事故鉴定，由于鉴定机构与医院同属卫生系统，彼此有关系，因此鉴定结果往往偏向医院。有了专家的介入，可以对鉴定机构起到约束作用，防止鉴定机构胡乱进行鉴定，对当事人不利。
        </p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>