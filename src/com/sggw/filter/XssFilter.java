package com.sggw.filter;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 14-5-4
 * Time: 下午11:09
 * To change this template use File | Settings | File Templates.
 */
public class XssFilter extends StrutsPrepareAndExecuteFilter {
    /*@Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest) req);
        chain.doFilter(xssRequest, res);
    }*/
}
