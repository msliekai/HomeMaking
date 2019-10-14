package com.hm.biz;

import com.hm.entity.Tblmenu;
import com.hm.entity.Tblpower;
import com.hm.mapper.MenuMapper;
import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class MenuBizImpl implements MenuBiz {
    @Resource
    private MenuMapper menuMapper;

    @Override
    public boolean changePower(List<Tblpower> list, Integer rid) {
        boolean flag = false;
        if (menuMapper.delPower(rid)>=0){
            flag=true;
        }else {
            flag=false;
        }
        if (list.size()>0){
            if (menuMapper.addPower(list)>0){
                flag=true;
            }
        }
        return flag;
    }

    @Override
    public List<Tblmenu> getMenu(Integer rid) {
        //获取所有菜单（无序）
        List<Tblmenu> list = menuMapper.getMenu(rid);

        List<Tblmenu> tblmenuList = new ArrayList<Tblmenu>();
        for (int i = 0; i <list.size() ; i++) {
            if (0==list.get(i).getMfid()){
                tblmenuList.add(list.get(i));
            };
        }

        for (Tblmenu tblmenu : tblmenuList) {
            tblmenu.setChildTblmenus(getChild(tblmenu.getMid(),list));
        }


        return tblmenuList;
    }


    //递归查询子菜单
    private List<Tblmenu> getChild(int mfid , List<Tblmenu> list){
        List<Tblmenu> childList = new ArrayList<Tblmenu>();
        //获取子菜单
        for (Tblmenu tblmenu : list) {
            if (tblmenu.getMfid()!=null){
                if (tblmenu.getMfid().equals(mfid)){
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
//权限管理
    @Override
    public  Object getPower(Integer rid){
        List<Tblmenu> list = menuMapper.getPower(rid);
        List<Tblmenu> tblmenuList = new ArrayList<Tblmenu>();
        for (int i = 0; i <list.size() ; i++) {
            if (0==list.get(i).getMfid()){
                tblmenuList.add(list.get(i));
            };
        }
        for (Tblmenu tblmenu : tblmenuList) {
            tblmenu.setChildTblmenus(getChild(tblmenu.getMid(),list));
        }

        List<HashMap<String, Object>> result = new ArrayList<>();    //定义一个map处理json键名问题
        return fun(tblmenuList,result);
    }

    //权限表递归方法
    public Object fun(List<Tblmenu> tblmenus,List<HashMap<String, Object>> result){
        if (tblmenus!=null){
            for (Tblmenu tblmenu : tblmenus) {
                HashMap<String,Object> map = new HashMap<>();
                map.put("id",tblmenu.getMid());
                map.put("title", tblmenu.getMname());
                if (tblmenu.getRid()!=null){
                    map.put("checked", true);
                }
                if (tblmenu.getMurl().length()==0){
                    map.put("spread", true);
                    map.put("checked", false);
                }
                if (tblmenu.getChildTblmenus()!=null){
                    List childLi = new ArrayList<>();
                    List<HashMap<String, Object>> result1 = new ArrayList<>();
                    map.put("children",fun(tblmenu.getChildTblmenus(),result1));
                    //=============???=================================================
                    //for ( Tblmenu  childTblmenu: tblmenu.getChildTblmenus()) {
                    //    HashMap<String,Object> map2 = new HashMap<>();
                    //    map2.put("id",childTblmenu.getMid());
                    //    map2.put("title", childTblmenu.getMname());
                    //    if (childTblmenu.getRid()!=null){
                    //        map2.put("checked", true);
                    //    }else {
                    //        map2.put("checked", false);
                    //    }
                    //    if (childTblmenu.getMurl().length()==0){
                    //        map2.put("spread", true);
                    //    }
                    //    childLi.add(map2);
                    //
                    //}

                    //map.put("children",childLi);
                }
                result.add(map);
            }
        }
        return result;
    }
}
