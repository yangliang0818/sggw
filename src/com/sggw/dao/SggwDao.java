package com.sggw.dao;

import com.sggw.bean.*;
import com.sggw.constant.Dates;
import com.sggw.model.SggwModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-9-26
 * Time: 下午11:08
 * To change this template use File | Settings | File Templates.
 */
public class SggwDao extends BaseDao {
    public List<HzlsBean> qryHzls() throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<HzlsBean> hzls = new ArrayList<HzlsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from hzls");
        while (rs.next()) {
            HzlsBean hzlsBean = new HzlsBean();
            hzlsBean.setId(rs.getInt("id"));
            hzlsBean.setName(rs.getString("name"));
            hzlsBean.setArea(rs.getString("area"));
            hzlsBean.setNumber(rs.getString("number"));
            hzlsBean.setAddress(rs.getString("address"));
            hzlsBean.setTel(rs.getString("tel"));
            hzlsBean.setEmail(rs.getString("email"));
            hzlsBean.setWebsite(rs.getString("website"));
            hzlsBean.setImageName(rs.getString("imagename"));
            hzls.add(hzlsBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return hzls;
    }

    public List<NewsBean> qryNewss() throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<NewsBean> news = new ArrayList<NewsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from newss order by newsDate desc");
        while (rs.next()) {
            NewsBean newsBean = new NewsBean();
            newsBean.setId(rs.getInt("id"));
            newsBean.setTitle(rs.getString("title"));
            newsBean.setNewsDate(rs.getString("newsDate"));
            news.add(newsBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return news;
    }

    public List<NewsBean> qryNews() throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<NewsBean> news = new ArrayList<NewsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from news order by newsDate desc");
        while (rs.next()) {
            NewsBean newsBean = new NewsBean();
            newsBean.setId(rs.getInt("id"));
            newsBean.setArea(rs.getString("area"));
            newsBean.setTitle(rs.getString("title"));
            newsBean.setContent(rs.getString("content"));
            newsBean.setNewsDate(rs.getString("newsDate"));
            news.add(newsBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return news;
    }

    /**
     * 查询新闻
     *
     * @return
     * @throws Exception
     */
    public List<PressBean> qryPress() throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<PressBean> pressBeans = new ArrayList<PressBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select id,area,title,content,newsDate from press order by newsDate desc");
        int i = 0;
        while (rs.next()) {
            PressBean pressBean = new PressBean();
            pressBean.setIndex(i++);
            pressBean.setId(rs.getInt("id"));
            pressBean.setArea(rs.getString("area"));
            pressBean.setTitle(rs.getString("title"));
            pressBean.setContent(rs.getString("content"));
            pressBean.setNewsDate(rs.getString("newsDate"));
            pressBeans.add(pressBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return pressBeans;
    }
    /**
     * 查询新闻
     *
     * @return
     * @throws Exception
     */
    public List<PressBean> qryPressLimit(int limit) throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<PressBean> pressBeans = new ArrayList<PressBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select id,area,title,content,newsDate from press order by newsDate desc limit "+limit);
        int i = 0;
        while (rs.next()) {
            PressBean pressBean = new PressBean();
            pressBean.setIndex(i++);
            pressBean.setId(rs.getInt("id"));
            pressBean.setArea(rs.getString("area"));
            pressBean.setTitle(rs.getString("title"));
            pressBean.setContent(rs.getString("content"));
            pressBean.setNewsDate(rs.getString("newsDate"));
            pressBeans.add(pressBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return pressBeans;
    }

    /**
     * 查询案例及其进展
     *
     * @return
     * @throws Exception
     */
    public List<NewsBean> qryNewsAndAttr() throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<NewsBean> news = new ArrayList<NewsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select a.id,a.title,b.id attrid,b.attrdate,b.attrarea from news A JOIN newsattr B ON A.ID=B.NEWSID order by attrdate desc");
        int i = 0;
        while (rs.next()) {
            NewsBean newsBean = new NewsBean();
            newsBean.setId(rs.getInt("id"));
            newsBean.setTitle(rs.getString("title"));
            newsBean.setAttrId(rs.getString("attrid"));
            newsBean.setNewsDate(rs.getString("attrdate"));
            newsBean.setContent(rs.getString("attrarea"));
            newsBean.setIndex(i++);
            news.add(newsBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return news;
    }

    public NewsBean qryNewsArea(SggwModel model) throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        NewsBean newsBean = new NewsBean();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from news where id=" + model.getId());
        while (rs.next()) {
            newsBean.setId(rs.getInt("id"));
            newsBean.setArea(rs.getString("area"));
            newsBean.setTitle(rs.getString("title"));
            newsBean.setContent(rs.getString("content"));
            newsBean.setNewsDate(rs.getString("newsDate"));
            Statement attrstmt = conn.createStatement();
            ResultSet attrRs = attrstmt.executeQuery("select * from newsattr where newsid=" + model.getId() + " order by attrDate desc");
            while (attrRs.next()) {
                NewsAttrBean attrBean = new NewsAttrBean();
                attrBean.setId(attrRs.getInt("id"));
                attrBean.setNewsid(model.getId());
                attrBean.setAttrArea(attrRs.getString("attrArea"));
                attrBean.setAttrDate(attrRs.getString("attrDate"));
                newsBean.add(attrBean);
            }
            attrstmt.close();
            attrRs.close();
        }
        conn.close();
        stmt.close();
        rs.close();
        return newsBean;
    }

    /**
     * 查询留言消息
     *
     * @return
     * @throws Exception
     */
    public List<ShiguwenBean> qryShiguwen() throws Exception {
        Connection conn = getConnnection();
        Statement stmt = null;
        ResultSet rs = null;
        List<ShiguwenBean> shiguwens = new ArrayList<ShiguwenBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select id,ifToll,duty,ifHaveContro,accidentJudge," +
                "judgeIfContro,accidentIfContro,phone,content from shiguwen");
        while (rs.next()) {
            ShiguwenBean shiguwenBean = new ShiguwenBean();
            shiguwenBean.setId(rs.getInt("id"));
            shiguwenBean.setIfToll(rs.getString("ifToll"));
            shiguwenBean.setDuty(rs.getString("duty"));
            shiguwenBean.setIfHaveContro(rs.getString("ifHaveContro"));
            shiguwenBean.setAccidentIfContro(rs.getString("accidentJudge"));
            shiguwenBean.setJudgeIfContro(rs.getString("judgeIfContro"));
            shiguwenBean.setAccidentIfContro(rs.getString("accidentIfContro"));
            shiguwenBean.setPhone(rs.getString("phone"));
            shiguwenBean.setContent(rs.getString("content"));
            shiguwens.add(shiguwenBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return shiguwens;
    }

    /**
     * 添加投诉建议
     *
     * @param model
     * @throws Exception
     */
    public void addTellAndAdvise(SggwModel model) throws Exception {
        String sql = "insert into tsjy(type,name,phone,content,date)" +
                "values(?,?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement prestat = conn.prepareStatement(sql);
        prestat.setString(1, model.getNtype());
        prestat.setString(2, model.getName());
        prestat.setString(3, model.getPhone());
        prestat.setString(4, model.getContent());
        prestat.setString(5, Dates.getDateTime());
        prestat.executeUpdate();
        close(prestat, conn);
    }

    /**
     * 添加遇到事故你就问
     *
     * @param model
     * @throws Exception
     */
    public void addShiguwen(SggwModel model) throws Exception {
        String sql = "insert into shiguwen(ifToll,duty,ifHaveContro,accidentJudge,judgeIfContro,accidentIfContro,phone,content)" +
                "values(?,?,?,?,?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement prestat = conn.prepareStatement(sql);
        prestat.setString(1, model.getIfToll());
        prestat.setString(2, model.getDuty());
        prestat.setString(3, model.getIfHaveContro());
        prestat.setString(4, model.getAccidentJudge());
        prestat.setString(5, model.getJudgeIfContro());
        prestat.setString(6, model.getAccidentIfContro());
        prestat.setString(7, model.getPhone());
        prestat.setString(8, model.getContent());
        prestat.executeUpdate();
        close(prestat, conn);
    }

    /**
     * 登记律师
     *
     * @param model
     * @throws Exception
     */
    public void addDjls(SggwModel model) throws Exception {
        String sql = "insert into djls(name,phone,lsname,province,city,country,date)" +
                "values(?,?,?,?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement prestat = conn.prepareStatement(sql);
        prestat.setString(1, model.getName());
        prestat.setString(2, model.getPhone());
        prestat.setString(3, model.getLsname());
        prestat.setString(4, model.getProvince());
        prestat.setString(5, model.getCity());
        prestat.setString(6, model.getCountry());
        prestat.setString(7, Dates.getDateTime());
        prestat.executeUpdate();
        close(prestat, conn);
    }

    /**
     * 添加所需帮助
     *
     * @param model
     * @throws Exception
     */
    public void addNeedHelp(SggwModel model) throws Exception {
        String sql = "insert into needhelp(ntype,qtype,name,phone,province,city,country,content,date,mail)" +
                "values(?,?,?,?,?,?,?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement prestat = conn.prepareStatement(sql);
        prestat.setString(1, model.getNtype());
        prestat.setString(2, model.getQtype());
        prestat.setString(3, model.getName());
        prestat.setString(4, model.getPhone());
        prestat.setString(5, model.getProvince());
        prestat.setString(6, model.getCity());
        prestat.setString(7, model.getCountry());
        prestat.setString(8, model.getContent());
        prestat.setString(9, Dates.getDateTime());
        prestat.setString(10, model.getMail());
        prestat.executeUpdate();
        close(prestat, conn);
    }

    /**
     * @param model
     * @return
     * @throws Exception
     */
    public List<NeedHelpBean> qryNeedHelp() throws Exception {
        Connection conn = getConnnection();
        Statement stmt = null;
        ResultSet rs = null;
        List<NeedHelpBean> needHelpBeans = new ArrayList<NeedHelpBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select id,ntype,qtype,name,phone," +
                "mail,province,city,country,content from needhelp");
        while (rs.next()) {
            NeedHelpBean needHelpBean = new NeedHelpBean();
            needHelpBean.setId(rs.getInt("id"));
            needHelpBean.setNtype(rs.getString("ntype"));
            needHelpBean.setQtype(rs.getString("qtype"));
            needHelpBean.setName(rs.getString("name"));
            needHelpBean.setPhone(rs.getString("phone"));
            needHelpBean.setMail(rs.getString("mail"));
            needHelpBean.setProvince(rs.getString("province"));
            needHelpBean.setCity(rs.getString("city"));
            needHelpBean.setCountry(rs.getString("country"));
            needHelpBean.setContent(rs.getString("content"));
            needHelpBeans.add(needHelpBean);
        }
        conn.close();
        stmt.close();
        rs.close();
        return needHelpBeans;
    }

    /**
     * 添加数据提交统计信息
     *
     * @param model
     * @throws Exception
     */
    public void addTjTj(TjTjBean tjTjBean) throws Exception {
        String sql = "insert into tjtj(type,ttime,stime,tstime)" +
                "values(?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement prestat = conn.prepareStatement(sql);
        prestat.setString(1, tjTjBean.getType());
        prestat.setString(2, tjTjBean.getTtime());
        prestat.setString(3, tjTjBean.getStime());
        prestat.setString(4, tjTjBean.getTstime());
        prestat.executeUpdate();
        close(prestat, conn);
    }
}
