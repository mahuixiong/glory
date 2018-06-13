package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Par;
import top.glory.web.model.ParExample;

public interface ParMapper {
    int countByExample(ParExample example);

    int deleteByExample(ParExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Par record);

    int insertSelective(Par record);

    List<Par> selectByExample(ParExample example);

    Par selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Par record, @Param("example") ParExample example);

    int updateByExample(@Param("record") Par record, @Param("example") ParExample example);

    int updateByPrimaryKeySelective(Par record);

    int updateByPrimaryKey(Par record);
}