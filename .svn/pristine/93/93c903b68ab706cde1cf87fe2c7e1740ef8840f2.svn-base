package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.SampleinfoExample;

public interface SampleinfoMapper {
    int countByExample(SampleinfoExample example);

    int deleteByExample(SampleinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sampleinfo record);

    int insertSelective(Sampleinfo record);

    List<Sampleinfo> selectByExample(SampleinfoExample example);

    Sampleinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Sampleinfo record, @Param("example") SampleinfoExample example);

    int updateByExample(@Param("record") Sampleinfo record, @Param("example") SampleinfoExample example);

    int updateByPrimaryKeySelective(Sampleinfo record);

    int updateByPrimaryKey(Sampleinfo record);
}