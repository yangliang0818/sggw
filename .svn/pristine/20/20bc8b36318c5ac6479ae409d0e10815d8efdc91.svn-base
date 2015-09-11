package com.sggw.web;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sggw.bean.NewsBean;
import com.sggw.constant.Objects;
import com.sggw.model.SggwModel;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-3
 * Time: 上午12:20
 * To change this template use File | Settings | File Templates.
 */
public class BaseAction extends ActionSupport implements ModelDriven<SggwModel> {

    protected SggwModel model = new SggwModel();

    protected HttpServletRequest getRequset() {
        return ServletActionContext.getRequest();
    }

    protected HttpSession getSession() {
        return getRequset().getSession();
    }

    protected void setSessionAttribute(String key, Object t) {
        getSession().setAttribute(key, t);
    }

    protected Object getSessionAttribute(String key) {
        return getRequset().getSession().getAttribute(key);
    }

    protected <T> void setAttribute(String key, T t) {
        getRequset().setAttribute(key, t);
    }

    public SggwModel getModel() {
        return model;
    }

    public String getParameter(String key) {
        return getRequset().getParameter(key);
    }
}
