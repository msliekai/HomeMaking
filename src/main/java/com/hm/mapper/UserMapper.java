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

    //根据id查一个阿姨
    public Staff queryOneStaff(@Param("sfid") Integer sfid,@Param("userid") Integer userid);

    //阿姨总数
    public Integer getStaffCount(Staff staff);

    //收藏阿姨
    public Integer addsfcoll(Tblsfcoll tblsfcoll);

    //取消收藏阿姨
    public Integer delsfcoll(@Param("scoid") Integer scoid);

    //忘记密码
    public Integer userForgetPassword(@Param("userpwd") String String, @Param("userphone") String userphone);

    //查询热门公司
    public List<Tblfc> queryFirmService(@Param("page") Integer page, @Param("limit") Integer limit);

    //热门公司服务
    public List<Map<String, Object>> thwWelcome();

    //查寻全部服务类
    public List<TblCOStype> queryCOSType();

    //查服务类中的事项
    public List<TblCOS> queryCOS(@Param("ctid")Integer ctid);

    //查用户自己的地址
    public List<TblSite> querySite(@Param("userid")Integer userid);

    //增加订单
    public Integer addOrder(Tblorder tblorder);

    //查询消费记录
    public List<Tblorder> jUserMoney(Tblorder tblorder);

    //查询评论
    public List<Tbleva> jUserAppraise(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //查看地址
    public List<TblSite> jUserSite(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //收藏的阿姨
    public List<Tblsfcoll>  jUsersfcoll(@Param("page")int page, @Param("limit")int limit, @Param("userid")Integer userid);

    //收藏的公司
    public List<Tblfcoll> jUserfcoll(@Param("page") int page, @Param("limit") int limit, @Param("userid") Integer userid);

    //查钱
    public Integer queryMoney(@Param("userid")Integer userid);

    //改钱
    public Integer updateMoney(@Param("usermoney")Integer usermoney,@Param("userid")Integer userid);

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
    //充值
    public int jUsercut(@Param("userid") Integer userid,@Param("usermoney") Integer usermoney,@Param("userpwd") String userpwd);
    //修改卡号
    public int jUserCard(@Param("userid") Integer userid,@Param("usercard") String usercard,@Param("userpwd") String userpwd);

    //删除订单
    public int jdelorder(Tblorder tblorder);
    //删除收藏阿姨
    public int jdelsfcoll(Tblsfcoll tblsfcoll);
    //删除收藏公司
    public int jdelfcoll(Tblfcoll tblfcoll);
    //删除历史记录
    public int jdelhistory(Tblorder tblorder);
    //删除地址
    public int jdelsite(TblSite tblSite);
    //删除评论
    public int jdeleva(Tbleva tbleva);
    //删除足迹
    public int jdelfoot(Tblfoot tblfoot);
    //添加评论
    public int jUserAddApp(Tbleva tbleva);
    //申请售后
    public int jUserAddAfter(Tblorder tblorder);
    //订单状态改变
    public int jcorder(@Param("oid") Integer oid,@Param("state")Integer state);
    //评论内容改变
    public int jUserUpApp(@Param("eid") Integer eid,@Param("econtext") String econtext);
    //添加交易记录
    public int jUserAdddeallog(Tbldeallog tbldeallog);
    //修改用户信息
    public Integer upUser(TblUser tblUser);

    //查询一个阿姨的评价
    public List<Tbleva> queryEva(@Param("sfid") Integer sfid);

    //添加足迹
    public Integer addFoot(Tblfoot tblfoot);

    //服务热度
    public Integer cosHotUp(@Param("cosid") Integer cosid);

    //增加交易记录
    public Integer adddeallog(Tbldeallog tbldeallog);
}
