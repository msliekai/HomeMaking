package com.hm.web;


import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.UUID;
@Component
@Controller
@RequestMapping("/rrr")
public class FileUpHandler {

    @RequestMapping(value = "/addUser.action")
    public String addUser(HttpServletRequest request , HttpSession session, MultipartFile pictureFile) throws Exception{
        //使用UUID给图片重命名，并去掉四个“-”
         String name = UUID.randomUUID().toString().replaceAll("-", "");
        System.out.println(name+"rrrrrrrrr");
        // 获取文件的扩展名
         String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
        System.out.println(ext);
        // 设置图片上传路径
         String url = request.getSession().getServletContext().getRealPath("/page/upload");
         System.out.println(url);
        // 以绝对路径保存重名命后的图片
         pictureFile.transferTo(new File(url+"/"+name + "." + ext));
////         把图片存储路径保存到数据库
//        UserList userList = new UserList();
//        userList.setImageURL("upload/"+name + "." + ext);
//         userService.addUser(user);
//        // 重定向到查询所有用户的Controller，测试图片回显
//        System.out.println(userList.getImageURL());
         return "redirect:/getAll";
         }

    @RequestMapping(value = "/getAll.action")
    public String getAll(Model model) throws Exception{
//        UserList userList = new UserList();
//        model.addAttribute("userList",userList);
        return "null";
    }

}
