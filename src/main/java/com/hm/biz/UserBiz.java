package com.hm.biz;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;


/**
 * 用户操作
 */
public interface UserBiz {
//    public User userLogin(String userid,String pwd);

    /**
     * 新增普通用户账号
     * 并新增地址
     * @param tblUser 用户实体类
     * @param tblSite 地址实体
     * @return
     */
    public Integer cUserReg(TblUser tblUser,TblSite tblSite);

    /**
     * 普通用户登陆
     * @param tblUser 用户实体
     * @return 用户实体
     */
    public TblUser cUserLogin(TblUser tblUser);

    /**
     * 查看用户状态
     * @param userphone 电话号码
     * @return 状态id
     */
    public Integer queryUserState(long userphone);
}
