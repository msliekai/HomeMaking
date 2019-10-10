package com.hm.entity;

import lombok.Data;

@Data
public class Order {
    private int page;
    private int limit;
    private String date1;
    private String date2;
    private String osname;

}
