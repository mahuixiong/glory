package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Sampletoxin;
import top.glory.web.model.SampletoxinExample;

public interface SampletoxinMapper {
	Float selectToxinCount(@Param("id")Integer id,@Param("sampleid")Integer sampleid);
    int countByExample(SampletoxinExample example);

    int deleteByExample(SampletoxinExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sampletoxin record);

    int insertSelective(Sampletoxin record);

    List<Sampletoxin> selectByExample(SampletoxinExample example);

    Sampletoxin selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Sampletoxin record, @Param("example") SampletoxinExample example);

    int updateByExample(@Param("record") Sampletoxin record, @Param("example") SampletoxinExample example);

    int updateByPrimaryKeySelective(Sampletoxin record);

    int updateByPrimaryKey(Sampletoxin record);
}