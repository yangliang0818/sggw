package com.sggw.web;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-2-26
 * Time: 下午9:07
 * To change this template use File | Settings | File Templates.
 */
public class FileDownAction extends ActionSupport {
    private String fileName;// 要下载的文件名
    private String inputName="";
    private String inputPath="/upload/";
    public String execute() throws Exception {
        return SUCCESS;
    }

    // 下载文件
    public InputStream getDownloadFile() throws UnsupportedEncodingException {
       /* if (fileName.equals("zyjs.pdf")) {
            this.fileName = "专业技术在交通事故处理中的作用.pdf";
        } else if (fileName.equals("zyjs.ppt"))  {
            this.fileName="专业技术在交通事故处理中的作用.ppt";
        }else {
            this.fileName="zyjs.ppt";
        }*/
        return ServletActionContext.getServletContext().getResourceAsStream("/upload/"+fileName);
    }

    public void setFileName(String fileName) {
        try {// 解决中文文件名问题
            this.fileName = new String(fileName.getBytes("ISO8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public String getFileName() {
        String name = "";
        try {// 解决下载文件中文文件名问题
            name = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return name;
    }

    public String getInputName() {
        return inputName;
    }

    public void setInputName(String inputName) {
        this.inputName = inputName;
    }

    public String getInputPath() {
        return inputPath;
    }

    public void setInputPath(String inputPath) {
        this.inputPath = inputPath;
    }
}
