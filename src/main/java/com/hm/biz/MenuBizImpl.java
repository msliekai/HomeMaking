package com.hm.biz;

import com.hm.entity.Menu;
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
    public List<Menu> getMenu(int rid) {
        //获取所有菜单（无序）
        List<Menu> list = menuMapper.getMenu(rid);

        for (Menu menu : list) {
            System.out.println(menu.getMname()+"+"+menu.getMfid());
        }

        List<Menu> menuList = new ArrayList<Menu>();
        for (int i = 0; i <list.size() ; i++) {
            if (0==list.get(i).getMfid()){
                menuList.add(list.get(i));
            };
        }

        for (Menu menu : menuList) {
            menu.setChildMenus(getChild(menu.getMid(),list));
        }
        for (Menu menu : menuList) {
            System.out.println("最终");
            System.out.println(menu.getMname());
            if (menu.getChildMenus() != null){
                System.out.println("子级+"+ menu.getChildMenus().size());
            }
        }


        return menuList;
    }


    //递归查询子菜单
    private List<Menu> getChild(int mfid , List<Menu> list){
        System.out.println("获取子级");
        System.out.println(mfid);
        List<Menu> childList = new ArrayList<Menu>();
        //获取子菜单
        for (Menu menu : list) {
            System.out.println("isNotBlank+:"+menu.getMfid());
            if (menu.getMfid()!=null){
                System.out.println(menu.getMfid()+"+"+mfid+"+");
                if (menu.getMfid().equals(mfid)){
                    System.out.println("添加数据"+menu.getMname());
                    childList.add(menu);
                }
            }
        }
        //子菜单再循环
        for (Menu menu : childList) {
            if (StringUtils.isBlank(menu.getMurl())){
                menu.setChildMenus(getChild(menu.getMid(),list));
            }
        }
        //退出递归
        if(childList.size()==0){
            return null;
        }

        return childList;
    }
}
