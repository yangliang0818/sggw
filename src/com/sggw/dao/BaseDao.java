package com.sggw.dao;

import com.sggw.bean.HzlsBean;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-9-11
 * Time: 上午10:12
 * To change this template use File | Settings | File Templates.
 */
public class BaseDao {
    protected static Connection conn;

    public static enum DBEnum {
        美橙香港生产环境("jdbc:mysql://58.64.138.108:3306/sq_shiguwen?characterEncoding=utf8", "sq_shiguwen", "sgw20130922"),
        美橙上海生产环境("jdbc:mysql://114.80.215.229:3306/sq_shiguwencom?characterEncoding=utf8", "sq_shiguwencom", "Aa12345678"),
        雪狼生产环境("jdbc:mysql://210.209.80.41:3306/fwsggw", "fwsggw", "sggw123456"),
        本地开发环境("jdbc:mysql://localhost:3306/sggw?characterEncoding=gbk", "root", "");
        String username;
        String password;
        String url;

        private DBEnum(String url, String username, String password) {
            this.url = url;
            this.username = username;
            this.password = password;
        }

        public static DBEnum getInstance() throws UnknownHostException {
            InetAddress addr = InetAddress.getLocalHost();
            String ip = addr.getHostAddress().toString();//获得本机IP
            String address = addr.getHostName().toString();//获得本机名称
            /*return ip.indexOf("192") == 0 ? 本地开发环境 : 美橙香港生产环境;*/
            return 美橙上海生产环境;
        }
    }

    protected Connection getConnnection() throws SQLException, ClassNotFoundException, UnknownHostException {
        Class.forName("com.mysql.jdbc.Driver");
        DBEnum dbEnum = DBEnum.getInstance();
        return conn = DriverManager
                .getConnection(dbEnum.url, dbEnum.username, dbEnum.password);
    }

    /**
     * 自定义获取数据源
     *
     * @param dbEnum
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     * @throws UnknownHostException
     */
    public static Connection getConnnection(DBEnum dbEnum) throws SQLException, ClassNotFoundException, UnknownHostException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager
                .getConnection(dbEnum.url, dbEnum.username, dbEnum.password);
    }

    protected void executeUpdate(String sql) throws ClassNotFoundException, SQLException, UnknownHostException {
        Connection conn = null;
        Statement stmt = null;
        List<HzlsBean> hzls = new ArrayList<HzlsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        stmt.executeUpdate(sql);
        conn.close();
        stmt.close();
    }

    protected void executeDelete(String sql) throws ClassNotFoundException, SQLException, UnknownHostException {
        Connection conn = null;
        Statement stmt = null;
        List<HzlsBean> hzls = new ArrayList<HzlsBean>();
        conn = getConnnection();
        stmt = conn.createStatement();
        stmt.execute(sql);
        conn.close();
        stmt.close();
    }

    /**
     * 默认SQL删除记录
     *
     * @param tableName
     * @param id
     * @throws Exception
     */
    protected void executeDelete(String tableName, String id) throws Exception {
        String sql = "delete from " + tableName + " where id=" + id;
        executeDelete(sql);
    }

    protected void close(Statement statement, Connection conn) throws Exception {
        statement.close();
        conn.close();
    }

    protected void close(Statement statement, Connection conn, ResultSet rs) throws Exception {
        statement.close();
        conn.close();
        rs.close();
    }
}
