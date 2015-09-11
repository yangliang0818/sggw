package com.sggw.bean;

import com.sggw.constant.Dates;
import com.sggw.constant.Strings;

import java.io.Serializable;
import java.text.ParseException;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 13-8-18
 * Time: 下午12:16
 * 需要帮助Bean
 */
public class NeedHelpBean implements Serializable {
    //帮助分类
    private String ntype;
    //问题分类
    private String qtype;
    //代理BaseBean
    private BaseBean baseBean = new BaseBean();
    //今天
    private String today = Dates.getToday(Dates.DateType.TodayCN);
    //时
    private int hh;
    //分
    private int mm;
    public String getToday() {
        return today;
    }

    public void setToday(String today) {
        this.today = today;
    }

    //地址简短
    public String getScontent() {
        return baseBean.getScontent();
    }

    public int getId() {
        return baseBean.getId();
    }

    public void setContent(String content) {
        baseBean.setContent(content);
    }

    public void setId(int id) {
        baseBean.setId(id);
    }

    public void setDate(String date) throws ParseException {
        baseBean.setDate(date);
        hh=Dates.getHH(date);
        mm=Dates.getMM(date);
    }

    public void setCity(String city) {
        baseBean.setCity(city);
    }

    public String getName() {
        return baseBean.getName();
    }

    public void setProvince(String province) {
        baseBean.setProvince(province);
    }

    /**
     * 讲省，市，特区替换调
     *
     * @param province
     * @param codes
     */
    public void setProvince(String province, String... codes) {
        for (String code : codes) {
            province=province.replace(code, "");
        }
        baseBean.setProvince(province);
    }

    public String getContent() {
        return baseBean.getContent();
    }

    public String getCountry() {
        return baseBean.getCountry();
    }

    public String getDate() {
        return baseBean.getDate();
    }

    public void setName(String name) {
        baseBean.setName(name);
    }

    public void setName(String name, String code) {
        int length = name.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.append(i == 0 ? name.substring(0, 1) : code);
        }
        baseBean.setName(sb.toString());
    }

    public String getProvince() {
        return baseBean.getProvince();
    }

    public void setPhone(String phone) {
        baseBean.setPhone(phone);
    }

    public String getCity() {
        return baseBean.getCity();
    }

    public void setCountry(String country) {
        baseBean.setCountry(country);
    }

    public String getPhone() {
        return baseBean.getPhone();
    }

    public String getNtype() {
        return ntype;
    }

    public void setNtype(String ntype) {
        this.ntype = ntype;
    }

    public String getQtype() {
        return qtype;
    }

    public void setQtype(String qtype) {
        this.qtype = qtype;
    }

    public String getMail() {
        return baseBean.getMail();
    }

    public void setMail(String mail) {
        baseBean.setMail(mail);
    }

    /**
     * 短地址描述
     *
     * @return
     */
    public String getSaddress() {
        return Strings.getShortStr(getProvince() + getCity() + getCountry(), 6);
    }

    public int getHh() {
        return hh;
    }

    public void setHh(int hh) {
        this.hh = hh;
    }

    public int getMm() {
        return mm;
    }

    public void setMm(int mm) {
        this.mm = mm;
    }
}
