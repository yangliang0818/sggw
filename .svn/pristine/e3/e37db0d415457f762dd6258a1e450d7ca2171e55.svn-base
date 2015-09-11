package com.sggw.bean;

import com.sggw.constant.Strings;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 13-8-18
 * Time: 下午12:18
 * 基类Bean存放公共信息提供给其他的Bean做代理，需要哪些属性代理哪些属性
 */
public class BaseBean implements Serializable {
    //编号
    protected int id;
    //姓名
    protected String name;
    //联系电话
    protected String phone;
    //省
    protected String province;
    //市
    protected String city;
    //区或县
    protected String country;
    //登记时间
    protected String date;
    //内容
    protected String content = "";
    //简短内容
    protected String scontent="";

    public String getScontent() {
        return Strings.getShortStr(content, 6);
    }
    //电子邮件
    private String mail;

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
