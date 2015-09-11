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
    <meta name="keywords" content="伤残鉴定,伤残等级,交通事故,交通事故鉴定,医疗事故鉴定">
    <meta name="description" content="伤残鉴定、伤残等级、交通事故、交通事故鉴定、医疗事故鉴定咨询;争议性鉴定报告评估;专业律师委托;专家证人出庭.全方位事故处理专业服务,费用更低,权益更有保障."/>
    <link href="css/detail.css" type="text/css" rel="stylesheet"/>
    <script src="js/script_gizp.js"></script>
    <script type="text/javascript">
        function document.onkeydown() {
            if ((window.event.altKey) &&
                    ((window.event.keyCode == 37) || //屏蔽 Alt+ 方向键 ←
                            (window.event.keyCode == 39)))  //屏蔽 Alt+ 方向键 →
            {
                alert("不准你使用ALT+方向键前进或后退网页！");
                event.returnValue = false;
            }
            //注：这还不是真正地屏蔽 Alt+ 方向键，因为 Alt+ 方向键弹出警告框时，按住 Alt 键不放，
            //用鼠标点掉警告框，这种屏蔽方法就失效了。以后若有哪位高手有真正屏蔽 Alt 键的方法，请告知。
            if ((event.keyCode == 8) || //屏蔽退格删除键
                    (event.keyCode == 116) || //屏蔽 F5 刷新键
                    (event.ctrlKey && event.keyCode == 82)) {       //Ctrl + R
                event.keyCode = 0;
                event.returnValue = false;
            }
            if (event.keyCode == 122) {
                event.keyCode = 0;
                event.returnValue = false;
            }   //屏蔽F11
            if (event.ctrlKey && event.keyCode == 78) event.returnValue = false;    //屏蔽 Ctrl+n
            if (event.shiftKey && event.keyCode == 121) event.returnValue = false;  //屏蔽 shift+F10
            if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
                window.event.returnValue = false;                               //屏蔽 shift 加鼠标左键新开一网页
            if ((window.event.altKey) && (window.event.keyCode == 115)) {           //屏蔽Alt+F4
                window.showModelessDialog("about:blank", "", "dialogWidth:1px;dialogheight:1px");
                return false;
            }
        }
    </script>
</head>
<body>
<!--header begin -->
<jsp:include page="head.jsp?menuid=m3"></jsp:include>
<!-- mainbody begin-->
<div class="mainbody">
    <!-- lay_s255_m begin-->
    <div class="lay_s255_m">
        <!-- lay_sub begin-->
        <jsp:include page="left.jsp?itemid=item5"></jsp:include>
        <!-- lay_main begin-->
        <div class="lay_main">
            <div class="breadcrumb">您当前的位置是:<a href="http://www.shiguwen.com">首页 <em>&gt;</em></a>
                <a href="../morearea.html">为更好获得帮助，以下知识对您很重要<em>&gt;</em></a>
                医疗纠纷处理现状及对策
            </div>
            <div class="aticle">
                <h5>医疗纠纷处理现状及对策</h5>

                <p><B>一、医疗纠纷处理现状</B></p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发生医疗纠纷时，患方通常采用以下几种方式维权：</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、不经过鉴定或专业咨询，自行和医院调解。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、通过医学会做医疗事故鉴定，或通过司法鉴定机构做医疗过错鉴定。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、聘请专业律师，走法律诉讼途径。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大量的实践表明，以上几种维权方式都存在弊端。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一，自行和医院调解。由于医疗纠纷的专业性强，患方拿不出专业的证据，因此在调解中处于下风。医院一般会以各种理由（如“不可控制的手术风险”、“已签署风险告知书”）进行辩解，而患方很难判断医院的对错，也拿不出有力的证据进行反驳。这种情况下，患方要么得不到赔偿，要么仅得到很少的赔偿。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二，医学会组织的医疗事故鉴定。稍微了解医疗事故鉴定的人都知道，医学会与医院同属卫生系统，彼此有着千丝万缕的联系，医疗事故鉴定往往不够客观公正。因此，医疗事故鉴定应该谨慎，以防给自己套上"枷锁"。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;相比医学会组织的医疗事故鉴定，由司法鉴定机构所做的医疗过错鉴定相对公正，其法律效力也强于医疗事故鉴定。但如果不清楚医院的过错，冒然做司法鉴定，一旦鉴定结果对自己不利，相当于以法定证据替医院推卸了责任，这时候再想向医院索赔，难上加难。花了高额的鉴定费，却起到了相反的效果。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第三、聘请律师。由于医疗纠纷处理周期长、过程复杂，因此聘请律师费用较高，一般都要上万元甚至几万元。这对于很多因治病而倾家荡产的患方来说，无疑是雪上加霜。万一找到不称职的律师，更是白花冤枉钱。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;正是由于以上种种的不如人意，造成许多患方求助无门，维权最终演变成医闹。2014年4月22日，最高人民法院、最高人民检察院、公安部、司法部等联合发布《关于依法惩处涉医违法犯罪维护正常医疗秩序的意见》。根据该《意见》，伤害医护人员的行为不仅要依法严处，连在医院摆放花圈、悬挂横幅、堵塞大门等行为也将受到处罚。因此，通过医闹的方式维权也变成了死路一条。
                </p>

                <p><B>二、对策</B>
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在自行调解效果差、事故鉴定风险大、聘请律师费用高、医闹不可取的困境下，面对医疗纠纷，患方还有没有更好的方式进行维权？
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;答案是肯定的，那就是事故问为患方打造的一套维权“组合拳”。事故问作为一个服务于全国的专业的事故处理平台，拥有全国各地的医学/法医专家、专业医疗律师，以及司法鉴定机构等专业合作资源。不论患者身处哪里，都可以在当地得到专业的服务，非常方便。在大量的医疗事故处理经验的基础上，事故问从患方的切身利益出发，根据不同的情况，为患方制定了不同的维权策略。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、自行和医院调解。调解之前，医学/法医专家对医院的过错、因果关系、赔偿金额等进行分析，并出具签字的分析意见报告，作为调解的专业依据，避免患方“两眼一抹黑”，被医院牵着鼻子走。当事人额外得到的赔偿要远远大于支付给专家的费用。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、做医疗事故鉴定或医疗过错司法鉴定。鉴定之前，专家对鉴定的风险进行评估，以确定是否有必要进行鉴定；司法鉴定时，专家帮助撰写专业的司法鉴定申请书，以及司法鉴定听证会的患方陈述意见；若对鉴定结果不服，专家还可对鉴定报告进行审核，若发现鉴定结论错误，可以帮助举证，以启动重新鉴定。
                </p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、聘请律师。事故问作为专业的事故处理服务平台，拥有全国各地的医疗律师合作伙伴。若患方有法律服务需求，可以在当地找到我们的合作律师。</p>
			    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对于高昂的律师费用，事故问除了可以协调律师对费用进行优惠之外，更重要的是，可以使律师分开收费：即前期只收取少部分费用，争取到医院赔偿后，再按比例收取后期费用；争取不到赔偿，则不收后期费用。分开收费的好处，一是大大减轻了患方前期的经济负担，二是使律师与患方的利益真正做到了一致，可以更好的发挥律师的积极性，有效防止"光拿钱不做事"的情况。部分情况下，事故问甚至可以为患方解决前期律师费用，替患方垫钱打官司。彻底解决患方维权无门的问题。
                </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;此外，聘请了事故问的合作律师，事故问的专家将根据案情所需，免费参与案件的处理，相当于患方拥有了一个“法律+技术”的专业性服务团队。对于医疗纠纷这种带有强烈技术背景的案子，“法律+技术”的综合性服务，维权效果更好，因而受到患方广泛的欢迎。</p>

                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当然，没有任何一种维权方式是绝对有效的，尤其是在国内大的司法环境下。因此，患方对维权一定要有充分的思想准备，并根据实际情况，选择适合自己的维权方式。争取以最小的代价，获得最好的效果。
                </p>
                <p class="areaFont">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事故问服务热线：400 021 9060
                </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(事故问原创，转载请注明出处)</p>
            </div>
            <div style="border: 1px solid;border-color: #ddd; height: 150px;">
                <jsp:include page="interest.jsp?pagename=wzjj" flush="false"></jsp:include>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
