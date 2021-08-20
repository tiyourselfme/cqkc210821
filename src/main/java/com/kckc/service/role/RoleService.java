package com.kckc.service.role;

import java.util.List;
import com.kckc.pojo.Role;

public interface RoleService {

    //获取角色列表
    public List<Role> getRoleList() throws Exception;
    //增加角色信息
    public boolean add(Role role)throws Exception;

    //通过Id删除role
    public boolean deleteRoleById(Integer delId)throws Exception;

    //修改角色信息
    public boolean modify(Role role)throws Exception;


    //通过id获取role
    public Role getRoleById(Integer id)throws Exception;

    //根据roleCode ，进行角色编码的唯一性验证
    public int roleCodeIsExist(String roleCode)throws Exception;

}
