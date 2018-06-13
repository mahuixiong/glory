package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Addresscity;
import top.glory.web.model.AddresscityExample;

public interface AddresscityMapper {
    int countByExample(AddresscityExample example);

    int deleteByExample(AddresscityExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Addresscity record);

    int insertSelective(Addresscity record);

    List<Addresscity> selectByExample(AddresscityExample example);

    Addresscity selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Addresscity record, @Param("example") AddresscityExample example);

    int updateByExample(@Param("record") Addresscity record, @Param("example") AddresscityExample example);

    int updateByPrimaryKeySelective(Addresscity record);

    int updateByPrimaryKey(Addresscity record);
}