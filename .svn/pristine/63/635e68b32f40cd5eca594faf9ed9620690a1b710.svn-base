package com.sggw.bean;

import com.sggw.constant.Strings;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-2
 * Time: 下午11:59
 * To change this template use File | Settings | File Templates.
 */
public class NewsBean implements Serializable {
    private int index;
    private int id;
    private String area;
    private String title;
    private String content;
    private String newsDate;
    //属性Id
    private String attrId;
    //下一个案情id
    private String nid;
    //上个案情标题
    private String ptitle;
    //下个案情标题
    private String ntitle;

    private List<NewsAttrBean> attrBeans = new ArrayList<NewsAttrBean>();

    public String getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = String.valueOf(nid);
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setId(String id) {
        this.id = Integer.parseInt(id);
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getNewsDate() {
        return newsDate;
    }

    public void setNewsDate(String newsDate) {
        this.newsDate = newsDate;
    }

    public List<NewsAttrBean> getAttrBeans() {
        return attrBeans;
    }

    public void setAttrBeans(List<NewsAttrBean> attrBeans) {
        this.attrBeans = attrBeans;
    }

    public void add(NewsAttrBean element) {
        attrBeans.add(element);
    }

    public String getAttrId() {
        return attrId;
    }

    public void setAttrId(String attrId) {
        this.attrId = attrId;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }
}
