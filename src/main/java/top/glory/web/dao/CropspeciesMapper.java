package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Cropspecies;
import top.glory.web.model.CropspeciesExample;

public interface CropspeciesMapper {
	/*
	 * 根据id修改state
	 */
	void updatespeciesById(@Param("breedId")Integer breedId,@Param("state")Integer state);
	/*
	 * 根据id查询species数据
	 */
	List<Cropspecies> selectSpeciesById(@Param("Id")Integer Id);
    int countByExample(CropspeciesExample example);

    int deleteByExample(CropspeciesExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cropspecies record);

    int insertSelective(Cropspecies record);

    List<Cropspecies> selectByExample(CropspeciesExample example);

    Cropspecies selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Cropspecies record, @Param("example") CropspeciesExample example);

    int updateByExample(@Param("record") Cropspecies record, @Param("example") CropspeciesExample example);

    int updateByPrimaryKeySelective(Cropspecies record);

    int updateByPrimaryKey(Cropspecies record);
}