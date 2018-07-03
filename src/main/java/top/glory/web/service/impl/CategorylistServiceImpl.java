package top.glory.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.glory.web.dao.AddressprovinceMapper;
import top.glory.web.dao.CropcategoryMapper;
import top.glory.web.dao.CropspeciesMapper;
import top.glory.web.dao.ParMapper;
import top.glory.web.dao.SampleinfoMapper;
import top.glory.web.dao.SampletoxininfoMapper;
import top.glory.web.enums.Msg;
import top.glory.web.model.Addressprovince;
import top.glory.web.model.AddressprovinceExample;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.CropcategoryExample;
import top.glory.web.model.Cropspecies;
import top.glory.web.model.CropspeciesExample;
import top.glory.web.model.Par;
import top.glory.web.model.ParExample;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.SampleinfoExample;
import top.glory.web.model.Sampletoxininfo;
import top.glory.web.model.SampletoxininfoExample;
import top.glory.web.service.CategorylistService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class CategorylistServiceImpl implements CategorylistService{

	@Autowired
	private CropcategoryMapper cropcategoryMapper;
	@Autowired
	private CropspeciesMapper cropspeciesMapper;
	@Autowired
	private ParMapper parMapper;
	@Autowired
	private SampletoxininfoMapper toxininfoMapper;
	@Autowired
	private SampleinfoMapper sampleinfoMapper;
	@Autowired
	private AddressprovinceMapper provinceMapper;
	/*
	 * 
	 * 农产品类别查询
	 */
	@Override
	public PageInfo<Cropcategory> catetoryList(Integer page,Integer pagesize) {
		page=page==null?1:page;//页数
		PageHelper.startPage(page,pagesize);//设置每页的页数 与现实的条数
		CropcategoryExample example=new CropcategoryExample();
		List<Cropcategory> list=this.cropcategoryMapper.selectByExample(example);
		PageInfo pageinfo=new PageInfo<>(list,pagesize);//

		return pageinfo;
	}
	/*
	 * 新增大类别
	 */
	@Override
	public Msg insertcate(String cropcategory,Integer state) {
		List<Cropcategory> list=this.cropcategoryMapper.selectBycropcate(cropcategory);
		if(list.size()>0){
			return Msg.fail();
		}else if(cropcategory==null||cropcategory==""){
			return Msg.updatefail();
		}else{
			Cropcategory crop= new Cropcategory();
			crop.setCropCategory(cropcategory);
			crop.setState(state);
			this.cropcategoryMapper.insert(crop);
			return Msg.success();
		}
		
	}
	/*
	 * 根据id查询species数据
	 */
	@Override
	public List<Cropspecies> selectSpeciesById(Integer Id) {
		List<Cropspecies>list=this.cropspeciesMapper.selectSpeciesById(Id);
		return list;
	}
	/*
	 * 根据id修改category
	 */
	@Override
	public Msg updateCategoryById(Cropcategory cropcategory) {
		//List<Cropcategory> list=this.cropcategoryMapper.selectBycropcate(cropcategory.getCropCategory());
		List<Cropspecies> specieslist=this.cropspeciesMapper.selectSpeciesById(cropcategory.getId());
		
		CropcategoryExample example=new CropcategoryExample();
		example.or().andIdNotEqualTo(cropcategory.getId()).andCropCategoryEqualTo(cropcategory.getCropCategory());
		List<Cropcategory> list=this.cropcategoryMapper.selectByExample(example);
		if(cropcategory.getState()==0&&specieslist.size()>0){
			return Msg.updatefail();
		}else if(list.size()>0) {
				return Msg.fail();
		}else{
			this.cropcategoryMapper.updateByPrimaryKey(cropcategory);
			return Msg.success();
			}
	}
	/*
	 * 根据id删除category
	 */
	@Override
	public Msg categorydelete(Integer Id) {
		List<Cropspecies> list=this.cropspeciesMapper.selectSpeciesById(Id);
		if(list.size()>0){
			return Msg.fail();
		}else{
		this.cropcategoryMapper.deleteByPrimaryKey(Id);
		return Msg.success();
		}
	}
	/*
	 * 根据breedid查询par记录
	 */
	@Override
	public List<Par> selectParById(Integer breedId) {
		List<Par> list=this.parMapper.selectparById(breedId);
		return list;
	}
	/*
	 * 查询所有毒素
	 */
	@Override
	public PageInfo<Sampletoxininfo> selectAlltoxin(Integer Page,Integer pagesize) {
		Page=Page==null?1:Page;
		PageHelper.startPage(Page, pagesize);
		SampletoxininfoExample example=new SampletoxininfoExample();
		List<Sampletoxininfo> list=this.toxininfoMapper.selectByExample(example);
		PageInfo pageinfo=new PageInfo<>(list,pagesize);
		return pageinfo;
	}
	/*
	 * 根据id查询toxininfo记录
	 */
	@Override
	public Sampletoxininfo selecttoxininfoById(Integer Id) {
		Sampletoxininfo sampletoxininfo=this.toxininfoMapper.selectByPrimaryKey(Id);
		return sampletoxininfo;
	}
	/*
	 * 修改toininfo记录
	 */
	@Override
	public Msg updateToxininfo(Sampletoxininfo toxininfo) {
		SampletoxininfoExample example=new SampletoxininfoExample();
		example.or().andIdNotEqualTo(toxininfo.getId()).andToxinTypeEqualTo(toxininfo.getToxinType());
		List<Sampletoxininfo> list=this.toxininfoMapper.selectByExample(example);
		if(list.size()>0){
			return Msg.fail();
		}else{
			this.toxininfoMapper.updateByPrimaryKey(toxininfo);
			return Msg.success();
		}
		
	}
	/*
	 * 根据id删除毒素
	 */
	@Override
	public Msg deletetoxininfoById(Integer Id) {
		Sampletoxininfo list= this.toxininfoMapper.selectByPrimaryKey(Id);
		if(list==null){
			return Msg.fail();
		}else{
		ParExample example=new ParExample();
		example.or().andToxinIdEqualTo(Id);
		this.parMapper.deleteByExample(example);
		this.toxininfoMapper.deleteByPrimaryKey(Id);
		return Msg.success();
		}
	}
	/*
	 *根据id查询category记录
	 */
	@Override
	public Cropcategory selectcategoryById(Integer Id) {
		Cropcategory category=this.cropcategoryMapper.selectByPrimaryKey(Id);
		return category;
	}
	/*
	 * 修改par毒素
	 */
	@Override
	public Msg updatepar(Integer breedId, String[] par, String[] parId,Integer state) {
		
		for (int i = 0; i < par.length; i++) {
			Integer parid=Integer.parseInt(parId[i]);
			Float pars=Float.parseFloat(par[i]);
			this.parMapper.udpatepar(breedId, parid, pars);
		}
		this.cropspeciesMapper.updatespeciesById(breedId, state);
		return Msg.success();
	}
	/*
	 * 查询toxininfo中state为1的毒素
	 */
	@Override
	public List<Sampletoxininfo> selecttoxininfoBystate() {
		SampletoxininfoExample example=new SampletoxininfoExample();
		example.or().andStateEqualTo(1);
		List<Sampletoxininfo> list=this.toxininfoMapper.selectByExample(example);
		return list;
	}
	/*
	 * 增加par小类别
	 */
	@Override
	public Msg addPar(String breedname, Integer cateid, String[] toxintype,
			String[] toxinid, String[] par,Integer state) {
		CropspeciesExample example1=new CropspeciesExample();
		example1.or().andCropSpeciesEqualTo(breedname);
		List<Cropspecies> cropecies1=this.cropspeciesMapper.selectByExample(example1);
		if(cropecies1.size()>0){
			return Msg.fail();
		}else if(breedname==null||breedname==""){
			return Msg.updatefail();
		}else{
		Cropspecies cropspecies=new Cropspecies();
		cropspecies.setCropSpecies(breedname);
		cropspecies.setCropCategoryId(cateid);
		cropspecies.setState(state);
		this.cropspeciesMapper.insert(cropspecies);
		CropspeciesExample example=new CropspeciesExample();
		example.or().andCropSpeciesEqualTo(breedname);
		List<Cropspecies> cropecies=this.cropspeciesMapper.selectByExample(example);
		cropspecies=cropecies.get(0);
		for (int i = 0; i < toxintype.length; i++) {
			Integer toxinids=Integer.parseInt(toxinid[i]);
			Float pars=Float.parseFloat(par[i]);
			if(pars!=0){
				Par par2=new Par();
				par2.setBreedName(breedname);
				par2.setBreedId(cropspecies.getId());
				par2.setPar(pars);
				par2.setToxinId(toxinids);
				par2.setToxinName(toxintype[i]);
				this.parMapper.insert(par2);
			}
		}
		return Msg.success();
	}
	}
	/*
	 * 删除species小类别和par中小类别对应的毒素记录
	 */
	@Override
	public Msg deletespeciesById(Integer breedid) {
		this.cropspeciesMapper.deleteByPrimaryKey(breedid);
		ParExample example=new ParExample();
		example.or().andBreedIdEqualTo(breedid);
		this.parMapper.deleteByExample(example);
		return Msg.success();
	}
	/*
	 * 查询所有species记录
	 */
	@Override
	public List<Cropspecies> selectAllspecies() {
		CropspeciesExample example=new CropspeciesExample();
		return this.cropspeciesMapper.selectByExample(example);
	}
	/*
	 * 添加毒素
	 */
	@Override
	public Msg addtoxininfo(String toxintype, Integer state,
			String[] speciesname, String[] par, String[] speciesid) {
		SampletoxininfoExample example=new SampletoxininfoExample();
		example.or().andToxinTypeEqualTo(toxintype);
		List<Sampletoxininfo> toxininfoList=this.toxininfoMapper.selectByExample(example);
		if (toxininfoList.size()>0) {
			return Msg.fail();
		}else if(toxintype==null||toxintype==""){
			return Msg.updatefail();
		}else{
			Sampletoxininfo toxininfo=new Sampletoxininfo();
			toxininfo.setState(state);
			toxininfo.setToxinType(toxintype);
			this.toxininfoMapper.insert(toxininfo);
			SampletoxininfoExample example1=new SampletoxininfoExample();
			example1.or().andToxinTypeEqualTo(toxintype);
			List<Sampletoxininfo> toxininfoList1=this.toxininfoMapper.selectByExample(example1);
			toxininfo=toxininfoList1.get(0);
			for (int i = 0; i < speciesname.length; i++) {
				Float pars=Float.parseFloat(par[i]);
				Integer speciesids=Integer.parseInt(speciesid[i]);
				if (pars!=0) {
					Par par2=new Par();
					par2.setBreedId(speciesids);
					par2.setBreedName(speciesname[i]);
					par2.setPar(pars);
					par2.setToxinId(toxininfo.getId());
					par2.setToxinName(toxintype);
					this.parMapper.insert(par2);
				}
			}
			return Msg.success();
		}
		
	}
	 
	/*
	 * 模糊查询sampleinfo
	 */
	@Override
	public PageInfo<Sampleinfo> selectlikeSampleinfo(Integer page,Integer pagesize,String sampleId,
			String province, Integer speciesId, Integer toxininfoId,
			Integer year, Integer wuranluv) {
		page=page==null?1:page;
		PageHelper.startPage(page, pagesize);
		if(wuranluv==null){
				Integer min=null;
				Integer max=null;
				List<Sampleinfo> list2=this.sampleinfoMapper.selectlikeSampleinfo(sampleId, province, speciesId, toxininfoId, year, min, max);
				PageInfo pageInfo=new PageInfo<>(list2,pagesize);
				return pageInfo;
		}else if (wuranluv==1) {
			int min=0;
			int max=20;
			List<Sampleinfo> list2=this.sampleinfoMapper.selectlikeSampleinfo(sampleId, province, speciesId, toxininfoId, year, min, max);
			PageInfo pageInfo=new PageInfo<>(list2,pagesize);
			return pageInfo;
					
		}else if(wuranluv==2) {
			int min=20;
			int max=40;
			List<Sampleinfo> list2=this.sampleinfoMapper.selectlikeSampleinfo(sampleId, province, speciesId, toxininfoId, year, min, max);
			PageInfo pageInfo=new PageInfo<>(list2,pagesize);
			return pageInfo;
		}else if (wuranluv==3) {
			int min=40;
			int max=60;
			List<Sampleinfo> list2=this.sampleinfoMapper.selectlikeSampleinfo(sampleId, province, speciesId, toxininfoId, year, min, max);
			PageInfo pageInfo=new PageInfo<>(list2,pagesize);
			return pageInfo;
		}else if (wuranluv==4) {
			int min=60;
			int max=80;
			List<Sampleinfo> list2=this.sampleinfoMapper.selectlikeSampleinfo(sampleId, province, speciesId, toxininfoId, year, min, max);
			PageInfo pageInfo=new PageInfo<>(list2,pagesize);
			return pageInfo;
		}else {
			int min=80;
			int max=100;
			List<Sampleinfo> list2=this.sampleinfoMapper.selectlikeSampleinfo(sampleId, province, speciesId, toxininfoId, year, min, max);
			PageInfo pageInfo=new PageInfo<>(list2,pagesize);
			return pageInfo;
		}
		
	}

}
