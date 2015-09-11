package com.sggw.web;

import com.sggw.bean.*;
import com.sggw.constant.Dates;
import com.sggw.constant.Objects;
import com.sggw.constant.Strings;
import com.sggw.service.AdminService;
import com.sggw.service.SggwService;
import com.opensymphony.xwork2.ActionContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-9-15
 * Time: 下午9:52
 * 前台业务相应类
 */
public class SggwAction extends BaseAction {
    private SggwService service = new SggwService();
    private AdminService adminService = new AdminService();

    /**
     * 添加接待处信息
     *
     * @param list
     * @param info
     * @return
     */
    private static List addServAreaInfo(List list, String info) {
        ServAreaBean servAreaBean = new ServAreaBean();
        String[] infos = info.split(",");
        servAreaBean.setSimpleName(infos[0]);
        servAreaBean.setAreaName(infos[1]);
        servAreaBean.setAddress(infos[2]);
        servAreaBean.setPhone(infos[3]);
        list.add(servAreaBean);
        return list;
    }

    /**
     * 页面初始化
     *
     * @return
     * @throws Exception
     */
    public String init() throws Exception {
        //设置session失效时间为5分钟
        getSession().setMaxInactiveInterval(5*60);
        List<Object> lists = null;
        Map keywords = (Map) getSessionAttribute("PageKeywords");
        if (Objects.isNull(keywords) || keywords.size() == 0) {
            lists = adminService.init();
            setSessionAttribute("PageKeywords", lists.get(0));
            setAttribute("PageKeywords",lists.get(0));
        }
        List<InterestBean> interestBeans = (List<InterestBean>) getSessionAttribute("Interests");
        if (Objects.isNull(interestBeans) || interestBeans.size() == 0) {
            List<InterestBean> interests = (List<InterestBean>) lists.get(1);
            setSessionAttribute("Interests", interests);
            setSessionAttribute("NewInterests", new ArrayList(interests.subList(0, 4)));
            setSessionAttribute("HotInterests", (List<InterestBean>) lists.get(2));
        }
        List<NewAskBean> newAskBeans = (List<NewAskBean>) getSessionAttribute("NewAskList");
        if (Objects.isNull(newAskBeans) || newAskBeans.size() == 0) {
            setSessionAttribute("NewAskList", (List<InterestBean>) lists.get(3));
        }
        List<ModelBean> rtshLinkList = (List<ModelBean>) getSessionAttribute("RTSHLinkList");
        if (Objects.isNull(rtshLinkList) || rtshLinkList.size() == 0) {
            setSessionAttribute("RTSHLinkList", (List<InterestBean>) lists.get(4));
        }
        List<ModelBean> jtsgLinkList = (List<ModelBean>) getSessionAttribute("JTSGLinkList");
        if (Objects.isNull(jtsgLinkList) || jtsgLinkList.size() == 0) {
            setSessionAttribute("JTSGLinkList", (List<InterestBean>) lists.get(5));
        }
        setSessionAttribute("ToDayCN", Dates.getToday(Dates.DateType.TodayCN));
        setAttribute("fristIndex", "1");
        return SUCCESS;
    }

    /**
     * 查人体损害模块链接
     *
     * @return
     * @throws Exception
     */
    public String qryRTSHLink() throws Exception {
        List<ModelBean> pageRTSHBeans = (List<ModelBean>) getSessionAttribute("pageRTSHBeans");
        PageBean pageBean;
        if (Objects.isNotNull(pageRTSHBeans) && !pageRTSHBeans.isEmpty()) {
            pageBean = (PageBean) getSessionAttribute("RTSHPageBean");
            pageBean.setCurrentpage(model.getIndex());
        } else {
            pageBean = new PageBean(adminService.qryModelLinkByType("人身损害问题专栏"), 15);
            setSessionAttribute("RTSHPageBean", pageBean);
        }
        setSessionAttribute("pageRTSHBeans", pageBean.getpList());
        setAttribute("rtshCurrentPage", pageBean.getCurrentpage());
        setAttribute("rtshTotalPage", pageBean.getTotalpage());
        setAttribute("rtshNumPage", pageBean.getNumberpage());
        return SUCCESS;
    }

    /**
     * 查交通事故模块链接
     *
     * @return
     * @throws Exception
     */
    public String qryJTSGLink() throws Exception {
        List<ModelBean> pageRTSHBeans = (List<ModelBean>) getSessionAttribute("pageJTSGBeans");
        PageBean pageBean;
        if (Objects.isNotNull(pageRTSHBeans) && !pageRTSHBeans.isEmpty()) {
            pageBean = (PageBean) getSessionAttribute("JTSGPageBean");
            pageBean.setCurrentpage(model.getIndex());
        } else {
            pageBean = new PageBean(adminService.qryModelLinkByType("交通事故问题专栏"), 15);
            setSessionAttribute("JTSGPageBean", pageBean);
        }
        setSessionAttribute("pageJTSGBeans", pageBean.getpList());
        setAttribute("jtsgCurrentPage", pageBean.getCurrentpage());
        setAttribute("jtsgTotalPage", pageBean.getTotalpage());
        setAttribute("jtsgNumPage", pageBean.getNumberpage());
        return SUCCESS;
    }

    /**
     * 查询接待点
     *
     * @return
     * @throws Exception
     */
    public String qryServArea() throws Exception {
        setSessionAttribute("ServAreaList", adminService.qryServAreas(model));
        setAttribute("ServArea", getParameter("province"));
        return SUCCESS;
    }

    /**
     * 查询合作律师
     *
     * @return
     * @throws Exception
     */
    public String qryHzls() throws Exception {
        List<HzlsBean> hzlsBeans = service.qryHzls();
        setSessionAttribute("Hzls", hzlsBeans);
        return SUCCESS;
    }

    public String adminIndex() {
        return "adminIndex";
    }

    /**
     * 查询案情列表
     *
     * @return
     * @throws Exception
     */
    public String qryNews() throws Exception {
        setAttribute("width", getParameter("width"));
        setAttribute("height", getParameter("height"));
        if (null != getSessionAttribute("newsBeans")) {
            return SUCCESS;
        }
        List<NewsBean> newsBeans = service.qryNewsAndAttr();
        PageBean<NewsBean> pageBean = new PageBean<NewsBean>(newsBeans);
        setSessionAttribute("pageBeanList", pageBean.getpList());
        setSessionAttribute("newsBeans", newsBeans);
        setSessionAttribute("pageBean", pageBean);
        setSessionAttribute("currentpage", pageBean.getCurrentpage());
        setSessionAttribute("numberpage", pageBean.getNumberpage());
        setSessionAttribute("totalpage", pageBean.getTotalpage());
        return SUCCESS;
    }

    /**
     * 查询案例
     *
     * @return
     * @throws Exception
     */
    public String qryPress() throws Exception {
        setAttribute("width", getParameter("width"));
        setAttribute("height", getParameter("height"));
        List<PressBean> pressList = (List<PressBean>) getSessionAttribute("PressBeans");
        if (null != pressList && 0 != pressList.size()) {
            return SUCCESS;
        }
        List<PressBean> pressBeans = service.qryPress();
        PageBean<PressBean> pageBean = new PageBean<PressBean>(pressBeans);
        setSessionAttribute("pressPageBeanList", pageBean.getpList());
        setSessionAttribute("PressBeans", pressBeans);
        setSessionAttribute("PressLimitBeans", new ArrayList(pressBeans.subList(0, 4)));
        setSessionAttribute("presspageBean", pageBean);
        setSessionAttribute("presscurrentpage", pageBean.getCurrentpage());
        setSessionAttribute("pressnumberpage", pageBean.getNumberpage());
        setSessionAttribute("presstotalpage", pageBean.getTotalpage());
        return SUCCESS;
    }

    /**
     * 分页
     *
     * @return
     */
    public String qryPageNews() {
        PageBean<NewsBean> pageBean = (PageBean<NewsBean>) getSessionAttribute("pageBean");
        pageBean.setCurrentpage(model.getIndex());
        setSessionAttribute("currentpage", pageBean.getCurrentpage());
        setSessionAttribute("pageBeanList", pageBean.getpList());
        return SUCCESS;
    }

    /**
     * 分页
     *
     * @return
     */
    public String qryPagePress() {
        PageBean<PressBean> pageBean = (PageBean<PressBean>) getSessionAttribute("presspageBean");
        pageBean.setCurrentpage(model.getIndex());
        setSessionAttribute("presscurrentpage", pageBean.getCurrentpage());
        setSessionAttribute("pressPageBeanList", pageBean.getpList());
        return SUCCESS;
    }

    /**
     * 查询新闻内容
     *
     * @return
     * @throws Exception
     */
    public String qryNewsArea() throws Exception {
        List<NewsBean> newsBeans = (List<NewsBean>) getSessionAttribute("newsBeans");
        int size = newsBeans.size();
        assert size > 0;
        NewsBean newsBean;
        if (model.getIndex() <= 0) {
            newsBean = newsBeans.get(0);
            if (size == 1) {
                newsBean.setNtitle("无");
            } else {
                newsBean.setNtitle(newsBeans.get(1).getNewsDate() + " " + newsBeans.get(1).getTitle());
            }
            newsBean.setPtitle("无");
        } else if (model.getIndex() >= size - 1) {
            newsBean = newsBeans.get(size - 1);
            if (size == 1) {
                newsBean.setPtitle("无");
            } else {
                newsBean.setPtitle(newsBeans.get(size - 2).getNewsDate() + " " + newsBeans.get(size - 2).getTitle());
            }
            newsBean.setNtitle("无");
        } else {
            newsBean = newsBeans.get(model.getIndex());
            newsBean.setPtitle(newsBeans.get(model.getIndex() - 1).getNewsDate() + " " + newsBeans.get(model.getIndex() - 1).getTitle());
            newsBean.setNtitle(newsBeans.get(model.getIndex() + 1).getNewsDate() + " " + newsBeans.get(model.getIndex() + 1).getTitle());
        }
        setAttribute("newsBean", newsBean);
        return SUCCESS;
    }

    /**
     * 查询新闻内容
     *
     * @return
     * @throws Exception
     */
    public String qryPressArea() throws Exception {
        List<PressBean> pressBeans = (List<PressBean>) getSessionAttribute("PressBeans");
        int size = pressBeans.size();
        assert size > 0;
        PressBean pressBean;
        if (model.getIndex() <= 0) {
            pressBean = pressBeans.get(0);
            if (size == 1) {
                pressBean.setNtitle("无");
            } else {
                pressBean.setNtitle(pressBeans.get(1).getNewsDate() + " " + pressBeans.get(1).getTitle());
            }
            pressBean.setPtitle("无");
        } else if (model.getIndex() >= size - 1) {
            pressBean = pressBeans.get(size - 1);
            if (size == 1) {
                pressBean.setPtitle("无");
            } else {
                pressBean.setPtitle(pressBeans.get(size - 2).getNewsDate() + " " + pressBeans.get(size - 2).getTitle());
            }
            pressBean.setNtitle("无");
        } else {
            pressBean = pressBeans.get(model.getIndex());
            pressBean.setPtitle(pressBeans.get(model.getIndex() - 1).getNewsDate() + " " + pressBeans.get(model.getIndex() - 1).getTitle());
            pressBean.setNtitle(pressBeans.get(model.getIndex() + 1).getNewsDate() + " " + pressBeans.get(model.getIndex() + 1).getTitle());
        }
        setAttribute("pressBean", pressBean);
        return SUCCESS;
    }

    /**
     * 添加投诉建议
     *
     * @return
     */
    public String addTellAndAdvise() throws Exception {
        String message = "";
        if ("".equals(model.getName())) {
            message = "姓名不能为空!";
        } else if ("".equals(model.getPhone())) {
            message = "联系电话不能为空!";
        } else if ("".equals(model.getContent())) {
            message = "内容不能为空!";
        } else if (!model.getYzm().equals(getSessionAttribute("MessageTsjyCode"))) {
            message = "验证码不正确,请重新输入!";
        } else {
            service.addTellAndAdvise(model);
            message = "记录提交成功!";
        }
        setAttribute("AlertMessage", message);
        return SUCCESS;
    }

    /**
     * 添加遇到事故你就问
     *
     * @return
     * @throws Exception
     */
    public String addShiguwen() throws Exception {
        String message = "";
        if ("".equals(model.getPhone())) {
            message = "联系电话不能为空!";
        } else if (!model.getYzm().equals(getSessionAttribute("MessageRandomCode"))) {
            message = "验证码不正确,请重新输入!";
        } else {
            service.addShiguwen(model);
            message = "记录提交成功!";
        }
        setAttribute("AlertMessage", message);
        return SUCCESS;
    }

    /**
     * 登记律师
     *
     * @return
     * @throws Exception
     */
    public String addLsInfo() throws Exception {
        String message = "";
        if ("".equals(model.getName())) {
            message = "姓名不能为空!";
        } else if ("".equals(model.getPhone())) {
            message = "联系电话不能为空!";
        } else if ("".equals(model.getLsname())) {
            message = "聘请的律师姓名不能为空!";
        } else if (!model.getYzm().equals(getSessionAttribute("MessageDjlsCode"))) {
            message = "验证码不正确,请重新输入!";
        } else {
            service.addDjls(model);
            message = "记录提交成功!";
        }
        setAttribute("AlertMessage", message);
        return SUCCESS;
    }

    /**
     * 添加帮助内容
     *
     * @return
     * @throws Exception
     */
    public String addNeedHelpInfo() throws Exception {
        long startTime = Dates.getDayLong();
        TjTjBean tjTjBean = new TjTjBean();
        tjTjBean.setTtime(Dates.getDateTime());
        String message = "";
        if ("".equals(model.getName())) {
            message = "姓名不能为空!";
        } else if ("".equals(model.getPhone())) {
            message = "联系电话不能为空!";
        } else if ("".equals(model.getContent())) {
            message = "帮助内容不能为空!";
        } else if (!model.getYzm().equals(getSessionAttribute("MessageNeedHelpCode"))) {
            message = "验证码不正确,请重新输入!";
        } else if (Strings.isEmpty(model.getProvince(), model.getCity(), model.getCountry())) {
            message = "所在地区信息不能为空,请重新选择后提交!";
        } else {
            service.addNeedHelp(model);
            message = "记录提交成功!我们的客服人员会在24个小时内与您联系，请安心等待!";
        }
        setAttribute("AlertMessage", message);
        tjTjBean.setStime(Dates.getDateTime());
        tjTjBean.setTstime(String.valueOf(Dates.getDayLong() - startTime));
        tjTjBean.setType("NeedHelp");
        service.addTjTj(tjTjBean);
        return SUCCESS;
    }

    /**
     * 查询更多最新咨询
     *
     * @return
     * @throws Exception
     */
    public String qryMoreNewAsk() throws Exception {
        List<NewAskBean> newAskBeans = (List<NewAskBean>) getSessionAttribute("pageNewAskBeans");
        PageBean pageBean;
        if (Objects.isNotNull(newAskBeans) && !newAskBeans.isEmpty()) {
            pageBean = (PageBean) getSessionAttribute("NewAskPageBean");
            pageBean.setCurrentpage(model.getIndex());
            setSessionAttribute("pageNewAskBeans", pageBean.getpList());
        } else {
            pageBean = new PageBean(adminService.qryNewAsk(), 5);
        }
        setSessionAttribute("NewAskPageBean", pageBean);
        setSessionAttribute("pageNewAskBeans", pageBean.getpList());
        setAttribute("newAskCurrentPage", pageBean.getCurrentpage());
        setAttribute("newAskTotalPage", pageBean.getTotalpage());
        setAttribute("newAskNumPage", pageBean.getNumberpage());
        return SUCCESS;
    }
}
