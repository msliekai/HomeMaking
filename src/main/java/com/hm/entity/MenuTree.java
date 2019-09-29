package com.hm.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class MenuTree {
    private Integer id;
    private String title;
    private boolean checked;
    private boolean spread;
    private List<MenuTree> children = new ArrayList<>();
}
