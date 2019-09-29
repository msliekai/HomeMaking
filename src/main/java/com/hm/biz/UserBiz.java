package com.hm.biz;

import com.hm.entity.*;

import java.util.List;


/**
 * 用户操作
 */
public interface UserBiz {


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
    public Integer queryUserState(String userphone);

    //账户
    public List<UserMoney> jUserMoney(UserMoney userMoney);
    //评论
    public List<Tbleva> jUserAppraise(int page,int limit,Integer userid);
    //查看地址
    public List<TblSite> jUserSite(int page,int limit,Integer userid);
    //收藏的阿姨
    public List<Tblsfcoll> jUsersfcoll(int page, int limit, Integer userid);
    //收藏的公司
    public List<Tblfcoll> jUserfcoll(int page,int limit,Integer userid);
}
