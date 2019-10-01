package com.hm.biz;

import com.hm.entity.Tblmenu;
import com.hm.entity.Tblpower;

import java.util.List;

public interface MenuBiz {
    public List<Tblmenu> getMenu(Integer rid);

    public  Object getPower(Integer rid);

    public boolean changePower(List<Tblpower> list,Integer rid);
}
