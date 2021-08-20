package com.kckc.service.user;
import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import com.kckc.dao.user.UserMapper;
import com.kckc.pojo.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends Thread implements UserService{

    @Resource
    private UserMapper userMapper;

    @Override
    public User login(String userCode, String userPassword)throws Exception{
        User user = null;
        user = userMapper.getLoginUser(userCode);
        //匹配密码
        if(null != user){
            if(!user.getUserPassword().equals(userPassword))
                user = null;
        }
        return user;
    }

    @Override
    public boolean add(User user) throws Exception {
        boolean flag = false;
        if(userMapper.add(user) > 0)
            flag = true;
        return flag;
    }

    @Override
    public List<User> getUserList(String queryUserName, Integer queryUserRole,
                                  Integer currentPageNo, Integer pageSize) throws Exception {
        currentPageNo = (currentPageNo-1)*pageSize;
        return userMapper.getUserList(queryUserName, queryUserRole, currentPageNo, pageSize);
    }

    @Override
    public int getUserCount(String queryUserName, Integer queryUserRole)
            throws Exception {
        return userMapper.getUserCount(queryUserName, queryUserRole);
    }

    @Override
    public User selectUserCodeExist(String userCode) throws Exception {

        return userMapper.getLoginUser(userCode);
    }

    @Override
    public boolean deleteUserById(Integer delId) throws Exception {

        boolean flag = true;
        //先删除该条记录的上传附件
        User user = userMapper.getUserById(delId);
        if(user.getIdPicPath() != null && !user.getIdPicPath().equals("")){
            //删除服务器上个人证件照
            File file = new File(user.getIdPicPath());
            if(file.exists()){
                flag = file.delete();
            }
        }
        if(flag && user.getWorkPicPath() != null && !user.getWorkPicPath().equals("")){
            //删除服务器上个人工作证照片
            File file = new File(user.getWorkPicPath());
            if(file.exists()){
                flag = file.delete();
            }
        }
        if(flag){
            if(userMapper.deleteUserById(delId) < 1)
                flag = false;
        }
        return flag;
    }

    @Override
    public User getUserById(Integer id) throws Exception {
        return userMapper.getUserById(id);
    }

    @Override
    public boolean modify(User user) throws Exception {
        boolean flag = false;
        if(userMapper.modify(user) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean updatePwd(Integer id, String pwd) throws Exception {
        boolean flag = false;
        if(userMapper.updatePwd(id, pwd) > 0)
            flag = true;
        return flag;
    }

}
