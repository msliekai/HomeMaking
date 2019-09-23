package com.hm.mapper;

import com.hm.entity.Menu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
    public List<Menu> getMenu(@Param("rid")int rid);
}
