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
    public Integer updateUserSid(@Param("sid")Integer sid ,@Param("userid") Integer userid);

    //普通用户登陆
    public TblUser cUserLogin(TblUser tblUser);

    //查看用户状态
    public Integer queryUserState(@Param("userphone")String userphone);

    //查阿姨
    public List<Staff> queryStaff(Staff staff);

    //根据id查一个阿姨
    public Staff queryOneStaff(@Param("sfid") Integer sfid);

    //阿姨总数
    public Integer getStaffCount(Staff staff);

    //收藏阿姨
    public Integer addsfcoll(Tblsfcoll tblsfcoll);

    //取消收藏阿姨
    public Integer delsfcoll(@Param("scoid") Integer scoid);

    //忘记密码
    public Integer userForgetPassword(@Param("userpwd")String String ,@Param("userphone") String userphone);

    //查询热门公司
    public List<Tblfc> queryFirmService(@Param("page")Integer page, @Param("limit")Integer limit);

    //热门公司服务
    public List<Map<String,Object>> thwWelcome();

    //查寻全部服务类
    public List<TblCOStype> queryCOSType();

    //查服务类中的事项
    public List<TblCOS> queryCOS(@Param("ctid")Integer ctid);

    //查用户自己的地址
    public List<TblSite> querySite(@Param("userid")Integer userid);

    //增加订单
    public Integer addOrder(Tblorder tblorder);

    //查询消费记录
    public List<UserMoney> jUserMoney(UserMoney userMoney);

    //查询评论
    public List<Tbleva> jUserAppraise(@Param("page")int page,@Param("limit")int limit,@Param("userid")Integer userid);

    //查看地址
    public List<TblSite>  jUserSite(@Param("page")int page,@Param("limit")int limit,@Param("userid")Integer userid);

    //收藏的阿姨
    public List<Tblsfcoll>  jUsersfcoll(@Param("page")int page, @Param("limit")int limit, @Param("userid")Integer userid);

    //收藏的公司
    public List<Tblfcoll>  jUserfcoll(@Param("page")int page,@Param("limit")int limit,@Param("userid")Integer userid);

}
