<%@ page import="java.util.List" %>
<%@ page import="com.sggw.bean.InterestBean" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13-3-26
  Time: 下午2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <p style="margin-bottom: 8px;font: 15px/30px '微软雅黑';"><b>如下内容，向您推荐 :</b></p>
    <%
        String pagename = request.getParameter("pagename");
        List<InterestBean> list = (List) request.getSession().getAttribute("Interests");
        if (null == list||0==list.size()) {
            return;
        }
        int size = list.size();
        Random random = new Random();
        List rlist = new ArrayList();
        for (int i = 0; i < 6; i++) {
            int r = random.nextInt(size);
            if (!rlist.contains(r)) {
                InterestBean interestBean = list.get(r);
                if (interestBean.getPageName().equals(pagename)) {
                    continue;
                }
                rlist.add(r);
    %>
    <li style="list-style: disc;font-family: '微软雅黑';font-size: 14px;">
        <a href="<%=interestBean.getUrl()%>">
            <%=interestBean.getTitle()%>
        </a>
    </li>
    <%
            }
        }
    %>