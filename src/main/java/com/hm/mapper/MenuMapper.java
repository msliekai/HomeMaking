package com.hm.mapper;

import com.hm.entity.Tblmenu;
import com.hm.entity.Tblpower;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
    public List<Tblmenu> getMenu(@Param("rid")Integer rid);

    public List<Tblmenu> getPower(@Param("rid")Integer rid);

    public int delPower(@Param("rid")Integer rid);

    public int addPower(List<Tblpower> list);
}
