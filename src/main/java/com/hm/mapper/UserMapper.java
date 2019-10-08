package com.hm.mapper;

import com.hm.entity.Staff;
import com.hm.entity.*;
import com.hm.entity.Tblfc;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserMapper {
//
//    public User userLogin(@Param("userid") String userid, @Param("pwd") String pwd);

    //判断手机号是否存在
    public Integer queryphone(@Param("userphone") String userphone);

    //新增普通用户账号
    public Integer cUserReg(TblUser tblUser);

    //新增地址
    public Integer addSite(TblSite tblSite);

    //修改默认地址
    public Integer updateUserSid(@Param("sid") Integer sid, @Param("userid") Integer userid);

    //普通用户登陆
    public TblUser cUserLogin(TblUser tblUser);

    //查看用户状态
    public Integer queryUserState(@Param("userphone") String userphone);

    //查阿姨
    public List<Staff> queryStaff(Staff staff);

    //阿姨总数
    public Integer getStaffCount(Staff staff);

    //忘记密码
    public Integer userForgetPassword(@Param("userpwd") String String, @Param("userphone") String userphone);

    //查询热门公司
    public List<Tblfc> queryFirmService(@Param("page") Integer page, @Param("limit") Integer limit);

    //热门公司服务
    public List<Map<String, Object>> thwWelcome();


    //查询消费记录
    public List<UserMoney> jUserMoney(UserMoney userMoney);

    //查询评论
    public List<Tbleva> jUserAppraise(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //查看地址
    public List<TblSite> jUserSite(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //收藏的阿姨
    public List<Tblsfcoll> jUsersfcoll(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //收藏的公司
    public List<Tblfcoll> jUserfcoll(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //历史服务
    public List<Tblorder> jUserHistory(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //足迹
    public List<Tblfoot> jUserfoot(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //订单
    public List<Tblorder> jUserOrder(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //积分
    public List<Tblorder> jUserpoints(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //卡券
    public List<Tblorder> jUserticket(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //充值
    public int jUserPay(@Param("userid") Integer userid,@Param("usermoney") Integer usermoney,@Param("userpwd") String userpwd);
    //修改卡号
    public int jUserCard(@Param("userid") Integer userid,@Param("usercard") String usercard,@Param("userpwd") String userpwd);
}
