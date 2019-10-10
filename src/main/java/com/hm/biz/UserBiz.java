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
     * @return
     */
    public TblUser cUserReg(TblUser tblUser);

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
     * 查用户自己的地址
     * @param userid
     * @return
     */
    public List<TblSite> querySite(@Param("userid")Integer userid);

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

    /**
     * 查寻全部服务类
     * @return
     */
    public List<TblCOStype> queryCOSType();

    /**
     * 查服务类中的事项
     * @param ctid
     * @return
     */
    public List<TblCOS> queryCOS(@Param("ctid")Integer ctid);

    /**
     * 增加订单
     * @param tblorder
     * @return
     */
    public Integer addOrder(Tblorder tblorder);

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

    //充值
    public int jUserPay(Integer userid,Integer money);
    //public Integer queryUserState(String userphone);

    /**
     * 查询阿姨
     * @param staff
     * @return
     */
    public List<Staff> queryStaff(Staff staff);

    /**
     * 根据id查一个阿姨
     * @param sfid
     * @return
     */
    public Staff queryOneStaff(Integer sfid,Integer userid);

    /**
     * 阿姨总数
     * @return
     */
    public Integer getStaffCount(Staff staff);

    /**
     * 收藏阿姨
     * @param tblsfcoll
     * @return
     */
    public Integer addsfcoll(Tblsfcoll tblsfcoll);

    /**
     * 取消收藏阿姨
     * @param scoid
     * @return
     */
    public Integer delsfcoll(Integer scoid);

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

    /**
     * 查钱
     * @param userid
     * @return
     */
    public Integer queryMoney(Integer userid);

    /**
     * 改钱
     * @param usermoney
     * @param userid
     * @return
     */
    public Integer updateMoney(Integer usermoney,Integer userid);

    /**
     * 修改用户信息
     * @param tblUser
     * @return
     */
    public Integer upUser(TblUser tblUser);

    /**
     * 查询一个阿姨的评价
     * @param sfid
     * @return
     */
    public List<Tbleva> queryEva(@Param("sfid") Integer sfid);

    /**
     * 添加足迹
     * @param tblfoot
     * @return
     */
    public Integer addFoot(Tblfoot tblfoot);
}
