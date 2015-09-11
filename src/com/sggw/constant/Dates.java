package com.sggw.constant;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/**
 * Created with IntelliJ IDEA.
 * User: yangliang
 * Date: 13-8-18
 * Time: 上午11:15
 * To change this template use File | Settings | File Templates.
 */
public final class Dates {
    /**
     * 日期格式枚举
     */
    public static enum DateType {
        DateTime("yyyy-MM-dd HH:mm:ss"),
        TodayCN("yyyy年MM月dd日"),
        Today("yyyy-MM-dd"),
        Today2("yyyy年MM月dd日 HH:mm"),
        Today3("yyyy-MM-dd HH:mm"),
        Today4("yyyyMMdd");

        private String value;

        public String getValue() {
            return value;
        }

        DateType(String value) {
            this.value = value;
        }
    }

    /**
     * 获取当前时间
     *
     * @return
     */
    public static String getDateTime() {
        SimpleDateFormat date = new SimpleDateFormat(DateType.DateTime.getValue());
        return date.format(new Date());
    }
    /**
     * 获取当天
     *
     * @return
     */
    public static String getToday(DateType dateType) {
        SimpleDateFormat date = new SimpleDateFormat(dateType.getValue());
        return date.format(new Date());
    }
    /**
     * 获取当天
     *
     * @return
     */
    public static String getToday(String str,DateType fdateType,DateType tdateType) throws ParseException {
        SimpleDateFormat date = new SimpleDateFormat(tdateType.getValue());
        return date.format(new SimpleDateFormat(fdateType.getValue()).parse(str));
    }

    public static void main(String[] args) throws ParseException {
//        System.out.println(getToday("2014-02-12 19:29",DateType.Today3,DateType.Today2));
        System.out.println(getDayLong());
    }
    /**
     * 获取时
     * @param date
     * @return
     * @throws ParseException
     */
    public static int getHH(String date) throws ParseException {
        SimpleDateFormat dateFormat=new SimpleDateFormat(DateType.DateTime.getValue());
        return dateFormat.parse(date).getHours();
    }

    /**
     * 获取分
     * @param date
     * @return
     * @throws ParseException
     */
    public static int getMM(String date) throws ParseException {
        SimpleDateFormat dateFormat=new SimpleDateFormat(DateType.DateTime.getValue());
        return dateFormat.parse(date).getMinutes();
    }

    /**
     * 获取当前时间常量
     * @return
     */
    public static long getDayLong(){
        return new Date().getTime();
    }
}
