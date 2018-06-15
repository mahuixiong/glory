package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Downloadhistory;
import top.glory.web.model.DownloadhistoryExample;

public interface DownloadhistoryMapper {
    int countByExample(DownloadhistoryExample example);

    int deleteByExample(DownloadhistoryExample example);

    int deleteByPrimaryKey(Integer dId);

    int insert(Downloadhistory record);

    int insertSelective(Downloadhistory record);

    List<Downloadhistory> selectByExample(DownloadhistoryExample example);

    Downloadhistory selectByPrimaryKey(Integer dId);

    int updateByExampleSelective(@Param("record") Downloadhistory record, @Param("example") DownloadhistoryExample example);

    int updateByExample(@Param("record") Downloadhistory record, @Param("example") DownloadhistoryExample example);

    int updateByPrimaryKeySelective(Downloadhistory record);

    int updateByPrimaryKey(Downloadhistory record);
}