package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Look_history;
import top.glory.web.model.Look_historyExample;

public interface Look_historyMapper {
    int countByExample(Look_historyExample example);

    int deleteByExample(Look_historyExample example);

    int deleteByPrimaryKey(Integer lId);

    int insert(Look_history record);

    int insertSelective(Look_history record);

    List<Look_history> selectByExample(Look_historyExample example);

    Look_history selectByPrimaryKey(Integer lId);

    int updateByExampleSelective(@Param("record") Look_history record, @Param("example") Look_historyExample example);

    int updateByExample(@Param("record") Look_history record, @Param("example") Look_historyExample example);

    int updateByPrimaryKeySelective(Look_history record);

    int updateByPrimaryKey(Look_history record);
}