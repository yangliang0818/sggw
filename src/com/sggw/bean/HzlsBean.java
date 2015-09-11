package com.sggw.bean;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-9-26
 * Time: 下午11:09
 * To change this template use File | Settings | File Templates.
 */
public class HzlsBean implements Serializable {
    //地区
    private String area;
    //营业执照号
    private String number;
    //地址
    private String address;
    //电话号码
    private String tel;
    //电子邮件
    private String email;
    //个人网站
    private String website;
    //图片名称
    private String imageName;
    //代理BaseBean
    private BaseBean baseBean = new BaseBean();

    public int getId() {
        return baseBean.getId();
    }

    public void setId(int id) {
        baseBean.setId(id);
    }

    public String getName() {
        return baseBean.getName();
    }

    public void setName(String name) {
        baseBean.setName(name);
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }
}
