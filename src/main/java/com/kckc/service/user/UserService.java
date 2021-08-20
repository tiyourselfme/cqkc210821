package com.kckc.service.user;
import java.util.List;

import com.kckc.pojo.User;

public interface UserService{

    //用户登录
    public User login(String userCode, String userPassword) throws Exception;

    //增加用户信息
    public boolean add(User user) throws Exception;

    //根据条件查询用户列表
    public List<User> getUserList(String queryUserName, Integer queryUserRole, Integer currentPageNo, Integer pageSize) throws Exception;
    //根据条件查询用户表记录数
    public int getUserCount(String queryUserName, Integer queryUserRole) throws Exception;

    //根据userCode查询出User
    public User selectUserCodeExist(String userCode) throws Exception;

    //根据ID删除user
    public boolean deleteUserById(Integer delId) throws Exception;

    //根据ID查找user
    public User getUserById(Integer id) throws Exception;

    //修改用户信息
    public boolean modify(User user) throws Exception;

    //根据userId修改密码
    public boolean updatePwd(Integer id, String pwd) throws Exception;

}
