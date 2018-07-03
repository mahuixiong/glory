package top.glory.web.service.impl;

import org.springframework.stereotype.Service;
import top.glory.web.dao.RolesMapper;
import top.glory.web.model.Roles;
import top.glory.web.service.RolesService;

import javax.annotation.Resource;
import java.util.List;
@Service
public class RolesServiceImp implements RolesService {
    @Resource
    private RolesMapper rolesMapper;
    @Override
    public List<Roles> selectRolesByUserId(Integer rid) {
        return rolesMapper.selectRolesByUserId(rid);
    }
}
