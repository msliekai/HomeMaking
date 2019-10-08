package com.hm.web;


import com.hm.biz.CompanyBiz;
import com.hm.entity.Staff;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.UUID;
@Component
@Controller
@RequestMapping("/admin")
public class FileUpHandler {
    @Resource
    private CompanyBiz companyBiz;
//    新增员工跟头像上传
    @RequestMapping(value = "/addStaff.action")
    public String addStaff(HttpServletRequest request , HttpSession session, MultipartFile pictureFile,Staff staff) throws Exception{
        //使用UUID给图片重命名，并去掉四个“-”
         String name = UUID.randomUUID().toString().replaceAll("-", "");
        // 获取文件的扩展名
         String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        // 设置图片上传路径
         String url = request.getSession().getServletContext().getRealPath("/page/upload");
        // 以绝对路径保存重名命后的图片
        String url2 = "page/upload/" + name;
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

    @RequestMapping(value = "/getAll.action")
    public String getAll(Model model) throws Exception{
//        UserList userList = new UserList();
//        model.addAttribute("userList",userList);
        return "null";
    }

}
