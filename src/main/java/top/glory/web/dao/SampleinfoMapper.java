package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.SampleinfoExample;
import top.glory.web.model.SampleinfoWithBLOBs;

public interface SampleinfoMapper {
	/*
	 * 查询sampleinfo记录
	 */
	List<Sampleinfo> selectAlltoxininfo();
	/*
	 *  模糊查询 sampleinfo，sampletoxininfo,cropspecies中的数据
	 */
	List<Sampleinfo> selectlikeSampleinfo(@Param("sampleId") String sampleId,@Param("province") String province,@Param("speciesId") Integer speciesId,@Param("toxininfoId") Integer toxininfoId,@Param("year") Integer year,@Param("min") Integer min,@Param("max") Integer max);
    int countByExample(SampleinfoExample example);

    int deleteByExample(SampleinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sampleinfo sampleinfo);

    int insertSelective(SampleinfoWithBLOBs record);

    List<SampleinfoWithBLOBs> selectByExampleWithBLOBs(SampleinfoExample example);

    List<Sampleinfo> selectByExample(SampleinfoExample example);

    SampleinfoWithBLOBs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SampleinfoWithBLOBs record, @Param("example") SampleinfoExample example);

    int updateByExampleWithBLOBs(@Param("record") SampleinfoWithBLOBs record, @Param("example") SampleinfoExample example);

    int updateByExample(@Param("record") Sampleinfo record, @Param("example") SampleinfoExample example);

    int updateByPrimaryKeySelective(SampleinfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(SampleinfoWithBLOBs record);

    int updateByPrimaryKey(Sampleinfo record);
}