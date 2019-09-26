package com.hm.biz;

import com.hm.entity.Tblmenu;
import com.hm.mapper.MenuMapper;
import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class MenuBizImpl implements MenuBiz {
    @Resource
    private MenuMapper menuMapper;
    @Override
    public List<Tblmenu> getMenu(Integer rid) {
        //获取所有菜单（无序）
        List<Tblmenu> list = menuMapper.getMenu(rid);
//
//        for (Tblmenu tblmenu : list) {
//            System.out.println(tblmenu.getMname()+"+"+ tblmenu.getMfid());
//        }

        List<Tblmenu> tblmenuList = new ArrayList<Tblmenu>();
        for (int i = 0; i <list.size() ; i++) {
            if (0==list.get(i).getMfid()){
                tblmenuList.add(list.get(i));
            };
        }

        for (Tblmenu tblmenu : tblmenuList) {
            tblmenu.setChildTblmenus(getChild(tblmenu.getMid(),list));
        }
//        for (Tblmenu tblmenu : tblmenuList) {
//            System.out.println("最终");
//            System.out.println(tblmenu.getMname());
//            if (tblmenu.getChildTblmenus() != null){
//                System.out.println("子级+"+ tblmenu.getChildTblmenus().size());
//            }
//        }


        return tblmenuList;
    }


    //递归查询子菜单
    private List<Tblmenu> getChild(int mfid , List<Tblmenu> list){
//        System.out.println("获取子级");
//        System.out.println(mfid);
        List<Tblmenu> childList = new ArrayList<Tblmenu>();
        //获取子菜单
        for (Tblmenu tblmenu : list) {
//            System.out.println("isNotBlank+:"+ tblmenu.getMfid());
            if (tblmenu.getMfid()!=null){
//                System.out.println(tblmenu.getMfid()+"+"+mfid+"+");
                if (tblmenu.getMfid().equals(mfid)){
//                    System.out.println("添加数据"+ tblmenu.getMname());
                    childList.add(tblmenu);
                }
            }
        }
        //子菜单再循环
        for (Tblmenu tblmenu : childList) {
            if (StringUtils.isBlank(tblmenu.getMurl())){
                tblmenu.setChildTblmenus(getChild(tblmenu.getMid(),list));
            }
        }
        //退出递归
        if(childList.size()==0){
            return null;
        }

        return childList;
    }
}
