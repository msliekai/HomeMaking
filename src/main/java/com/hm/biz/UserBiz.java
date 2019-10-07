package com.hm.biz;

import com.hm.entity.Staff;
import com.hm.entity.*;

import java.util.List;
import com.hm.entity.Tblfc;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 用户操作
 */
public interface UserBiz {

//    public User userLogin(String userid, String pwd);

    /**
     * 验证手机号是否存在
     * @param userphone
     * @return
     */
    public Integer queryphone(@Param("userphone") String userphone);
    /**
     * 新增普通用户账号
     * 并新增地址
     * @param tblUser 用户实体类
     * @param tblSite 地址实体
     * @return
     */
    public TblUser cUserReg(TblUser tblUser,TblSite tblSite);

    /**
     * 增加地址
     * @param tblSite
     * @return
     */
    public TblSite addSite(TblSite tblSite);

    /**
     * 修改默认地址
     * @param userid
     * @return
     */
    public Integer updateUserSid(Integer sid,Integer userid);

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
    //历史服务
    public List<Tblorder> jUserHistory(int page,int limit,Integer userid);
    //足迹
    public List<Tblfoot> jUserfoot(int page,int limit,Integer userid);
    //订单
    public List<Tblorder> jUserOrder(int page,int limit,Integer userid);
    //积分
    public List<Tblorder> jUserpoints(int page,int limit,Integer userid);
    //卡券
    public List<Tblorder> jUserticket(int page,int limit,Integer userid);

    //public Integer queryUserState(String userphone);

    /**
     * 查询阿姨
     * @param staff
     * @return
     */
    public List<Staff> queryStaff(Staff staff);

    /**
     * 阿姨总数
     * @return
     */
    public Integer getStaffCount(Staff staff);

    /**
     * 忘记密码
     * @param userpwd
     * @param userphone
     * @return
     */
    public Integer userForgetPassword(String userpwd ,String userphone);

    /**
     * 查询热门公司
     * @param page
     * @param limit
     * @return
     */
    public List<Tblfc> queryFirmService(Integer page,Integer limit);

    /**
     * 热门公司服务
     * @return
     */
    public Map<String,Object> thwWelcome();

}
