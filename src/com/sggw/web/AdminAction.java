package com.sggw.web;

import com.sggw.bean.*;
import com.sggw.constant.Objects;
import com.sggw.service.AdminService;
import com.sggw.service.SggwService;

import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-10-13
 * Time: 下午11:53
 * To change this template use File | Settings | File Templates.
 */
public class AdminAction extends BaseAction {
    private AdminService service = new AdminService();
    private SggwService sggwService = new SggwService();

    /**
     * 登录验证
     *
     * @return
     */
    public String indexForward() {
        if (!service.isChecked(model)) {
            //验证失败
            setAttribute("AlterMsg", "用户名或密码错误!");
        }
        //验证通过返回管理首页
        return "index";
    }

    public String headForward() {
        return "head";
    }

    public String menuForward() {
        return "menu";
    }

    public String mainForward() {
        return "main";
    }

    public String addCase() throws ClassNotFoundException, SQLException, UnknownHostException {
        service.addCase(model);
        return SUCCESS;
    }

    /**
     * 发布新闻
     *
     * @return
     * @throws Exception
     */
    public String addPress() throws Exception {
        service.addPress(model);
        return SUCCESS;
    }

    /**
     * 修改案例
     *
     * @return
     * @throws Exception
     */
    public String modifyCase() throws Exception {
        service.modifyCase(model);
        return SUCCESS;
    }

    /**
     * 修改案例
     *
     * @return
     * @throws Exception
     */
    public String modifyPress() throws Exception {
        service.modifyPress(model);
        return SUCCESS;
    }

    /**
     * 查询案例
     *
     * @return
     * @throws Exception
     */
    public String qryCase() throws Exception {
        List<NewsBean> newsBeans = sggwService.qryNews();
        setSessionAttribute("adminNewsBeans", newsBeans);
        return SUCCESS;
    }

    /**
     * 查询案例
     *
     * @return
     * @throws Exception
     */
    public String qryPress() throws Exception {
        List<PressBean> pressBeans = sggwService.qryPress();
        setSessionAttribute("PressBeans", pressBeans);
        return SUCCESS;
    }

    public String addCaseProgress() throws ClassNotFoundException, SQLException, UnknownHostException {
        service.addCaseProgress(model);
        return SUCCESS;
    }

    public String deleteCase() throws Exception {
        service.deleteCase(model);
        qryCase();
        return SUCCESS;
    }

    /**
     * @return
     * @throws Exception
     */
    public String deletePress() throws Exception {
        service.deletePress(model);
        qryPress();
        return SUCCESS;
    }

    public String inputNews() throws Exception {
        service.inputNews(model);
        return SUCCESS;
    }

    public String deleteNewsForward() throws Exception {
        setSessionAttribute("newssBeans", service.qryNews());
        return SUCCESS;
    }

    public String deleteNews() throws Exception {
        service.deleteNews(model);
        setSessionAttribute("newssBeans", service.qryNews());
        return SUCCESS;
    }

    public String modifyNewsForward() throws Exception {
        setSessionAttribute("newssBeans", service.qryNews());
        return SUCCESS;
    }

    public String modifyOneNews() throws Exception {
        setAttribute("newsBeanReq", service.qryOneNews(model));
        return SUCCESS;
    }

    public String modifyNews() throws Exception {
        service.modifyNews(model);
        return SUCCESS;
    }

    public String inputAdviser() throws Exception {
        service.addAdviser(model);
        return SUCCESS;
    }

    public String qryCaseProgress() throws Exception {
        //先查询所有案例
        qryCase();
        return SUCCESS;
    }

    public String qryProgress() throws Exception {
        List<NewsAttrBean> newsAttrBeans = service.qryProgress(model);
        setSessionAttribute("adminNewsId", model.getId());
        setSessionAttribute("adminnewsAttrBeans", newsAttrBeans);
        return SUCCESS;
    }

    public String modifyProgress() throws Exception {
        service.modifyProgress(model);
        return SUCCESS;
    }

    public String deleteProgress() throws Exception {
        service.deleteProgress(model);
        //重新设置id值为案例编号，进行查询进展
        model.setId((String) getSessionAttribute("adminNewsId"));
        qryProgress();
        return SUCCESS;
    }

    /**
     * 接待点信息录入
     *
     * @return
     * @throws Exception
     */
    public String addServArea() throws Exception {
        service.addServArea(model);
        return SUCCESS;
    }

    /**
     * 查询省份信息
     *
     * @return
     * @throws Exception
     */
    public String qryProvince() throws Exception {
        setSessionAttribute("ProvinceBeans", service.qryProvince());
        return SUCCESS;
    }

    /**
     * 激活
     *
     * @return
     * @throws Exception
     */
    public String jihuo() throws Exception {
        service.jihuo(model);
        qryProvince();
        return SUCCESS;
    }

    /**
     * 查询已激活省份
     *
     * @return
     * @throws Exception
     */
    public String qryActiveProvince() throws Exception {
        setSessionAttribute("ActiveProvinces", service.qryActiveProvince());
        return SUCCESS;
    }

    /**
     * 查询接待点信息
     *
     * @return
     * @throws Exception
     */
    public String qryServArea() throws Exception {
        qryActiveProvince();
        setSessionAttribute("ServAreaBeans", service.qryServAreas());
        return SUCCESS;
    }

    /**
     * 修改接待点信息
     *
     * @return
     * @throws Exception
     */
    public String modifServArea() throws Exception {
        service.modifServArea(model);
        qryServArea();
        return SUCCESS;
    }

    /**
     * 删除接待点
     *
     * @return
     * @throws Exception
     */
    public String deleteServArea() throws Exception {
        service.deleteServArea(model);
        qryServArea();
        return SUCCESS;
    }

    /**
     * @return
     * @throws Exception
     */
    public String qryKeywords() throws Exception {
        setSessionAttribute("KeywordBeans", service.qryKeywords());
        return SUCCESS;
    }

    /**
     * 增加关键字
     *
     * @return
     * @throws Exception
     */
    public String addKeyWord() throws Exception {
        service.addKeyword(model);
        return SUCCESS;
    }

    /**
     * 删除关键字
     *
     * @return
     * @throws Exception
     */
    public String deleteKeyword() throws Exception {
        service.deleteKeyword(model);
        qryKeywords();
        return SUCCESS;
    }

    /**
     * 修改关键字
     *
     * @return
     * @throws Exception
     */
    public String modifyKeyword() throws Exception {
        service.modifyKeyword(model);
        qryKeywords();
        return SUCCESS;
    }

    /**
     * 查询关键字
     *
     * @return
     * @throws Exception
     */
    public String qryKeyword() throws Exception {
        setAttribute("KeywordBean", service.qryKeyword(model));
        return SUCCESS;
    }

    /**
     * 查询感兴趣的内容
     *
     * @return
     * @throws Exception
     */
    public String qryInterest() throws Exception {
        setAttribute("InterestBean", service.qryInterest(model));
        return SUCCESS;
    }

    /**
     * @return
     * @throws Exception
     */
    public String qryInterests() throws Exception {
        setSessionAttribute("InterestBeans", service.qryInterests());
        return SUCCESS;
    }

    /**
     * 修改内容推荐
     *
     * @return
     * @throws Exception
     */
    public String modifyInterest() throws Exception {
        service.modifyInterest(model);
        return SUCCESS;
    }

    /**
     * 添加推荐内容
     *
     * @return
     * @throws Exception
     */
    public String addInterest() throws Exception {
        service.addInterest(model);
        return SUCCESS;
    }

    /**
     * 删除推荐内容
     *
     * @return
     * @throws Exception
     */
    public String deleteInterest() throws Exception {
        service.deleteInterest(model);
        qryInterests();
        return SUCCESS;
    }

    /**
     * 查询律师资料
     *
     * @return
     * @throws Exception
     */
    public String qryLawyer() throws Exception {
        setSessionAttribute("LawyerBeans", service.qryLawyers());
        return SUCCESS;
    }

    /**
     * 删除律师资料
     *
     * @return
     * @throws Exception
     */
    public String deleteLawyer() throws Exception {
        service.deleteLawyer(model);
        qryLawyer();
        return SUCCESS;
    }

    /**
     * @return
     * @throws Exception
     */
    public String qryLawyerInfo() throws Exception {
        setSessionAttribute("ReqLawyerBeans", service.qryLawyerInfo(model));
        return SUCCESS;
    }

    /**
     * 录入员工信息
     *
     * @return
     * @throws Exception
     */
    public String addStaff() throws Exception {
        service.addStaff(model);
        return SUCCESS;
    }

    /**
     * 修改员工信息
     *
     * @return
     * @throws Exception
     */
    public String modifyStaff() throws Exception {
        service.modifyStaff(model);
        qryStaff();
        return SUCCESS;
    }

    /**
     * 查询员工信息
     *
     * @return
     * @throws Exception
     */
    public String qryStaff() throws Exception {
        setSessionAttribute("StaffBeans", service.qryStaff());
        return SUCCESS;
    }

    /**
     * 查询投诉建议
     *
     * @return
     * @throws Exception
     */
    public String qryTsjy() throws Exception {
        setSessionAttribute("TellAdviseBeans", service.qryTsjy());
        return SUCCESS;
    }

    /**
     * 查询留言信息
     *
     * @return
     * @throws Exception
     */
    public String qryShiguwen() throws Exception {
        setSessionAttribute("ShiguwenBeans", sggwService.qryShiguwen());
        return SUCCESS;
    }

    /**
     * 查询所需帮助
     *
     * @return
     * @throws Exception
     */
    public String qryNeedHelp() throws Exception {
        setSessionAttribute("NeedHelpBeans", service.qryNeedHelp());
        PageBean<NeedHelpBean> pageBean = new PageBean<NeedHelpBean>(service.qryNeedHelp(), 10);
        setSessionAttribute("needHelpPageBeanList", pageBean.getpList());
        setSessionAttribute("needHelpPageBean", pageBean);
        setSessionAttribute("needHelpPageBean", pageBean);
        setAttribute("currentpage", pageBean.getCurrentpage());
        setAttribute("numberpage", pageBean.getNumberpage());
        setAttribute("totalpage", pageBean.getTotalpage());
        return SUCCESS;
    }

    /**
     * 分页
     *
     * @return
     */
    public String qryPageNeedHelp() {
        PageBean<NeedHelpBean> pageBean = (PageBean<NeedHelpBean>) getSessionAttribute("needHelpPageBean");
        pageBean.setCurrentpage(model.getIndex());
        setAttribute("currentpage", pageBean.getCurrentpage());
        setAttribute("numberpage", pageBean.getNumberpage());
        setAttribute("totalpage", pageBean.getTotalpage());
        setSessionAttribute("needHelpPageBeanList", pageBean.getpList());
        return SUCCESS;
    }

    /**
     * 查询律师登记信息
     *
     * @return
     * @throws Exception
     */
    public String qryLsdj() throws Exception {
        setSessionAttribute("DjlsBeans", service.qryLsdj());
        return SUCCESS;
    }

    /**
     * 删除所需帮助
     *
     * @return
     * @throws Exception
     */
    public String deleteNeedHelp() throws Exception {
        service.deleteNeedHelp(model);
        qryNeedHelp();
        return SUCCESS;
    }

    /**
     * 删除投诉建议
     *
     * @return
     * @throws Exception
     */
    public String deleteTsjy() throws Exception {
        service.deleteTsjy(model);
        qryTsjy();
        return SUCCESS;
    }

    /**
     * 删除登记律师
     *
     * @return
     * @throws Exception
     */
    public String deleteLsdj() throws Exception {
        service.deleteLsdj(model);
        qryLsdj();
        return SUCCESS;
    }

    public String qryTjtj() throws Exception {
        setSessionAttribute("TjtjBeans", service.qryTjtj());
        return SUCCESS;
    }

    /**
     * 添加最新咨询
     *
     * @return
     */
    public String addNewAsk() throws Exception {
        service.addNewAsk(model);
        setAttribute("AlertMsg", "记录提交成功!");
        return SUCCESS;
    }

    /**
     * 查询最新咨询
     *
     * @return
     * @throws Exception
     */
    public String qryNewAsk() throws Exception {
        List<ModelBean> pageRTSHBeans = (List<ModelBean>) getSessionAttribute("NewAskBeans");
        PageBean pageBean;
        if (Objects.isNotNull(pageRTSHBeans) && !pageRTSHBeans.isEmpty()) {
            pageBean = (PageBean) getSessionAttribute("NewAskPageBean");
            pageBean.setCurrentpage(model.getIndex());
        } else {
            pageBean = new PageBean(service.qryNewAsk(), 10);
            setSessionAttribute("NewAskPageBean", pageBean);
        }
        setSessionAttribute("NewAskBeans", pageBean.getpList());
        setAttribute("askCurrentPage", pageBean.getCurrentpage());
        setAttribute("askTotalPage", pageBean.getTotalpage());
        setAttribute("askNumPage", pageBean.getNumberpage());
        return SUCCESS;
    }

    /**
     * 删除最新咨询
     *
     * @return
     * @throws Exception
     */
    public String deleteNewAsk() throws Exception {
        service.deleteNewAsk(model);
        setSessionAttribute("NewAskBeans", new ArrayList());
        qryNewAsk();
        return SUCCESS;
    }

    /**
     * 更新最新咨询
     *
     * @return
     * @throws Exception
     */
    public String modifyNewAsk() throws Exception {
        service.modifyNewAsk(model);
        setSessionAttribute("NewAskBeans", new ArrayList());
        qryNewAsk();
        setAttribute("AlertMsg", "记录修改成功!");
        return SUCCESS;
    }

    /**
     * 添加模块链接
     *
     * @return
     * @throws Exception
     */
    public String addLink() throws Exception {
        service.addLink(model);
        setAttribute("AlertMsg", "记录提交成功!");
        return SUCCESS;
    }

    /**
     * 查询模块链接
     *
     * @return
     * @throws Exception
     */
    public String qryModelLink() throws Exception {
        List<ModelBean> pageRTSHBeans = (List<ModelBean>) getSessionAttribute("ModelBeans");
        PageBean pageBean;
        if (!"1".equals(getParameter("index")==null?"1":getParameter("index"))&&Objects.isNotNull(pageRTSHBeans) && !pageRTSHBeans.isEmpty()) {
            pageBean = (PageBean) getSessionAttribute("ModelPageBean");
            pageBean.setCurrentpage(model.getIndex());
        } else {
            pageBean = new PageBean(service.qryModelLink(), 10);
            setSessionAttribute("ModelPageBean", pageBean);
        }
        setSessionAttribute("ModelBeans", pageBean.getpList());
        setAttribute("modelCurrentPage", pageBean.getCurrentpage());
        setAttribute("modelTotalPage", pageBean.getTotalpage());
        setAttribute("modelNumPage", pageBean.getNumberpage());
        return SUCCESS;
    }

    /**
     * 删除模块链接
     *
     * @return
     * @throws Exception
     */
    public String deleteLink() throws Exception {
        service.deleteModelLink(model);
        setSessionAttribute("ModelBeans", new ArrayList());
        qryModelLink();
        return SUCCESS;
    }

    public String modifyModelLink() throws Exception {
        service.modifyModelLink(model);
        qryModelLink();
        setAttribute("AlertMsg", "记录修改成功!");
        return SUCCESS;
    }
}
