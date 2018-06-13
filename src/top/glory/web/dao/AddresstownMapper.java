package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Addresstown;
import top.glory.web.model.AddresstownExample;

public interface AddresstownMapper {
    int countByExample(AddresstownExample example);

    int deleteByExample(AddresstownExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Addresstown record);

    int insertSelective(Addresstown record);

    List<Addresstown> selectByExample(AddresstownExample example);

    Addresstown selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Addresstown record, @Param("example") AddresstownExample example);

    int updateByExample(@Param("record") Addresstown record, @Param("example") AddresstownExample example);

    int updateByPrimaryKeySelective(Addresstown record);

    int updateByPrimaryKey(Addresstown record);
}