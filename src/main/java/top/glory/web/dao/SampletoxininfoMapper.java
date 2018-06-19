package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Sampletoxininfo;
import top.glory.web.model.SampletoxininfoExample;

public interface SampletoxininfoMapper {
	/*
	 * 根据tpye查询记录
	 */
	List<Sampletoxininfo> selectToxininfoByTpey(@Param("toxintype") String toxintype);
    int countByExample(SampletoxininfoExample example);

    int deleteByExample(SampletoxininfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sampletoxininfo record);

    int insertSelective(Sampletoxininfo record);

    List<Sampletoxininfo> selectByExample(SampletoxininfoExample example);

    Sampletoxininfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Sampletoxininfo record, @Param("example") SampletoxininfoExample example);

    int updateByExample(@Param("record") Sampletoxininfo record, @Param("example") SampletoxininfoExample example);

    int updateByPrimaryKeySelective(Sampletoxininfo record);

    int updateByPrimaryKey(Sampletoxininfo record);
}