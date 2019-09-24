package com.hm.mapper;

import com.hm.entity.Tblmenu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
    public List<Tblmenu> getMenu(@Param("rid")Integer rid);
}
