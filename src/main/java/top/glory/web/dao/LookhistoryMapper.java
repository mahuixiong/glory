package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Lookhistory;
import top.glory.web.model.LookhistoryExample;

public interface LookhistoryMapper {
    int countByExample(LookhistoryExample example);

    int deleteByExample(LookhistoryExample example);

    int deleteByPrimaryKey(Integer lId);

    int insert(Lookhistory record);

    int insertSelective(Lookhistory record);

    List<Lookhistory> selectByExample(LookhistoryExample example);

    Lookhistory selectByPrimaryKey(Integer lId);

    int updateByExampleSelective(@Param("record") Lookhistory record, @Param("example") LookhistoryExample example);

    int updateByExample(@Param("record") Lookhistory record, @Param("example") LookhistoryExample example);

    int updateByPrimaryKeySelective(Lookhistory record);

    int updateByPrimaryKey(Lookhistory record);
}