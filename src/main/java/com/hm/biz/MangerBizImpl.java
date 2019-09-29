package com.hm.biz;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.Tblmenu;
import com.hm.mapper.MangerMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MangerBizImpl implements MenuBiz {
    @Resource
    private MangerMapper mangerMapper;

    @Override
    public List<Tblmenu> getMenu(Integer rid) {
        return null;
    }
}
