package com.sggw.thread;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 13-12-8
 * Time: 下午10:22
 * To change this template use File | Settings | File Templates.
 */
public class ThreadLocal extends java.lang.ThreadLocal {
    private Map map = new HashMap();

    @Override
    protected Object initialValue() {
        return super.initialValue();    //To change body of overridden methods use File | Settings | File Templates.
    }
}
