package com.sggw.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-12-4
 * Time: 下午8:09
 * To change this template use File | Settings | File Templates.
 */
public class PageBean<T> implements Serializable {
    //当前页 默认为第一页
    private int currentpage = 1;
    //每一页有多少条 默认为15条
    private int numberpage = 15;
    //总共多少页
    private int totalpage;
    //当前页数据
    private List pList = new ArrayList();
    //总数据量
    private List alist = new ArrayList();

    public PageBean() {
    }

    public PageBean(List<T> alist, int numberpage) {
        this.numberpage = numberpage;
        init(alist);
    }

    public PageBean(List<T> alist) {
        init(alist);
    }

    private void init(List<T> alist) {
        this.alist.addAll(alist);
        if (alist.size() % numberpage == 0) {
            totalpage = alist.size() / numberpage;
            return;
        }
        totalpage = alist.size() / numberpage + 1;
    }

    public int getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(int currentpage) {
        if (currentpage <= 1) {
            this.currentpage = 1;
        } else if (currentpage >= totalpage) {
            this.currentpage = totalpage;
        } else {
            this.currentpage = currentpage;
        }
    }

    public int getNumberpage() {
        return numberpage;
    }

    public void setNumberpage(int numberpage) {
        this.numberpage = numberpage;
    }

    public List getpList() {
        pList.clear();
        int totalnum = alist.size();
        if (currentpage * numberpage <= totalnum) {
            pList.addAll(alist.subList((currentpage - 1) * numberpage, currentpage * numberpage));
            return pList;
        }
        pList.addAll(alist.subList((currentpage - 1) * numberpage, totalnum));
        return pList;
    }

    public void setpList(List<T> pList) {
        this.pList = pList;
    }

    public List<T> getAlist() {
        return alist;
    }

    public void setAlist(List<T> alist) {
        this.alist = alist;
    }

    public int getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(int totalpage) {
        this.totalpage = totalpage;
    }
}
