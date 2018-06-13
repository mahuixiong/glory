package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.Addressprovince;
import top.glory.web.model.AddressprovinceExample;

public interface AddressprovinceMapper {
    int countByExample(AddressprovinceExample example);

    int deleteByExample(AddressprovinceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Addressprovince record);

    int insertSelective(Addressprovince record);

    List<Addressprovince> selectByExample(AddressprovinceExample example);

    Addressprovince selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Addressprovince record, @Param("example") AddressprovinceExample example);

    int updateByExample(@Param("record") Addressprovince record, @Param("example") AddressprovinceExample example);

    int updateByPrimaryKeySelective(Addressprovince record);

    int updateByPrimaryKey(Addressprovince record);
}