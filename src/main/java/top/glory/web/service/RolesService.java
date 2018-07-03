package top.glory.web.service;

import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Roles;

import java.util.List;

public interface RolesService {
    //通过id查权限
    List<Roles> selectRolesByUserId(@Param("rid") Integer rid);
    List<Roles> selectRoles();
}
