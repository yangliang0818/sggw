package com.sggw.bean;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 14-3-5
 * Time: 下午11:13
 * To change this template use File | Settings | File Templates.
 */
public class ModelBean implements Serializable {
    //编号
    private int id;
    //模块类别
    private String type;
    //链接名称
    private String name;
    //链接地址
    private String link;
    //数据时间
    private String date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
