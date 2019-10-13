package com.hm.entity;

import lombok.Data;

/**
 * 网页实体类
 * @author hha
 * @date 2019-10-12 08:52
 */
@Data
public class MyJsoup {

    private String title;

    private String href;

    private String article;

    public MyJsoup() {
    }

    public MyJsoup(String title, String href,String article) {
        this.title = title;
        this.href = href;
        this.article=article;
    }
}
