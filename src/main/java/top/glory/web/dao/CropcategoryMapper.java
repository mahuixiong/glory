package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.CropcategoryExample;

public interface CropcategoryMapper {
	/*
	 * 根据cropcategory查询记录
	 */
	List<Cropcategory> selectBycropcate(@Param("cropcategory") String cropcategory);
    int countByExample(CropcategoryExample example);

    int deleteByExample(CropcategoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cropcategory record);

    int insertSelective(Cropcategory record);

    List<Cropcategory> selectByExample(CropcategoryExample example);

    Cropcategory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Cropcategory record, @Param("example") CropcategoryExample example);

    int updateByExample(@Param("record") Cropcategory record, @Param("example") CropcategoryExample example);

    int updateByPrimaryKeySelective(Cropcategory record);

    int updateByPrimaryKey(Cropcategory record);
}