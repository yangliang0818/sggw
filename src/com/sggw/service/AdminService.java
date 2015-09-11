package com.sggw.service;

import com.sggw.bean.*;
import com.sggw.dao.AdminDao;
import com.sggw.model.SggwModel;

import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-11
 * Time: 下午3:10
 * To change this template use File | Settings | File Templates.
 */
public class AdminService {
    private AdminDao dao = new AdminDao();

    /**
     * 页面初始化页面
     * @return
     * @throws Exception
     */
    public List<Object> init() throws Exception {
        return dao.init();
    }

    public boolean isChecked(SggwModel model) {
        return true;
    }

    public void addCase(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        dao.addCase(model);
    }

    public void addPress(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        dao.addPress(model);
    }

    public List<LawyerBean> qryLawyerInfo(SggwModel model) throws Exception {
        return dao.qryLawyerInfo(model);
    }

    public void addCaseProgress(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        dao.addCaseProgress(model);
    }

    public void deleteCase(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        dao.deleteCase(model);
    }

    public void deletePress(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        dao.deletePress(model);
    }

    public void deleteProgress(SggwModel model) throws Exception {
        dao.deleteProgress(model);
    }

    public void inputNews(SggwModel model) throws Exception {
        dao.inputNews(model);
    }

    public List<NewsBean> qryNews() throws Exception {
        return dao.qryNews();
    }

    public void deleteNews(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        dao.deleteNews(model);
    }

    public NewsBean qryOneNews(SggwModel model) throws Exception {
        return dao.qryOneNews(model);
    }

    public void modifyNews(SggwModel model) throws Exception {
        dao.modifyNews(model);
    }

    public void modifyCase(SggwModel model) throws Exception {
        dao.modifyCase(model);
    }

    public void modifyPress(SggwModel model) throws Exception {
        dao.modifyPress(model);
    }

    public void addAdviser(SggwModel model) throws Exception {
        dao.addAdviser(model);
    }

    public List<NewsAttrBean> qryProgress(SggwModel model) throws Exception {
        return dao.qryProgress(model);
    }

    public void modifyProgress(SggwModel model) throws Exception {
        dao.modifyProgress(model);
    }

    public void addServArea(SggwModel model) throws Exception {
        dao.addServArea(model);
    }

    public List<ProvinceBean> qryProvince() throws Exception {
        return dao.qryProvince();
    }

    public void jihuo(SggwModel model) throws Exception {
        dao.jihuo(model);
    }

    public List<ProvinceBean> qryActiveProvince() throws Exception {
        return dao.qryActiveProvince();
    }

    public List<ServAreaBean> qryServAreas() throws Exception {
        return dao.qryServAreas();
    }

    public void modifServArea(SggwModel model) throws Exception {
        dao.modifServArea(model);
    }

    public void deleteServArea(SggwModel model) throws Exception {
        dao.deleteServArea(model);
    }

    public List<ServAreaBean> qryServAreas(SggwModel model) throws Exception {
        return dao.qryServAreas(model);
    }

    public List<KeywordBean> qryKeywords() throws Exception {
        return dao.qryKeywords();
    }

    /**
     * 查询页面关键字
     *
     * @return
     * @throws Exception
     */
    public Map<String, String> qryPageKeywords() throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        for (KeywordBean keywordBean : qryKeywords()) {
            map.put(keywordBean.getPagename(), keywordBean.getKeyword());
        }
        return map;
    }

    public void addKeyword(SggwModel model) throws Exception {
        dao.addKeyword(model);
    }

    public void deleteKeyword(SggwModel model) throws Exception {
        dao.deleteKeyword(model);
    }

    public void modifyKeyword(SggwModel model) throws Exception {
        dao.modifyKeyword(model);
    }

    public KeywordBean qryKeyword(SggwModel model) throws Exception {
        return dao.qryKeyword(model);
    }

    public InterestBean qryInterest(SggwModel model) throws Exception {
        return dao.qryInterest(model);
    }

    public List<InterestBean> qryInterests() throws Exception {
        /*List<InterestBean> list = new ArrayList();
        InterestBean interestBean = new InterestBean();
        interestBean.setId(1);
        interestBean.setPageName("zyjs");
        interestBean.setTitle("专业技术在交通事故处理中的作用");
        interestBean.setUrl("zyjs.action");
        list.add(interestBean);
        InterestBean interestBean2 = new InterestBean();
        interestBean2.setId(1);
        interestBean2.setPageName("zyjs");
        interestBean2.setTitle("专业技术在交通事故处理中的作用");
        interestBean2.setUrl("zyjs.action");
        list.add(interestBean2);
        InterestBean interestBean3 = new InterestBean();
        interestBean3.setId(1);
        interestBean3.setPageName("zyjs");
        interestBean3.setTitle("专业技术在交通事故处理中的作用");
        interestBean3.setUrl("zyjs.action");
        list.add(interestBean3);
        InterestBean interestBean4 = new InterestBean();
        interestBean4.setId(1);
        interestBean4.setPageName("zyjs");
        interestBean4.setTitle("专业技术在交通事故处理中的作用");
        interestBean4.setUrl("zyjs.action");
        list.add(interestBean4);
        InterestBean interestBean5 = new InterestBean();
        interestBean5.setId(1);
        interestBean5.setPageName("zyjs");
        interestBean5.setTitle("专业技术在交通事故处理中的作用");
        interestBean5.setUrl("zyjs.action");
        list.add(interestBean5);
        return list;*/
        return dao.qryInterests();
    }

    public List<InterestBean> qryHotInterests(int number) throws Exception {
        return dao.qryHotInterests(number);
    }

    public void addInterest(SggwModel model) throws Exception {
        dao.addInterest(model);
    }

    public void modifyInterest(SggwModel model) throws Exception {
        dao.modifyInterest(model);
    }

    public void deleteInterest(SggwModel model) throws Exception {
        dao.deleteInterest(model);
    }

    public void addLawyer(SggwModel model) throws Exception {
        dao.addLawyer(model);
    }

    public List<LawyerBean> qryLawyers() throws Exception {
        return dao.qryLawyers();
    }

    public void modifyLawyer(SggwModel model) throws Exception {
        dao.modifyLawyer(model);
    }

    public void deleteLawyer(SggwModel model) throws Exception {
        dao.deleteLawyer(model);
    }

    public void addStaff(SggwModel model) throws Exception {
        dao.addStaff(model);
    }

    public void modifyStaff(SggwModel model) throws Exception {
        dao.modifyStaff(model);
    }

    public List<StaffBean> qryStaff() throws Exception {
        return dao.qryStaff();
    }

    public void deleteStaff(SggwModel model) throws Exception {
        dao.deleteStaff(model);
    }

    public List<TellAdviseBean> qryTsjy() throws Exception {
        return dao.qryTsjy();
    }

    public List<NeedHelpBean> qryNeedHelp() throws Exception {
        return dao.qryNeedHelp();
    }

    public List<DjlsBean> qryLsdj() throws Exception {
        return dao.qryLsdj();
    }

    public void deleteLsdj(SggwModel model) throws Exception {
        dao.deleteLsdj(model);
    }

    public void deleteTsjy(SggwModel model) throws Exception {
        dao.deleteTsjy(model);
    }

    public void deleteNeedHelp(SggwModel model) throws Exception {
        dao.deleteNeedHelp(model);
    }

    public List<NeedHelpBean> qryNeedHelpToday() throws Exception {
        return dao.qryNeedHelpToday();
    }

    public List<TjTjBean> qryTjtj() throws Exception {
        return dao.qryTjtj();
    }

    public AdminDao getDao() {
        return dao;
    }

    public void setDao(AdminDao dao) {
        this.dao = dao;
    }

    public void addNewAsk(SggwModel model) throws Exception {
        dao.addNewAsk(model);
    }

    public List<NewAskBean> qryNewAsk() throws Exception {
        return dao.qryNewAsk();
    }

    public void deleteNewAsk(SggwModel model) throws Exception {
        dao.deleteNewAsk(model);
    }

    public void modifyNewAsk(SggwModel model) throws Exception {
        dao.modifyNewAsk(model);
    }

    public List<NewAskBean> qryNewAskLimit(int limit) throws Exception {
        return dao.qryNewAskLimit(limit);
    }

    public List<ModelBean> qryModelLinkLimit(int limit, String type) throws Exception {
        return dao.qryModelLinkLimit(limit, type);
    }

    public void addLink(SggwModel model) throws Exception {
        dao.addLink(model);
    }

    public List<ModelBean> qryModelLink() throws Exception {
        return dao.qryModelLink();
    }

    public void deleteModelLink(SggwModel model) throws Exception {
        dao.deleteModelLink(model);
    }

    public void modifyModelLink(SggwModel model) throws Exception {
        dao.modifyModelLink(model);
    }

    public List<ModelBean> qryModelLinkByType(String type) throws Exception {
        return dao.qryModelLinkByType(type);
    }
}
