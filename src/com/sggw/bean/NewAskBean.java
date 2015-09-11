package com.sggw.bean;

import com.sggw.constant.Strings;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 14-2-23
 * Time: 上午10:29
 * 最新咨询
 */
public class NewAskBean implements Serializable {
    private int id;
    private String qtype;
    private String content = Strings.EMPTY_STR;
    private String askdate;
    private String date;
    private String scontent;

    public String getScontent() {
        return Strings.getShortStr(content, 6);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQtype() {
        return qtype;
    }

    public void setQtype(String qtype) {
        this.qtype = qtype;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAskdate() {
        return askdate;
    }

    public void setAskdate(String askdate) {
        this.askdate = askdate;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
