package com.hm.biz;

import com.hm.entity.Tblmenu;

import java.util.List;

public interface MenuBiz {
    public List<Tblmenu> getMenu(Integer rid);
}
