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
            为专家辅助人出庭制度叫好
        </h3>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012年3月修改的《中华人民共和国刑事诉讼法》（以下简称新《刑诉法》）以及8月修改的《中华人民共和国民事诉讼法》（以下简称新《民诉法》）均于2013年1月1日起施行。新刑诉法第192条第二款规定：“公诉人、当事人和辩护人、诉讼代理人可以申请法庭通知有专门知识的人出庭，就鉴定人作出的鉴定意见提出意见。”新民诉法第76条规定："当事人可以申请人民法院通知有专门知识的人出庭，就鉴定人作出的鉴定意见或者专业问题提出意见。"</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具有专门知识的人可谓专家，专家出庭参加诉讼就是法庭专家辅助人。</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;几年前，法学家就呼吁建立法庭专家辅助人制度。何谓法庭专家辅助人？法庭专家辅助人是指具有某学科专业知识，并受到当事人、公诉人、辩护人和诉讼代理人的聘请，在法庭审理案件过程中，运用自己的专业知识对案件涉及的专门性问题进行分析，提出意见，辅助聘请人进行诉讼的人。</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设立法庭专家辅助人的意义在于：</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1．有利于实现诉讼价值目标。在法庭上，对鉴定意见书的审查往往流于形式，原因在于法官、公诉人、当事人和辩护人、诉讼代理人缺乏专业知识，在对出庭的鉴定人发问时，抓不住疑点和关键问题，至使法庭对鉴定意见的审查难以落到实处。如果有了专家辅助人参加庭审，就能对鉴定人的陈述及对鉴定意见进行有效的质证和论证。法官在专家辅助人和鉴定人之间的较量中，能够正确判断出鉴定意见有无证据法能力及证明力的大小，从而形成内心的确信，帮助法庭查明并确认案件事实并判断鉴定意见的证据效力。对于刑事案件而言，专家辅助人制度赋予了当事人在刑事诉讼司法鉴定活动中的参与权和监督权，有利于弥补辩方取证和质证能力的不足，从而实现控辩双方在刑事诉讼司法鉴定程序中地位和权利的平等。</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2．有利于实现诉讼的效率。专家辅助人参加诉讼，能够及时发现鉴定意见中的缺陷及问题，有针对性的申请补充鉴定和对重新鉴定找到充分的理由，有效地避免了当事人无目的及随意的提出重新鉴定申请。通过专家辅助人的出庭可以起到对鉴定人的工作进行监督和对鉴定意见进行审查的效果，还可以帮助当事人理解涉及鉴定的科学问题。由专家辅助人向当事人，特别是聘请方当事人解释说明鉴定意见，当事人更容易接受鉴定意见，尤其是对自己不利的鉴定意见，这样就能有效的防止重复鉴定，节约鉴定资源，缩短诉讼期限，降低当事人诉讼成本，提高诉讼效率。
        </p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;３．有利于提高鉴定人的专业素质。目前，社会鉴定机构繁多且杂，鉴定人队伍良莠不齐，存在法律责任感不强，工作作风不严谨，专业水平不高等问题，因而在司法鉴定实践中，也出现了一些质量不高的鉴定意见书。建立法庭专家辅助人制度后，专家辅助人出庭参加诉讼在某种程度上就是扮演了监督者的角色，他可以从鉴定的方式方法、步骤、程序以及鉴定意见的科学性中发现问题，阐述意见，这样对提高鉴定人的专业水平和道德素质起到积极的作用。
        </p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;４．有利于推动鉴定工作的规范化。对于鉴定工作的规范化问题，司法部非常重视，制定了《司法鉴定程序通则》、《司法鉴定文书规范》等诸多规范性文件，而且各个鉴定机构也有自己的一套管理规范，但规范性文件所规定的内容是大致性的，对具体的鉴定活动不可能规定得详细，操作起来有一定的随意性，作为办案法官和涉案当事人来说，他们不是很了解，或者说只知其一不知其二，要对鉴定人在鉴定过程中是否符合执业规范、是否符合鉴定技术标准是很难说清楚或者进行有效审查的，而对于具有专门知识的专家辅助人来说，他们对鉴定规范、鉴定标准了解较多，理解也深刻，因而他们是能够对鉴定人的工作进行更专业的监督，促使鉴定人提高责任心，推动鉴定工作朝更全面的规范化、标准化方向良性发展。
        </p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;专家辅助人出庭制度已经确立，新《刑诉法》和新《民诉法》在明年就要实施，在这一制度实施前，应尽快明确下列问题：如启动专家辅助人的程序和步骤，专家辅助人的条件和资格认定，专家辅助人的权利和义务是什么，专家辅助人的归口管理部门是谁等等，只有对这诸多方面的问题有了明确的规定后，这一新型的诉讼制度才能健康有序地推进和发展。
        </p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(本内容来源：<a href="http://jxwafy.chinacourt.org/public/detail.php?id=760" style="color: blue;" target="_blank">万安县法院网</a>  作者：万安县人民法院 郭明生)</p>
    </div>
    <!--底部版权信息-->
    <div data-role="footer" data-position="fixed" data-tap-toggle="false">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>