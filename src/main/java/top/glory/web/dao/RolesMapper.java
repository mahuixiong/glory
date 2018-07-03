package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Roles;
import top.glory.web.model.RolesExample;

public interface RolesMapper {
    //通过id查权限
    List<Roles> selectRolesByUserId(@Param("rid") Integer rid);
    List<Roles> selectRoles();

    int countByExample(RolesExample example);

    int deleteByExample(RolesExample example);

    int deleteByPrimaryKey(Integer rid);

    int insert(Roles record);

    int insertSelective(Roles record);

    List<Roles> selectByExample(RolesExample example);

    Roles selectByPrimaryKey(Integer rid);

    int updateByExampleSelective(@Param("record") Roles record, @Param("example") RolesExample example);

    int updateByExample(@Param("record") Roles record, @Param("example") RolesExample example);

    int updateByPrimaryKeySelective(Roles record);

    int updateByPrimaryKey(Roles record);
}