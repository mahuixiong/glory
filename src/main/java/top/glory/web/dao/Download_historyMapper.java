package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Download_history;
import top.glory.web.model.Download_historyExample;

public interface Download_historyMapper {
    int countByExample(Download_historyExample example);

    int deleteByExample(Download_historyExample example);

    int deleteByPrimaryKey(Integer dId);

    int insert(Download_history record);

    int insertSelective(Download_history record);

    List<Download_history> selectByExample(Download_historyExample example);

    Download_history selectByPrimaryKey(Integer dId);

    int updateByExampleSelective(@Param("record") Download_history record, @Param("example") Download_historyExample example);

    int updateByExample(@Param("record") Download_history record, @Param("example") Download_historyExample example);

    int updateByPrimaryKeySelective(Download_history record);

    int updateByPrimaryKey(Download_history record);
}