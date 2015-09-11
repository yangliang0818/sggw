package com.sggw.bean;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-7
 * Time: 下午11:36
 * 新闻属性Bean
 */
public class PressAttrBean implements Serializable {
    //序号
    private int id;
    //主新闻id
    private String newsid;
    //属性更新时间
    private String attrDate;
    //属性内容
    private String attrArea;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNewsid() {
        return newsid;
    }

    public void setNewsid(String newsid) {
        this.newsid = newsid;
    }

    public String getAttrDate() {
        return attrDate;
    }

    public void setAttrDate(String attrDate) {
        this.attrDate = attrDate;
    }

    public String getAttrArea() {
        if (attrArea.length() >= 25) {
            return attrArea.substring(0, 25) + "。。。。。";
        }
        return attrArea;
    }

    public void setAttrArea(String attrArea) {
        this.attrArea = attrArea;
    }
}
