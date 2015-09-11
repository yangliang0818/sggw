package com.sggw.service;

import com.sggw.bean.*;
import com.sggw.dao.AdminDao;
import com.sggw.dao.SggwDao;
import com.sggw.model.SggwModel;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-9-26
 * Time: 下午11:08
 * To change this template use File | Settings | File Templates.
 */
public class SggwService {
    private SggwDao dao = new SggwDao();
    private AdminDao adminDao = new AdminDao();

    public List<HzlsBean> qryHzls() throws Exception {
        //1.查询数据
        return dao.qryHzls();
    }

    public List<NewsBean> qryNews() throws Exception {
        return dao.qryNews();
    }

    public List<PressBean> qryPress() throws Exception {
        return dao.qryPress();
    }

    public List<PressBean> qryPressLimit(int limit) throws Exception {
        return dao.qryPressLimit(limit);
    }

    public List<NewsBean> qryNewss() throws Exception {
        return dao.qryNewss();
    }

    public NewsBean qryNewsArea(SggwModel model) throws Exception {
        return dao.qryNewsArea(model);
    }

    public NewsBean qryOneNews(SggwModel model) throws Exception {
        return adminDao.qryOneNews(model);
    }

    public List<NewsBean> qryNewsAndAttr() throws Exception {
        return dao.qryNewsAndAttr();
    }


    public void addTellAndAdvise(SggwModel model) throws Exception {
        dao.addTellAndAdvise(model);
    }

    public List<ShiguwenBean> qryShiguwen() throws Exception {
        return dao.qryShiguwen();
    }

    public void addShiguwen(SggwModel model) throws Exception {
        dao.addShiguwen(model);
    }

    public void addDjls(SggwModel model) throws Exception {
        dao.addDjls(model);
    }

    public void addNeedHelp(SggwModel model) throws Exception {
        dao.addNeedHelp(model);
    }

    public void addTjTj(TjTjBean tjTjBean) throws Exception {
        dao.addTjTj(tjTjBean);
    }
}
