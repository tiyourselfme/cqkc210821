package com.kckc.dao.role;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.kckc.pojo.Role;

public interface  RoleMapper {


    //获取角色列表
    public List<Role> getRoleList()throws Exception;

    //增加角色信息
    public int add(Role role)throws Exception;

    //通过Id删除role
    public int deleteRoleById(@Param("id") Integer delId)throws Exception;

    //修改角色信息
    public int modify(Role role)throws Exception;


    //通过id获取role
    public Role getRoleById(@Param("id") Integer id)throws Exception;

    //根据roleCode ，进行角色编码的唯一性验证
    public int roleCodeIsExist(@Param("roleCode") String roleCode)throws Exception;

}