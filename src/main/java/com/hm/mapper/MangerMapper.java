package com.hm.mapper;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MangerMapper {

    //管理用户登陆
    public TblUser cUserLogin(TblUser tblUser);


}
