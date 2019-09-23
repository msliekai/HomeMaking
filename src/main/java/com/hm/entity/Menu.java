package com.hm.entity;

import lombok.Data;
import org.junit.jupiter.api.Test;

import java.util.List;

@Data
public class Menu {
    private Integer mid;
    private String mname;
    private String murl;
    private Integer mfid;
    private List<Menu> childMenus;

}


