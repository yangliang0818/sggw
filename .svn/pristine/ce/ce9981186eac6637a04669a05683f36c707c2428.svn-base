package com.sggw.web;

import com.opensymphony.xwork2.ActionSupport;
import com.sggw.constant.Objects;
import com.sggw.constant.Strings;
import com.sggw.service.AdminService;
import org.apache.struts2.ServletActionContext;

import java.io.*;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-4-12
 * Time: 下午2:11
 * 文件上传Action
 */
public class FileUploadAction extends BaseAction {
    private AdminService service = new AdminService();
    /**
     * 添加律师跟踪信息
     *
     * @return
     */
    public String addLawyer() throws Exception {
        service.addLawyer(model);
        if(Strings.isNotEmpty(model.getFileName())){
            dealFile();
        }
        return SUCCESS;

    }
    /**
     * 修改律师资料
     * @return
     * @throws Exception
     */
    public String modifyLawyer() throws Exception {
        service.modifyLawyer(model);
        setSessionAttribute("LawyerBeans", service.qryLawyers());
        return SUCCESS;
    }
    /**
     * 文件处理
     *
     * @throws Exception
     */
    private void dealFile() throws Exception {
        if(Objects.isNull(model.getMyFile())){
            return;
        }
        //基于myFile创建一个文件输入流
        InputStream is = new FileInputStream(model.getMyFile());
        InputStreamReader isr=new InputStreamReader(is);
        BufferedReader br=new BufferedReader(isr);
        // 设置上传文件目录
        String uploadPath = ServletActionContext.getServletContext()
                .getRealPath("/upload");
        // 设置目标文件
        File toFile = new File(uploadPath,Objects.getFileName(model.getFileName()));

        // 创建一个输出流
        OutputStream os = new FileOutputStream(toFile);
        OutputStreamWriter osw=new OutputStreamWriter(os);
        BufferedWriter bw=new BufferedWriter(osw);
        int length = 0;
        String str=br.readLine();
        while(null!=str){
            bw.write(str);
            str=br.readLine();
        }
        bw.flush();
        close(is,isr,br,os,osw);
    }

    /**
     *
     * @param closeable
     * @throws Exception
     */
    private void close(Closeable ... closeable)throws Exception{
        for (Closeable close:closeable){
            close.close();
        }
    }
}
