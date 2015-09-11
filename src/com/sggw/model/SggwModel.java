package com.sggw.model;

import java.io.File;
import java.io.Serializable;

import static com.sggw.constant.Strings.EMPTY_STR;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-7
 * Time: 下午11:28
 * To change this template use File | Settings | File Templates.
 */
public class SggwModel implements Serializable {
    //索引
    private int index;
    //编号
    private String id = EMPTY_STR;
    //地区
    private String area = EMPTY_STR;
    //标题
    private String title = EMPTY_STR;
    //内容
    private String content = EMPTY_STR;
    //时间
    private String date = EMPTY_STR;
    //姓名
    private String name = EMPTY_STR;
    //下一案情进展
    private String nid = EMPTY_STR;
    //省份
    private String province = EMPTY_STR;
    //联系地址
    private String address = EMPTY_STR;
    //联系电话
    private String phone = EMPTY_STR;
    //简拼
    private String simpleName = EMPTY_STR;
    //关键字
    private String keyword = EMPTY_STR;
    //页面名称
    private String pagename = EMPTY_STR;
    //url
    private String url = EMPTY_STR;
    //全称
    private String fullname = EMPTY_STR;
    //编号
    private String number = EMPTY_STR;
    //qq
    private String qq = EMPTY_STR;
    //邮箱
    private String mail = EMPTY_STR;
    //首次联络时间
    private String firstConnTime = EMPTY_STR;
    //首次联络人
    private String firstConnMan = EMPTY_STR;
    //文件路径
    private File myFile = new File(EMPTY_STR);
    //状态
    private String status = EMPTY_STR;
    //文件名称
    private String fileName = EMPTY_STR;
    //类型
    private String ntype = EMPTY_STR;
    //问题分类
    private String qtype = EMPTY_STR;
    //验证码
    private String yzm = EMPTY_STR;
    //是否有人员伤亡  是 否
    private String ifToll = EMPTY_STR;
    //责任划分 取值 1.我方无责 2.我方全责 3.主次责任 4.同等责任 5.责任无法认定 6.尚未划分责任
    private String duty = EMPTY_STR;
    //责任是否有争议  是 否
    private String ifHaveContro = EMPTY_STR;
    //事故鉴定  未做鉴定 已做法医鉴定 已做车辆鉴定
    private String accidentJudge = EMPTY_STR;
    //鉴定结果是否有争议  是 否
    private String judgeIfContro = EMPTY_STR;
    //事故事实是否有争议
    private String accidentIfContro = EMPTY_STR;
    //律师姓名
    private String lsname = EMPTY_STR;
    //城市
    private String city;
    //区/县
    private String country;
    //模块栏目
    private String model = EMPTY_STR;

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getQtype() {
        return qtype;
    }

    public void setQtype(String qtype) {
        this.qtype = qtype;
    }

    public String getYzm() {
        return yzm;
    }

    public void setYzm(String yzm) {
        this.yzm = yzm;
    }

    public String getNtype() {
        return ntype;
    }

    public void setNtype(String ntype) {
        this.ntype = ntype;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getPagename() {
        return pagename;
    }

    public void setPagename(String pagename) {
        this.pagename = pagename;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = Integer.parseInt(index);
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getId() {
        return id;
    }

    /**
     * 下个序号
     *
     * @return
     */
    public String getNextId() {
        return Integer.parseInt(id) + 1 + "";
    }

    /**
     * 下下个序号
     *
     * @param nid
     * @return
     */
    public String getNextId(String nid) {
        return Integer.parseInt(nid) + 1 + "";
    }

    public void setId(String id) {
        this.id = id;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
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

    public String getSimpleName() {
        return simpleName;
    }

    public void setSimpleName(String simpleName) {
        this.simpleName = simpleName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
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

    public File getMyFile() {
        return myFile;
    }

    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getIfToll() {
        return ifToll;
    }

    public void setIfToll(String ifToll) {
        this.ifToll = ifToll;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getIfHaveContro() {
        return ifHaveContro;
    }

    public void setIfHaveContro(String ifHaveContro) {
        this.ifHaveContro = ifHaveContro;
    }

    public String getAccidentJudge() {
        return accidentJudge;
    }

    public void setAccidentJudge(String accidentJudge) {
        this.accidentJudge = accidentJudge;
    }

    public String getJudgeIfContro() {
        return judgeIfContro;
    }

    public void setJudgeIfContro(String judgeIfContro) {
        this.judgeIfContro = judgeIfContro;
    }

    public String getAccidentIfContro() {
        return accidentIfContro;
    }

    public void setAccidentIfContro(String accidentIfContro) {
        this.accidentIfContro = accidentIfContro;
    }

    public String getLsname() {
        return lsname;
    }

    public void setLsname(String lsname) {
        this.lsname = lsname;
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
}
