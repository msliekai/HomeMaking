package com.hm.web;


import com.hm.biz.CompanyBiz;
import com.hm.entity.Company;
import com.hm.entity.Staff;
import com.hm.entity.Tblfcc;
import com.hm.entity.Tblsfdata;
import com.hm.tools.TimeTools;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;
@Component
@Controller
@RequestMapping("/admin")
public class FileUpHandler {
    @Resource
    private CompanyBiz companyBiz;
//    新增员工跟头像上传
    @RequestMapping(value = "addStaff")
    public @ResponseBody String addStaff(HttpServletRequest request , HttpSession session, MultipartFile pictureFile, Staff staff) throws Exception{

        //使用UUID给图片重命名，并去掉四个“-”
         String name = UUID.randomUUID().toString().replaceAll("-", "");
        // 获取文件的扩展名
         String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        // 设置图片上传路径
         String url = request.getSession().getServletContext().getRealPath("/page/upload");
        // 以绝对路径保存重名命后的图片
        String url2 = "page/upload/" + name+ "." + ext;
         String sfurl=url+"/"+name + "." + ext;
         staff.setSfurl(url2);
         pictureFile.transferTo(new File(sfurl));
        String flog=null;
         Staff staff1=companyBiz.addStaff(staff);
         if(null!=staff1)
         {
             flog="ok";
             return flog;
         }else
             flog="no";
             return flog;
         }
    //----公司资料上传
    @RequestMapping(value = "addComCre")
    public @ResponseBody String addComCre(HttpServletRequest request,HttpSession session, MultipartFile pictureFile, Tblfcc tblfcc){

        Company company= (Company) session.getAttribute("company");
        //--获取公司id
        Integer fid=company.getFid();
        //使用UUID给图片重命名，并去掉四个“-”
        String name = UUID.randomUUID().toString().replaceAll("-", "");
        // 获取文件的扩展名
        String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        // 设置图片上传路径
        String url = request.getSession().getServletContext().getRealPath("/page/upload");
        // 以绝对路径保存重名命后的图片
        String url2 = "page/upload/" + name+ "." + ext;
        String sfurl=url+"/"+name + "." + ext;
        tblfcc.setUpurl(url2);
        try {
            pictureFile.transferTo(new File(sfurl));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String flog=null;
        String uptime= TimeTools.getStringDateMin();
        tblfcc.setUptime(uptime);
        tblfcc.setFid(fid);
       Tblfcc tblfcc1=companyBiz.companyCreUp(tblfcc);
        if(null!=tblfcc1)
        {
            flog="ok";
            return flog;
        }else
            flog="no";
        return flog;
    }


    //----入驻公司资料上传
    @RequestMapping(value = "infileup")
    public @ResponseBody
    String infileup(HttpServletRequest request, HttpSession session, MultipartFile pictureFile, Tblfcc tblfcc){

        Company company= (Company) session.getAttribute("company");
        //--获取公司id
        Integer fid=company.getFid();
        //使用UUID给图片重命名，并去掉四个“-”
        String name = UUID.randomUUID().toString().replaceAll("-", "");
        // 获取文件的扩展名
        String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        // 设置图片上传路径
        String url = request.getSession().getServletContext().getRealPath("/page/upload");
        // 以绝对路径保存重名命后的图片
        String url2 = "page/upload/" + name+ "." + ext;
        String sfurl=url+"/"+name + "." + ext;
        tblfcc.setUpurl(url2);
        try {
            pictureFile.transferTo(new File(sfurl));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String uptime= TimeTools.getStringDateMin();
        tblfcc.setUptime(uptime);
        tblfcc.setFid(fid);
        Tblfcc tblfcc1=companyBiz.infileup(tblfcc);
        if(null!=tblfcc1)
        {
            return "ok";
        }else{
            return "no";
        }

    }
//----公司资料上传
    @RequestMapping(value = "addStaffCre")
    public @ResponseBody String addStaffCre(HttpServletRequest request, HttpSession session, MultipartFile pictureFile, Tblsfdata tblsfdata){

        Company company= (Company) session.getAttribute("company");
        //--获取公司id
        Integer fid=company.getFid();
        //使用UUID给图片重命名，并去掉四个“-”
        String name = UUID.randomUUID().toString().replaceAll("-", "");
        // 获取文件的扩展名
        String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        // 设置图片上传路径
        String url = request.getSession().getServletContext().getRealPath("/page/upload");
        // 以绝对路径保存重名命后的图片
        String url2 = "page/upload/" + name+ "." + ext;
        String sfurl=url+"/"+name + "." + ext;
        tblsfdata.setUpurl(url2);
        try {
            pictureFile.transferTo(new File(sfurl));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String flog=null;
        String uptime= TimeTools.getStringDateMin();
        tblsfdata.setUptime(uptime);
        tblsfdata.setFid(fid);
        Tblsfdata tblsfdata1=companyBiz.staffCreUp(tblsfdata);
        if(null!=tblsfdata1)
        {
            flog="ok";
            return flog;
        }else
            flog="no";
        return flog;
    }
}
