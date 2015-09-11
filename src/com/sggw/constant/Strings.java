package com.sggw.constant;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-26
 * Time: 下午11:10
 * To change this template use File | Settings | File Templates.
 */
public class Strings {
    public static final String EMPTY_STR = "";

    public static boolean isEmpty(String str) {
        return null == str || EMPTY_STR.equals(str);
    }

    /**
     * 增强的判空处理strs数组只要有一个为空则认为
     * 有空值
     *
     * @param strs
     * @return
     */
    public static boolean isEmpty(String... strs) {
        for (String str : strs) {
            if (null == str || EMPTY_STR.equals(str)) {
                return true;
            }
            break;
        }
        return false;
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    public static String ifemptyDef(String str) {
        if (isEmpty(str)) {
            return EMPTY_STR;
        }
        return str;
    }

    public static String getShortStr(String str, int length) {
        assert null != str;
        if (str.length() < length) {
            return str;
        }
        return str.substring(0, length);
    }
}
