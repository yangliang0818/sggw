package com.sggw.dao;

import com.sggw.bean.*;
import com.sggw.constant.Dates;
import com.sggw.constant.Objects;
import com.sggw.constant.Strings;
import com.sggw.model.SggwModel;

import java.net.UnknownHostException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-11
 * Time: 下午3:09
 * To change this template use File | Settings | File Templates.
 */
public class AdminDao extends BaseDao {
    /**
     * 添加案例
     *
     * @param model
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void addCase(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        String sql = "insert into news(area,title,content,newsDate) values ('" + model.getArea() + "','" +
                model.getTitle() + "','" + model.getContent() + "','" + model.getDate() + "')";
        executeUpdate(sql);
    }

    /**
     * 添加案例
     *
     * @param model
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void addPress(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        String sql = "insert into press(area,title,content,newsDate) values ('" + model.getArea() + "','" +
                model.getTitle() + "','" + model.getContent() + "','" + model.getDate() + "')";
        executeUpdate(sql);
    }

    /**
     * 添加案例进展
     *
     * @param model
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void addCaseProgress(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        String sql = "insert into newsattr(newsid,attrDate,attrarea) values  ('" + model.getId() + "','" + model.getDate() + "','" + model.getContent() + "')";
        executeUpdate(sql);
    }

    /**
     * 删除案例
     *
     * @param model
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void deleteCase(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        String sql = "delete from newsattr where newsid=" + model.getId();
        executeDelete(sql);
        String sql2 = "delete from news where id=" + model.getId();
        executeDelete(sql2);
    }

    /**
     * 删除新闻
     *
     * @param model
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void deletePress(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        String sql = "delete from press where id=" + model.getId();
        executeDelete(sql);
    }

    /**
     * 删除案例进展
     *
     * @param model
     * @throws Exception
     */
    public void deleteProgress(SggwModel model) throws Exception {
        String sql2 = "delete from newsattr where id=" + model.getId();
        executeDelete(sql2);
    }

    /**
     * 添加案情
     *
     * @param model
     * @throws Exception
     */
    public void inputNews(SggwModel model) throws Exception {
        String sql = "insert into newss(title,content,newsDate) values (" + "'" + model.getTitle() + "','"
                + model.getContent() + "','" + model.getDate() + "')";
        executeUpdate(sql);
    }

    /**
     * 查询新闻
     *
     * @return
     * @throws Exception
     */
    public List<NewsBean> qryNews() throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<NewsBean> news = new ArrayList<NewsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from newss order by newsDate desc ");
        while (rs.next()) {
            NewsBean newsBean = new NewsBean();
            newsBean.setId(rs.getInt("id"));
            newsBean.setContent(rs.getString("content"));
            newsBean.setTitle(rs.getString("title"));
            newsBean.setNewsDate(rs.getString("newsDate"));
            news.add(newsBean);
        }
        close(stmt, conn, rs);
        return news;
    }

    /**
     * 删除新闻
     *
     * @param model
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void deleteNews(SggwModel model) throws ClassNotFoundException, SQLException, UnknownHostException {
        String sql2 = "delete from newss where id=" + model.getId();
        executeDelete(sql2);
    }

    /**
     * 查询新闻
     *
     * @param model
     * @return
     * @throws Exception
     */
    public NewsBean qryOneNews(SggwModel model) throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<NewsBean> news = new ArrayList<NewsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select a.id,a.attrDate,a.newsid,a.attrArea,b.title from newsattr a join news b on a.newsid=b.id and  a.id=" + model.getId());
        NewsBean newsBean = new NewsBean();
        while (rs.next()) {
            newsBean.setId(rs.getString("newsid"));
            newsBean.setContent(rs.getString("attrArea"));
            newsBean.setTitle(rs.getString("title"));
            newsBean.setNewsDate(rs.getString("attrDate"));
            newsBean.setAttrId(rs.getString("id"));
        }
        close(stmt, conn, rs);
        return newsBean;
    }

    /**
     * 修改新闻
     *
     * @param model
     * @throws Exception
     */
    public void modifyNews(SggwModel model) throws Exception {
        String sql = "update newss set title='" + model.getTitle() + "'," +
                "content='" + model.getContent()
                + "',newsDate='" + model.getDate() + "' where id=" + model.getId();
        executeUpdate(sql);
    }

    /**
     * 修改案例
     *
     * @param model
     * @throws Exception
     */
    public void modifyCase(SggwModel model) throws Exception {
        String sql = "update news set title='" + model.getTitle() + "'," +
                "content='" + model.getContent()
                + "',newsDate='" + model.getDate() + "' where id=" + model.getId();
        executeUpdate(sql);
    }

    /**
     * 修改新闻
     *
     * @param model
     * @throws Exception
     */
    public void modifyPress(SggwModel model) throws Exception {
        String sql = "update press set title='" + model.getTitle() + "'," +
                "content='" + model.getContent()
                + "',newsDate='" + model.getDate() + "' where id=" + model.getId();
        executeUpdate(sql);
    }

    /**
     * 添加专家顾问
     *
     * @param model
     * @throws Exception
     */
    public void addAdviser(SggwModel model) throws Exception {
        String sql = "insert into adviser(name,content) values (" + "'" + model.getName() + "','"
                + model.getContent() + "')";
        executeUpdate(sql);
    }

    /**
     * 查询案例进展
     *
     * @param model
     * @return
     * @throws Exception
     */
    public List<NewsAttrBean> qryProgress(SggwModel model) throws Exception {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<NewsAttrBean> news = new ArrayList<NewsAttrBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from newsattr where newsid =" + model.getId());
        while (rs.next()) {
            NewsAttrBean newsBean = new NewsAttrBean();
            newsBean.setId(rs.getInt("id"));
            newsBean.setNewsid(rs.getString("newsid"));
            newsBean.setAttrArea(rs.getString("attrArea"));
            newsBean.setAttrDate(rs.getString("attrDate"));
            news.add(newsBean);
        }
        close(stmt, conn, rs);
        return news;
    }

    /**
     * 修改案例进展
     *
     * @param model
     * @throws Exception
     */
    public void modifyProgress(SggwModel model) throws Exception {
        String sql = "update newsattr set attrDate= '" + model.getDate()
                + "',attrArea='" + model.getContent() + "' where id='" + model.getId() + "'";
        executeUpdate(sql);
    }

    /**
     * 添加接待点
     *
     * @param model
     * @throws Exception
     */
    public void addServArea(SggwModel model) throws Exception {
        String sql = "insert into servarea (province,areaname,address,phone) values(?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement prestat = conn.prepareStatement(sql);
        prestat.setString(1, model.getProvince());
        prestat.setString(2, model.getArea());
        prestat.setString(3, model.getAddress());
        prestat.setString(4, model.getPhone());
        prestat.executeUpdate();
        close(prestat, conn);
    }

    /**
     * 查询省份信息
     *
     * @return
     * @throws Exception
     */
    public List<ProvinceBean> qryProvince() throws Exception {
        List list = new ArrayList();
        String sql = "select id,simplename,name,status from province";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            ProvinceBean provinceBean = new ProvinceBean();
            provinceBean.setId(rs.getInt(1));
            provinceBean.setSimplename(rs.getString(2));
            provinceBean.setName(rs.getString(3));
            provinceBean.setStatus(rs.getString(4));
            list.add(provinceBean);
        }
        close(statement, conn, rs);
        return list;
    }

    /**
     * 查询已激活的省份
     *
     * @return
     * @throws Exception
     */
    public List<ProvinceBean> qryActiveProvince() throws Exception {
        List list = new ArrayList();
        String sql = "select id,simplename,name,status from province where status='已激活'";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            ProvinceBean provinceBean = new ProvinceBean();
            provinceBean.setId(rs.getInt(1));
            provinceBean.setSimplename(rs.getString(2));
            provinceBean.setName(rs.getString(3));
            provinceBean.setStatus(rs.getString(4));
            list.add(provinceBean);
        }
        close(statement, conn, rs);
        return list;
    }

    /**
     * 激活去激活
     *
     * @param model
     * @throws Exception
     */
    public void jihuo(SggwModel model) throws Exception {
        String sql = "update province set status=? where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getContent());
        statement.setString(2, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 查询接待点
     *
     * @return
     * @throws Exception
     */
    public List<ServAreaBean> qryServAreas() throws Exception {
        List list = new ArrayList();
        Connection conn = getConnnection();
        String sql = "select a.id,a.province,b.name,a.areaname,a.address,a.phone from servarea a join province b" +
                " on a.province=b.simplename order by province,areaname";
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            ServAreaBean servAreaBean = new ServAreaBean();
            servAreaBean.setId(rs.getInt(1));
            servAreaBean.setSimpleName(rs.getString(2));
            servAreaBean.setProvince(rs.getString(3));
            servAreaBean.setAreaName(rs.getString(4));
            servAreaBean.setAddress(rs.getString(5));
            servAreaBean.setPhone(rs.getString(6));
            list.add(servAreaBean);
        }
        close(statement, conn, rs);
        return list;
    }

    /**
     * 查询接待点
     *
     * @return
     * @throws Exception
     */
    public List<ServAreaBean> qryServAreas(SggwModel model) throws Exception {
        List list = new ArrayList();
        Connection conn = getConnnection();
        String sql = "select a.id,a.province,b.name,a.areaname,a.address,a.phone from servarea a join province b" +
                " on a.province=b.simplename and a.province=? order by province,areaname";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getProvince());
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            ServAreaBean servAreaBean = new ServAreaBean();
            servAreaBean.setId(rs.getInt(1));
            servAreaBean.setSimpleName(rs.getString(2));
            servAreaBean.setProvince(rs.getString(3));
            servAreaBean.setAreaName(rs.getString(4));
            servAreaBean.setAddress(rs.getString(5));
            servAreaBean.setPhone(rs.getString(6));
            list.add(servAreaBean);
        }
        close(statement, conn, rs);
        return list;
    }

    /**
     * 更新接待近信息
     *
     * @throws Exception
     */
    public void modifServArea(SggwModel model) throws Exception {
        String sql = "update servarea set province=?,areaname=?,address=?,phone=? where id =? ";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getProvince());
        statement.setString(2, model.getArea());
        statement.setString(3, model.getAddress());
        statement.setString(4, model.getPhone());
        statement.setString(5, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 删除接待点信息
     *
     * @param model
     * @throws Exception
     */
    public void deleteServArea(SggwModel model) throws Exception {
        String sql = "delete from servarea where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 查询关键词
     *
     * @return
     * @throws Exception
     */
    public List<KeywordBean> qryKeywords() throws Exception {
        String sql = "select id,title,pagename,keyword from keywords";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        List list = qryKeywords(rs);
        close(statement, conn, rs);
        return list;
    }

    /**
     * 查询关键词逻辑
     *
     * @param conn
     * @param statement
     * @param rs
     * @param sql
     * @return
     * @throws Exception
     */
    public List<KeywordBean> qryKeywords(ResultSet rs) throws Exception {
        List list = new ArrayList();
        while (rs.next()) {
            KeywordBean keywordBean = new KeywordBean();
            keywordBean.setId(rs.getInt("id"));
            keywordBean.setTitle(rs.getString("title"));
            keywordBean.setPagename(rs.getString("pagename"));
            keywordBean.setKeyword(rs.getString("keyword"));
            list.add(keywordBean);
        }
        return list;
    }

    private List qryPageInfo() throws Exception {
        List list = new ArrayList();
        return list;
    }

    /**
     * 添加关键词
     *
     * @param model
     * @throws Exception
     */
    public void addKeyword(SggwModel model) throws Exception {
        String sql = "insert into keywords(title,pagename,keyword) values(?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getTitle());
        statement.setString(2, model.getPagename());
        statement.setString(3, model.getKeyword());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 删除关键字
     *
     * @param model
     * @throws Exception
     */
    public void deleteKeyword(SggwModel model) throws Exception {
        String sql = "delete from keywords where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 修改关键字
     *
     * @param model
     * @throws Exception
     */
    public void modifyKeyword(SggwModel model) throws Exception {
        String sql = "update keywords set title=?,pagename=?,keyword=? where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getTitle());
        statement.setString(2, model.getPagename());
        statement.setString(3, model.getKeyword());
        statement.setString(4, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 查询关键字
     *
     * @param model
     * @return
     * @throws Exception
     */
    public KeywordBean qryKeyword(SggwModel model) throws Exception {
        KeywordBean keywordBean = new KeywordBean();
        String sql = "select id,title,pagename,keyword,number,model,date from keywords where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            keywordBean.setId(rs.getInt("id"));
            keywordBean.setTitle(rs.getString("title"));
            keywordBean.setPagename(rs.getString("pagename"));
            keywordBean.setKeyword(rs.getString("keyword"));
        }
        return keywordBean;
    }

    /**
     * 查询感兴趣的内容
     *
     * @return
     * @throws Exception
     */
    public List<InterestBean> qryInterests() throws Exception {
        String sql = "select id,pagename,title,url,number,date,model from interest order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        List<InterestBean> interestBeans = qryInterests(rs);
        close(statement, conn, rs);
        return interestBeans;
    }

    /**
     * 查询感兴趣的内容
     *
     * @return
     * @throws Exception
     */
    public List<InterestBean> qryInterests(ResultSet rs) throws Exception {
        List<InterestBean> interestBeans = new ArrayList<InterestBean>();
        while (rs.next()) {
            InterestBean interestBean = new InterestBean();
            interestBean.setId(rs.getInt("id"));
            interestBean.setPageName(rs.getString("pagename"));
            interestBean.setTitle(rs.getString("title"));
            interestBean.setUrl(rs.getString("url"));
            interestBean.setNumber(rs.getInt("number"));
            interestBean.setDate(rs.getString("date"));
            interestBean.setModel(rs.getString("model"));
            interestBeans.add(interestBean);
        }
        return interestBeans;
    }

    /**
     * 查询最热的几篇文章
     *
     * @return
     * @throws Exception
     */
    public List<InterestBean> qryHotInterests(int number) throws Exception {
        List<InterestBean> interestBeans = new ArrayList<InterestBean>();
        String sql = "select id,pagename,title,url,number,date,model from interest order by number desc limit ?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, number);
        ResultSet rs = statement.executeQuery();
        interestBeans = qryHotInterests(rs);
        close(statement, conn, rs);
        return interestBeans;
    }

    /**
     * 查询最热的几篇文章
     *
     * @param conn
     * @param statement
     * @param rs
     * @param sql
     * @return
     * @throws Exception
     */
    public List<InterestBean> qryHotInterests(ResultSet rs) throws Exception {
        List<InterestBean> interestBeans = new ArrayList<InterestBean>();
        while (rs.next()) {
            InterestBean interestBean = new InterestBean();
            interestBean.setId(rs.getInt("id"));
            interestBean.setPageName(rs.getString("pagename"));
            interestBean.setTitle(rs.getString("title"));
            interestBean.setUrl(rs.getString("url"));
            interestBean.setNumber(rs.getInt("number"));
            interestBean.setDate(rs.getString("date"));
            interestBean.setModel(rs.getString("model"));
            interestBeans.add(interestBean);
        }
        return interestBeans;
    }

    /**
     * 查询感兴趣的内容
     *
     * @return
     * @throws Exception
     */
    public InterestBean qryInterest(SggwModel model) throws Exception {
        String sql = "select id,pagename,title,url,number,date,model from interest where id= ?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        ResultSet rs = statement.executeQuery();
        InterestBean interestBean = new InterestBean();
        while (rs.next()) {
            interestBean.setId(rs.getInt("id"));
            interestBean.setPageName(rs.getString("pagename"));
            interestBean.setTitle(rs.getString("title"));
            interestBean.setUrl(rs.getString("url"));
            interestBean.setNumber(rs.getInt("number"));
            interestBean.setDate(rs.getString("date"));
            interestBean.setModel(rs.getString("model"));
        }
        close(statement, conn, rs);
        return interestBean;
    }

    /**
     * 添加感兴趣内容
     *
     * @param model
     * @throws Exception
     */
    public void addInterest(SggwModel model) throws Exception {
        String sql = "insert into interest(pagename,title,url,date,number,model) values(?,?,?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        //页面名称
        statement.setString(1, model.getPagename());
        //页面文件名称
        statement.setString(2, model.getTitle());
        //页面地址
        statement.setString(3, model.getUrl());
        //录入时间
        statement.setString(4, Dates.getDateTime());
        //点击次数
        statement.setString(5, model.getNumber());
        //所属模块
        statement.setString(6, model.getModel());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 修改感兴趣你内容
     *
     * @param model
     * @throws Exception
     */
    public void modifyInterest(SggwModel model) throws Exception {
        String sql = "update interest set pagename=?,title=?,url=?,number=?,model=? where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getPagename());
        statement.setString(2, model.getTitle());
        statement.setString(3, model.getUrl());
        statement.setString(4, model.getNumber());
        statement.setString(5, model.getModel());
        statement.setInt(6, Integer.parseInt(model.getId()));
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 删除感兴趣内容
     *
     * @param model
     * @throws Exception
     */
    public void deleteInterest(SggwModel model) throws Exception {
        String sql = "delete from interest where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 添加律师跟进资料
     *
     * @throws Exception
     */
    public void addLawyer(SggwModel model) throws Exception {
        String sql = "insert into lawyer(name,area,fullname,number,phone,qq,mail," +
                "firstconntime,firstconnman,content,filepath)values (?,?,?,?,?,?,?,?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getName());
        statement.setString(2, model.getArea());
        statement.setString(3, model.getFullname());
        statement.setString(4, model.getNumber());
        statement.setString(5, model.getPhone());
        statement.setString(6, model.getQq());
        statement.setString(7, model.getMail());
        statement.setString(8, model.getFirstConnTime());
        statement.setString(9, model.getFirstConnMan());
        statement.setString(10, model.getContent());
        statement.setString(11, Objects.getFileName(model.getFileName()));
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * @return
     * @throws Exception
     */
    public List<LawyerBean> qryLawyers() throws Exception {
        List<LawyerBean> lawyerBeans = new ArrayList<LawyerBean>();
        String sql = "select id,name,area,fullname,number,phone,qq,mail,firstconntime,firstconnman,content,filepath from lawyer order by firstconntime desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            LawyerBean lawyerBean = new LawyerBean();
            lawyerBean.setId(rs.getInt("id"));
            lawyerBean.setName(rs.getString("name"));
            lawyerBean.setArea(rs.getString("area"));
            lawyerBean.setFullname(rs.getString("fullname"));
            lawyerBean.setNumber(rs.getString("number"));
            lawyerBean.setPhone(rs.getString("phone"));
            lawyerBean.setQq(rs.getString("qq"));
            lawyerBean.setMail(rs.getString("mail"));
            lawyerBean.setFirstConnTime(rs.getString("firstconntime"));
            lawyerBean.setFirstConnMan(rs.getString("firstconnman"));
            lawyerBean.setContent(rs.getString("content"));
            lawyerBean.setFilepath(rs.getString("filepath"));
            lawyerBeans.add(lawyerBean);
        }
        return lawyerBeans;
    }

    /**
     * @param model
     * @return
     * @throws Exception
     */
    public List<LawyerBean> qryLawyerInfo(SggwModel model) throws Exception {
        List list = new ArrayList();
        String sql = "select id,name,area,fullname,number,phone,qq,mail,firstconntime,firstconnman,content,filepath from lawyer where name like ? and area like ? and number like ? and phone like ?  ";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, getLikeValue(model.getName()));
        statement.setString(2, getLikeValue(model.getArea()));
        statement.setString(3, getLikeValue(model.getNumber()));
        statement.setString(4, getLikeValue(model.getPhone()));
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            LawyerBean lawyerBean = new LawyerBean();
            lawyerBean.setId(rs.getInt("id"));
            lawyerBean.setName(rs.getString("name"));
            lawyerBean.setArea(rs.getString("area"));
            lawyerBean.setFullname(rs.getString("fullname"));
            lawyerBean.setNumber(rs.getString("number"));
            lawyerBean.setPhone(rs.getString("phone"));
            lawyerBean.setQq(rs.getString("qq"));
            lawyerBean.setMail(rs.getString("mail"));
            lawyerBean.setFirstConnTime(rs.getString("firstconntime"));
            lawyerBean.setFirstConnMan(rs.getString("firstconnman"));
            lawyerBean.setContent(rs.getString("content"));
            lawyerBean.setFilepath(rs.getString("filepath"));
            list.add(lawyerBean);
        }
        return list;
    }

    private String getLikeValue(String str) {
        return "%" + str + "%";
    }

    /**
     * @param model
     * @return
     * @throws Exception
     */
    private int judgeParam(SggwModel model, StringBuilder builder) throws Exception {
        int i = 0;
        if (Strings.isEmpty(model.getName())) {
            builder.append("name like %" + model.getName() + "%");
            i++;
        }
        if (Strings.isEmpty(model.getArea())) {
            if (builder.toString().indexOf("and") != -1) {

            }
            i++;
        }
        return i;
    }

    /**
     * @throws Exception
     */
    public void modifyLawyer(SggwModel model) throws Exception {
        String sql = "update lawyer set name=?,area=?,fullname=?,number=?,phone=?,qq=?,mail=?,firstconntime=?,firstconnman=?,content=?,filepath=? where id =?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        Objects.setValue(statement, model.getName(), model.getArea(), model.getFullname(),
                model.getNumber(), model.getPhone(), model.getQq(), model.getMail(), model.getFirstConnTime(),
                model.getFirstConnMan(), model.getContent(), model.getMyFile().getName(), model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 删除律师资料
     *
     * @param model
     * @throws Exception
     */
    public void deleteLawyer(SggwModel model) throws Exception {
        String sql = "delete from lawyer where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        Objects.setValue(statement, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 添加员工信息
     *
     * @throws Exception
     */
    public void addStaff(SggwModel model) throws Exception {
        String sql = "insert into staff (name,phone,date,status) values(?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        Objects.setValue(statement, model.getName(), model.getPhone(), model.getDate(), model.getStatus());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 修改员工信息
     *
     * @throws Exception
     */
    public void modifyStaff(SggwModel model) throws Exception {
        String sql = "update staff set name=?,and phone=?,date=?,status=? where id =? ";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        Objects.setValue(statement, model.getName(), model.getPhone(), model.getDate(), model.getStatus(), model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 删除员工信息
     *
     * @param model
     * @throws Exception
     */
    public void deleteStaff(SggwModel model) throws Exception {
        String sql = "delete from staff where id =?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        Objects.setValue(statement, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * @return
     * @throws Exception
     */
    public List<StaffBean> qryStaff() throws Exception {
        List list = new ArrayList();
        String sql = "select id,name,phone,date,status from staff";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            StaffBean staffBean = new StaffBean();
            staffBean.setId(rs.getInt("id"));
            staffBean.setName(rs.getString("name"));
            staffBean.setPhone(rs.getString("phone"));
            staffBean.setDate(rs.getString("date"));
            staffBean.setStatus(rs.getString("status"));
            list.add(staffBean);
        }
        return list;
    }

    /**
     * 查询投诉建议
     *
     * @return
     * @throws Exception
     */
    public List<TellAdviseBean> qryTsjy() throws Exception {
        List<TellAdviseBean> tellAdviseBeans = new ArrayList<TellAdviseBean>();
        String sql = "select id,type,name,phone,content,date from tsjy order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            TellAdviseBean tellAdviseBean = new TellAdviseBean();
            tellAdviseBean.setId(rs.getInt("id"));
            tellAdviseBean.setType(rs.getString("type"));
            tellAdviseBean.setName(rs.getString("name"));
            tellAdviseBean.setPhone(rs.getString("phone"));
            tellAdviseBean.setContent(rs.getString("content"));
            tellAdviseBean.setDate(rs.getString("date"));
            tellAdviseBeans.add(tellAdviseBean);
        }
        return tellAdviseBeans;
    }

    /**
     * @param model
     * @throws Exception
     */
    public void deleteTsjy(SggwModel model) throws Exception {
        executeDelete("tsjy", model.getId());
    }

    /**
     * 查询今天的所需帮助
     * 即访客信息
     *
     * @return
     * @throws Exception
     */
    public List<NeedHelpBean> qryNeedHelpToday() throws Exception {
        List<NeedHelpBean> needHelpBeans = new ArrayList<NeedHelpBean>();
        String sql = "select id,ntype,qtype,name,phone,mail,province,city,country,content,date from needhelp where date like ? order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, "%" + Dates.getToday(Dates.DateType.Today) + "%");
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            NeedHelpBean needHelpBean = new NeedHelpBean();
            needHelpBean.setId(rs.getInt("id"));
            needHelpBean.setNtype(rs.getString("ntype"));
            needHelpBean.setQtype(rs.getString("qtype"));
            needHelpBean.setName(rs.getString("name"), "*");
            needHelpBean.setPhone(rs.getString("phone"));
            needHelpBean.setMail(rs.getString("mail"));
            needHelpBean.setProvince(rs.getString("province"), "省", "市", "特区");
            needHelpBean.setCity(rs.getString("city"));
            needHelpBean.setCountry(rs.getString("country"));
            needHelpBean.setContent(rs.getString("content"));
            needHelpBean.setDate(rs.getString("date"));
            needHelpBeans.add(needHelpBean);
        }
        return needHelpBeans;
    }

    /**
     * 查询所需帮助
     *
     * @return
     * @throws Exception
     */
    public List<NeedHelpBean> qryNeedHelp() throws Exception {
        List<NeedHelpBean> needHelpBeans = new ArrayList<NeedHelpBean>();
        String sql = "select id,ntype,qtype,name,phone,mail,province,city,country,content,date from needhelp order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
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
            needHelpBean.setDate(rs.getString("date"));
            needHelpBeans.add(needHelpBean);
        }
        return needHelpBeans;
    }

    /**
     * 删除所需帮助
     *
     * @param model
     */
    public void deleteNeedHelp(SggwModel model) throws Exception {
        executeDelete("needhelp", model.getId());

    }

    public List<DjlsBean> qryLsdj() throws Exception {
        List<DjlsBean> djlsBeans = new ArrayList<DjlsBean>();
        String sql = "select id,name,phone,lsname,province,city,country,date from djls order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            DjlsBean djlsBean = new DjlsBean();
            djlsBean.setId(rs.getInt("id"));
            djlsBean.setName(rs.getString("name"));
            djlsBean.setPhone(rs.getString("phone"));
            djlsBean.setLsname(rs.getString("lsname"));
            djlsBean.setProvince(rs.getString("province"));
            djlsBean.setCity(rs.getString("city"));
            djlsBean.setCountry(rs.getString("country"));
            djlsBean.setDate(rs.getString("date"));
            djlsBeans.add(djlsBean);
        }
        return djlsBeans;
    }

    /**
     * 删除登记律师
     *
     * @param model
     * @throws Exception
     */
    public void deleteLsdj(SggwModel model) throws Exception {
        executeDelete("djls", model.getId());
    }

    /**
     * 查看数据提交统计情况
     *
     * @return
     * @throws Exception
     */
    public List<TjTjBean> qryTjtj() throws Exception {
        List<TjTjBean> tjTjBeans = new ArrayList<TjTjBean>();
        String sql = "select id,type,ttime,stime,tstime from tjtj order by ttime desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            TjTjBean tjTjBean = new TjTjBean();
            tjTjBean.setId(rs.getInt("id"));
            tjTjBean.setType(rs.getString("type"));
            tjTjBean.setTtime(rs.getString("ttime"));
            tjTjBean.setStime(rs.getString("stime"));
            tjTjBean.setTstime(rs.getString("tstime"));
            tjTjBeans.add(tjTjBean);
        }
        return tjTjBeans;
    }

    /**
     * 添加最新咨询
     *
     * @param newAskBean
     * @throws Exception
     */
    public void addNewAsk(SggwModel model) throws Exception {
        String sql = "insert into newask(qtype,content,askdate,date) values(?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getQtype());
        statement.setString(2, model.getContent());
        statement.setString(3, Dates.getToday(model.getDate(), Dates.DateType.Today, Dates.DateType.TodayCN));
        statement.setString(4, Dates.getToday(Dates.DateType.DateTime));
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 查询最新咨询
     *
     * @return
     * @throws Exception
     */
    public List<NewAskBean> qryNewAsk() throws Exception {
        String sql = "select id,qtype,content,askdate,date from newask order by askdate desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        List<NewAskBean> newAskBeans = new ArrayList<NewAskBean>();
        while (rs.next()) {
            NewAskBean newAskBean = new NewAskBean();
            newAskBean.setId(rs.getInt("id"));
            newAskBean.setQtype(rs.getString("qtype"));
            newAskBean.setContent(rs.getString("content"));
            newAskBean.setAskdate(rs.getString("askdate"));
            newAskBean.setDate(rs.getString("date"));
            newAskBeans.add(newAskBean);
        }
        close(statement, conn, rs);
        return newAskBeans;
    }

    /**
     * 删除最新咨询
     *
     * @param model
     * @throws Exception
     */
    public void deleteNewAsk(SggwModel model) throws Exception {
        String sql = "delete from newask where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 更新最新咨询
     *
     * @param model
     * @throws Exception
     */
    public void modifyNewAsk(SggwModel model) throws Exception {
        String sql = "update newask set qtype=?, content=?, askdate=?, date=? where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getQtype());
        statement.setString(2, model.getContent());
        statement.setString(3, model.getDate());
        statement.setString(4, Dates.getToday(Dates.DateType.DateTime));
        statement.setString(5, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 限制条数查询最新咨询
     *
     * @param limit
     * @return
     * @throws Exception
     */
    public List<NewAskBean> qryNewAskLimit(int limit) throws Exception {
        String sql = "select id,qtype,content,askdate from newask order by askdate desc limit ?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, limit);
        ResultSet rs = statement.executeQuery();
        List<NewAskBean> newAskBeans = qryNewAskLimit(conn, statement, rs, sql);
        close(statement, conn, rs);
        return newAskBeans;
    }

    /**
     * 限制条数查询最新咨询
     *
     * @param limit
     * @return
     * @throws Exception
     */
    public List<NewAskBean> qryNewAskLimit(Connection conn, PreparedStatement statement, ResultSet rs, String sql) throws Exception {
        List<NewAskBean> newAskBeans = new ArrayList<NewAskBean>();
        while (rs.next()) {
            NewAskBean newAskBean = new NewAskBean();
            newAskBean.setId(rs.getShort("id"));
            newAskBean.setQtype(rs.getString("qtype"));
            newAskBean.setContent(rs.getString("content"));
            newAskBean.setAskdate(rs.getString("askdate"));
            newAskBeans.add(newAskBean);
        }
        return newAskBeans;
    }

    /**
     * 录入模块链接
     *
     * @param model
     * @throws Exception
     */
    public void addLink(SggwModel model) throws Exception {
        String sql = "insert into modellink(type,name,link,date) values (?,?,?,?)";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getQtype());
        statement.setString(2, model.getName());
        statement.setString(3, model.getAddress());
        statement.setString(4, Dates.getDateTime());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 查询模块链接内容
     *
     * @return
     * @throws Exception
     */
    public List<ModelBean> qryModelLink() throws Exception {
        String sql = "select distinct id,type,name,link,date from modellink order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        List<ModelBean> modelBeans = new ArrayList<ModelBean>();
        while (rs.next()) {
            ModelBean modelBean = new ModelBean();
            modelBean.setId(rs.getInt("id"));
            modelBean.setType(rs.getString("type"));
            modelBean.setName(rs.getString("name"));
            modelBean.setLink(rs.getString("link"));
            modelBean.setDate(rs.getString("date"));
            modelBeans.add(modelBean);
        }
        close(statement, conn, rs);
        return modelBeans;
    }

    /**
     * 根据模块类型查询模块链接内容
     *
     * @return
     * @throws Exception
     */
    public List<ModelBean> qryModelLinkByType(String type) throws Exception {
        String sql = "select distinct id,type,name,link,date from modellink where type=? order by date desc";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, type);
        ResultSet rs = statement.executeQuery();
        List<ModelBean> modelBeans = new ArrayList<ModelBean>();
        while (rs.next()) {
            ModelBean modelBean = new ModelBean();
            modelBean.setId(rs.getInt("id"));
            modelBean.setType(rs.getString("type"));
            modelBean.setName(rs.getString("name"));
            modelBean.setLink(rs.getString("link"));
            modelBean.setDate(rs.getString("date"));
            modelBeans.add(modelBean);
        }
        close(statement, conn, rs);
        return modelBeans;
    }

    /**
     * @param limit
     * @param type
     * @return
     * @throws Exception
     */
    public List<ModelBean> qryModelLinkLimit(int limit, String type) throws Exception {
        String sql = "select distinct id,type,name,link,date from modellink where type =? order by date desc limit ?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, type);
        statement.setInt(2, limit);
        ResultSet rs = statement.executeQuery();
        List<ModelBean> modelBeans = qryModelLinkLimit(rs);
        close(statement, conn, rs);
        return modelBeans;
    }

    /**
     * @param limit
     * @param type
     * @return
     * @throws Exception
     */
    public List<ModelBean> qryModelLinkLimit(ResultSet rs) throws Exception {
        List<ModelBean> modelBeans = new ArrayList<ModelBean>();
        while (rs.next()) {
            ModelBean modelBean = new ModelBean();
            modelBean.setId(rs.getInt("id"));
            modelBean.setType(rs.getString("type"));
            modelBean.setName(rs.getString("name"));
            modelBean.setLink(rs.getString("link"));
            modelBean.setDate(rs.getString("date"));
            modelBeans.add(modelBean);
        }
        return modelBeans;
    }

    /**
     * 删除模块链接
     *
     * @param model
     * @throws Exception
     */
    public void deleteModelLink(SggwModel model) throws Exception {
        String sql = "delete from modellink where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getId());
        statement.executeUpdate();
        close(statement, conn);
    }

    /**
     * 修改模块链接
     *
     * @param model
     * @throws Exception
     */
    public void modifyModelLink(SggwModel model) throws Exception {
        String sql = "update modellink set type=?,name=?,link=?,date=? where id=?";
        Connection conn = getConnnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, model.getQtype());
        statement.setString(2, model.getName());
        statement.setString(3, model.getAddress());
        statement.setString(4, Dates.getDateTime());
        statement.setString(5, model.getId());
        statement.executeUpdate();
        close(statement, conn);

    }

    /**
     * @return
     * @throws Exception
     */
    public List<Object> init() throws Exception {
        List<Object> lists = new ArrayList<Object>();
        Connection conn = getConnnection();
        //1、查询关键词列表
        String sql = "select id,title,pagename,keyword from keywords";
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        Map<String, String> map = new HashMap<String, String>();
        for (KeywordBean keywordBean : qryKeywords(rs)) {
            map.put(keywordBean.getPagename(), keywordBean.getKeyword());
        }
        lists.add(map);
        //2、查询兴趣内容
        sql = "select id,pagename,title,url,number,date,model from interest order by date desc";
        statement = conn.prepareStatement(sql);
        rs = statement.executeQuery();
        lists.add(qryInterests(rs));
        //3、查询最热文章
        sql = "select id,pagename,title,url,number,date,model from interest order by number desc limit ?";
        statement = conn.prepareStatement(sql);
        statement.setInt(1, 4);
        rs = statement.executeQuery();
        lists.add(qryHotInterests(rs));
        //4、查询最新咨询
        sql = "select id,qtype,content,askdate from newask order by askdate desc limit ?";
        statement = conn.prepareStatement(sql);
        statement.setInt(1, 5);
        rs = statement.executeQuery();
        lists.add(qryNewAskLimit(conn, statement, rs, sql));
        //5、根据模块类型查询模块链接内容[人身损害问题专栏]
        sql = "select distinct id,type,name,link,date from modellink where type =? order by date desc limit ?";
        statement = conn.prepareStatement(sql);
        statement.setString(1, "人身损害问题专栏");
        statement.setInt(2, 6);
        rs = statement.executeQuery();
        lists.add(qryModelLinkLimit(rs));
        //6、根据模块类型查询模块链接内容[交通事故问题专栏]
        sql = "select distinct id,type,name,link,date from modellink where type =? order by date desc limit ?";
        statement = conn.prepareStatement(sql);
        statement.setString(1, "交通事故问题专栏");
        statement.setInt(2, 6);
        rs = statement.executeQuery();
        lists.add(qryModelLinkLimit(rs));
        close(statement, conn, rs);
        return lists;
    }
}
