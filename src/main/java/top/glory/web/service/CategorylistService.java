package top.glory.web.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import top.glory.web.enums.Msg;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.Cropspecies;
import top.glory.web.model.Par;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.Sampletoxininfo;

import com.github.pagehelper.PageInfo;

public interface CategorylistService {
	/*
	 * 
	 * 农产品类别查询
	 */
	public PageInfo<Cropcategory> catetoryList(Integer page,Integer pagesize);
	
	/*
	 * 新增大类别
	 */
	public Msg insertcate(String cropcategory,Integer state);
	/*
	 * 根据id查询species数据
	 */
	public List<Cropspecies> selectSpeciesById(Integer Id);
	/*
	 * 根据id修改category
	 */
	public Msg updateCategoryById(Cropcategory cropcategory);
	/*
	 * 根据id删除category
	 */
	public Msg categorydelete(Integer Id);
	/*
	 * 根据breedid查询par记录
	 */
	public List<Par> selectParById(Integer breedId);
	/*
	 * 查询所有毒素
	 */
	public PageInfo<Sampletoxininfo> selectAlltoxin(Integer Page,Integer pagesize);
	/*
	 * 根据id查询毒素
	 */
	public Sampletoxininfo selecttoxininfoById(Integer Id);
	/*
	 * 根据type查询毒素
	 */
	public Msg updateToxininfo(Sampletoxininfo toxininfo);
	/*
	 * 根据id删除毒素
	 */
	public Msg deletetoxininfoById(Integer Id);
	/*
	 *根据id查询category记录
	 */
	public Cropcategory selectcategoryById(Integer Id);
	/*
	 * 修改par毒素
	 */
	public Msg updatepar(Integer breedId,String[] par,String[] parId,Integer state);
	/*
	 * 查询toxininfo中state为1的毒素
	 */
	public List<Sampletoxininfo> selecttoxininfoBystate();
	/*
	 * 增加par小类别
	 */
	public Msg addPar(String breedname,Integer cateid,String[] toxintype,String[] toxinid,String[] par,Integer state);
	/*
	 * 删除species小类别和par中小类别对应的毒素记录
	 */
	public Msg deletespeciesById(Integer breedid);
	/*
	 * 查询所有species记录
	 */
	public List<Cropspecies> selectAllspecies();
	/*
	 * 添加毒素
	 */
	public Msg addtoxininfo(String toxintype,Integer state,String[] speciesname,String[] par,String[] speciesid);
	
	 
	/*
	 * 模糊查询sampleinfo
	 */
	public PageInfo<Sampleinfo> selectlikeSampleinfo(Integer page,Integer pagesize, String sampleId,String province, Integer speciesId,Integer toxininfoId,Integer year, Integer wuranluv);
}
