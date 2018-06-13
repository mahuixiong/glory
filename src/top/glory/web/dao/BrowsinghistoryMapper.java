package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Browsinghistory;
import top.glory.web.model.BrowsinghistoryExample;

public interface BrowsinghistoryMapper {
    int countByExample(BrowsinghistoryExample example);

    int deleteByExample(BrowsinghistoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Browsinghistory record);

    int insertSelective(Browsinghistory record);

    List<Browsinghistory> selectByExample(BrowsinghistoryExample example);

    Browsinghistory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Browsinghistory record, @Param("example") BrowsinghistoryExample example);

    int updateByExample(@Param("record") Browsinghistory record, @Param("example") BrowsinghistoryExample example);

    int updateByPrimaryKeySelective(Browsinghistory record);

    int updateByPrimaryKey(Browsinghistory record);
}