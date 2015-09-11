package com.sggw.bean;

import com.sggw.constant.Strings;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 13-6-29
 * Time: 下午9:27
 * 留言Bean
 */
public class ShiguwenBean implements Serializable {
    //序号
    private int id;
    //是否有人员伤亡  是 否
    private String ifToll;
    //责任划分 取值 1.我方无责 2.我方全责 3.主次责任 4.同等责任 5.责任无法认定 6.尚未划分责任
    private String duty;
    //责任是否有争议  是 否
    private String ifHaveContro;
    //事故鉴定  未做鉴定 已做法医鉴定 已做车辆鉴定
    private String accidentJudge;
    //鉴定结果是否有争议  是 否
    private String judgeIfContro;
    //事故事实是否有争议
    private String accidentIfContro;
    //联系电话
    private String phone;
    //案情简述
    private String content;
    private String scontent = "";

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 短内容描述
     *
     * @return
     */
    public String getScontent() {
        return Strings.getShortStr(content, 6);
    }
}
