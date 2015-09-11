package com.sggw.bean;

import com.sggw.service.SggwService;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-2-21
 * Time: 下午2:02
 * To change this template use File | Settings | File Templates.
 */
public class ServAreaBean implements Serializable {
    //编号
    private int id;
    //简称
    private String simpleName;
    //省份
    private String province;
    //地区名称
    private String areaName;
    //地址
    private String address;
    //联系电话
    private String phone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSimpleName() {
        return simpleName;
    }

    public void setSimpleName(String simpleName) {
        this.simpleName = simpleName;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
}
