package com.sggw.bean;

import com.sggw.constant.Strings;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 13-7-7
 * Time: 下午11:51
 * 投诉建议Bean
 */
public class TellAdviseBean implements Serializable {
    //类型
    private String type;
    private String address;
    private String saddress = "";
    private BaseBean baseBean = new BaseBean();

    public void setId(int id) {
        baseBean.setId(id);
    }

    public void setName(String name) {
        baseBean.setName(name);
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setProvince(String province) {
        baseBean.setProvince(province);
    }

    public String getDate() {
        return baseBean.getDate();
    }

    public String getCountry() {
        return baseBean.getCountry();
    }

    public void setCountry(String country) {
        baseBean.setCountry(country);
    }

    public int getId() {
        return baseBean.getId();
    }

    public void setMail(String mail) {
        baseBean.setMail(mail);
    }

    public void setCity(String city) {
        baseBean.setCity(city);
    }

    public void setDate(String date) {
        baseBean.setDate(date);
    }

    public String getMail() {
        return baseBean.getMail();
    }

    public String getProvince() {
        return baseBean.getProvince();
    }

    public String getPhone() {
        return baseBean.getPhone();
    }

    public void setPhone(String phone) {
        baseBean.setPhone(phone);
    }

    public String getName() {
        return baseBean.getName();
    }

    public String getCity() {
        return baseBean.getCity();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setContent(String content) {
        baseBean.setContent(content);
    }

    public String getContent() {
        return baseBean.getContent();
    }

    public String getScontent() {
        return baseBean.getScontent();
    }

    /**
     * 短地址描述
     *
     * @return
     */
    public String getSaddress() {
        return Strings.getShortStr(address, 6);
    }
}
