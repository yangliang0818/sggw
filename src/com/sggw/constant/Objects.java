package com.sggw.constant;

import com.mysql.jdbc.PreparedStatement;
import org.apache.struts2.ServletActionContext;

import javax.servlet.ServletContext;
import java.io.File;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-11-11
 * Time: 下午5:37
 * To change this template use File | Settings | File Templates.
 */
public class Objects {
    public static <T> boolean isNull(T t) {
        if (null == t) {
            return true;
        }
        return false;
    }

    public static <T> boolean isNotNull(T t) {
        return !isNull(t);
    }

    /**
     * @param statement
     * @param value
     */
    public static void setValue(java.sql.PreparedStatement statement, String... values) throws Exception {
        int i = 1;
        for (String value : values) {
            statement.setString(i++, value);
        }
    }

    public static String getFileName(String filePath) {
        String[] files = filePath.split(File.separator + File.separator);
        return files[files.length - 1];
    }

    /**
     * 获取Session属性
     *
     * @param key
     * @return
     */
    public static <T> T getSessionAttr(String key) {
        return (T) ServletActionContext.getRequest().getSession().getAttribute(key);
    }
}
