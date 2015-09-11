package com.sggw.bean;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-4-12
 * Time: 下午12:44
 * 律师跟进情况Bean
 */
public class LawyerBean implements Serializable {
    //编号
    private int id;
    //律师姓名
    private String name;
    //地区
    private String area;
    //律所全称
    private String fullname;
    //职业证号
    private String number;
    //手机号
    private String phone;
    //qq
    private String qq;
    //邮箱
    private String mail;
    //首次联络时间
    private String firstConnTime;
    //首次联络人
    private String firstConnMan;
    //跟进内容
    private String content;
    //聊天记录文件路径
    private String filepath;

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

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getFirstConnTime() {
        return firstConnTime;
    }

    public void setFirstConnTime(String firstConnTime) {
        this.firstConnTime = firstConnTime;
    }

    public String getFirstConnMan() {
        return firstConnMan;
    }

    public void setFirstConnMan(String firstConnMan) {
        this.firstConnMan = firstConnMan;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}
