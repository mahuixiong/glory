package top.glory.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import top.glory.web.dao.AddresscityMapper;
import top.glory.web.dao.AddressprovinceMapper;
import top.glory.web.dao.AddresstownMapper;
import top.glory.web.dao.BacterialstraininfoMapper;
import top.glory.web.dao.CropcategoryMapper;
import top.glory.web.dao.CropspeciesMapper;
import top.glory.web.dao.SampleinfoMapper;
import top.glory.web.dao.SampletoxinMapper;
import top.glory.web.dao.SampletoxininfoMapper;
import top.glory.web.enums.Msg;
import top.glory.web.model.Addresscity;
import top.glory.web.model.AddresscityExample;
import top.glory.web.model.Addressprovince;
import top.glory.web.model.AddressprovinceExample;
import top.glory.web.model.Addresstown;
import top.glory.web.model.AddresstownExample;
import top.glory.web.model.Bacterialstraininfo;
import top.glory.web.model.BacterialstraininfoExample;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.CropcategoryExample;
import top.glory.web.model.Cropspecies;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.SampleinfoExample;
import top.glory.web.model.SampleinfoWithBLOBs;
import top.glory.web.model.Sampletoxin;
import top.glory.web.model.SampletoxinExample;
import top.glory.web.model.Sampletoxininfo;
import top.glory.web.model.SampletoxininfoExample;
import top.glory.web.service.CategorylistService;
import top.glory.web.service.YangpinService;

@Controller
@RequestMapping("page")
public class YangpinController {
	@Autowired
	private SampletoxininfoMapper sampletoxininfoMapper;
	@Autowired
	private CategorylistService categorylistService;
	@Autowired
	private YangpinService yangpinService;
	@Autowired
	private SampleinfoMapper toxininfoMapper;
	@Autowired
	private AddressprovinceMapper provinceMapper;
	@Autowired
	private AddresscityMapper cityMapper;
	@Autowired
	private AddresstownMapper townMapper;
	@Autowired
	private CropcategoryMapper cropcateMapper;
	@Autowired
	private CropspeciesMapper cropspeciesMapper;
	@Autowired
	private SampleinfoMapper sampleinfoMapper;
	@Autowired
	private BacterialstraininfoMapper bacMapper;
	@Autowired
	private SampletoxinMapper toxinMapper;
	/*
	 * addIM  Integer cropcategoryid,Integer sheng,Integer shi
	 */
	@RequestMapping("selectAlltoxinandcategory")
	public String selectToAddIm(Map<String, Object>map){
		List<Cropcategory> list=this.yangpinService.seleAllcatetory();
		map.put("category", list);
		return "addIM";
	}
	/*
	 * 查询所有毒素
	 */
	@RequestMapping("selectAlltoininfo")
	@ResponseBody
	public List<Sampletoxininfo> selectAlltoininfo(){
		List<Sampletoxininfo> list=this.categorylistService.selecttoxininfoBystate();
		return list;
	}
	/* 
	 * 根据shengId查询city
	 */
	@RequestMapping("selectcityByprivinceCode")
	@ResponseBody
	public List<Addresscity> selectcityByprivinceCode(@RequestParam("shengId") String shengId){
		List<Addresscity> list=this.yangpinService.selectcityByprivinceCode(shengId);
		return list;
	}
	/*
	 * 根据citycode查询xian
	 */
	@RequestMapping("selectxianBycityCode")
	@ResponseBody
	public List<Addresstown> selectxianBycityCode(@RequestParam("cityId")String cityId){
		List<Addresstown> list=this.yangpinService.selectxianBycityCode(cityId);
		return list;
	}
	/*
	 * 根据categoryId查询小类别
	 */
	@RequestMapping("selectCropspeciesByIDs")
	@ResponseBody
	public List<Cropspecies> selectCropspeciesByID(@RequestParam("cateporyId")Integer categoryId){
		List<Cropspecies> list=this.categorylistService.selectSpeciesById(categoryId);
		return list;
	}
	/*
	 * 新增IM
	 */
	@RequestMapping("AddIM")
	@ResponseBody
	public Msg addIM(String sampleid,Integer cropcategoryid,Integer breed,String sheng,String shi,
			String xian,String township,String village,String household,String harvesttime,String samplingtime,String quyangren,
			String seasonal,String description,Float pollutionrate,Integer[] toxinid,Float[] toxincount,String[] originalnum,
			String[] docadd,String[] txtadd,String[] imgadd)throws Exception{
		SampleinfoWithBLOBs sampleinfo=new SampleinfoWithBLOBs();
		Bacterialstraininfo bacterialstraininfo=new Bacterialstraininfo();
		Date dateharvesttime = new SimpleDateFormat("yyyy-MM-dd").parse(harvesttime); 
		Date datesamplingtime = new SimpleDateFormat("yyyy-MM-dd").parse(samplingtime); 
			sampleinfo.setSampleId(sampleid);
			sampleinfo.setBreed(breed);
			AddressprovinceExample province=new AddressprovinceExample();
			province.or().andCodeEqualTo(sheng);
			List<Addressprovince> provincelist=this.provinceMapper.selectByExample(province);
			Addressprovince provinces=provincelist.get(0);
			sampleinfo.setProvince(provinces.getName());
			AddresscityExample city=new AddresscityExample();
			city.or().andCodeEqualTo(shi);
			List<Addresscity>cityList=this.cityMapper.selectByExample(city);
			Addresscity citys=cityList.get(0);
			sampleinfo.setCity(citys.getName());
			AddresstownExample town=new AddresstownExample();
			town.or().andCodeEqualTo(xian);
			List<Addresstown>townList=this.townMapper.selectByExample(town);
			Addresstown towns=townList.get(0);
			sampleinfo.setCounty(towns.getName());
			sampleinfo.setSamplingPeople(quyangren);
			sampleinfo.setHarvestTime(dateharvesttime);
			sampleinfo.setHousehold(household);
			sampleinfo.setPollutionRate(pollutionrate);
			sampleinfo.setSamplingTime(datesamplingtime);
			sampleinfo.setTownship(township);
			sampleinfo.setVillage(village);
			sampleinfo.setIsdel(1);
			sampleinfo.setSeasonal(seasonal);
			sampleinfo.setDescription(description);
			this.yangpinService.addIM(sampleinfo);
		for (int i = 0; i < toxinid.length; i++) {
			Sampletoxin toxin=new Sampletoxin();
			SampleinfoExample example=new SampleinfoExample();
			example.or().andSampleIdEqualTo(sampleid);
			List<Sampleinfo> list=this.toxininfoMapper.selectByExample(example);
			Sampleinfo sampleinfo2=list.get(0);
			toxin.setSampleInfoId(sampleinfo2.getId());
			toxin.setToxinCount(toxincount[i]);
			toxin.setToxinId(toxinid[i]);
			this.yangpinService.addToxin(toxin);
		}
		for (int i = 0; i < originalnum.length; i++) {
			SampleinfoExample example=new SampleinfoExample();
			example.or().andSampleIdEqualTo(sampleid);
			List<Sampleinfo> list=this.toxininfoMapper.selectByExample(example);
			Sampleinfo sampleinfo2=list.get(0);
			Date date=new Date();
			java.sql.Date date2 =new java.sql.Date(date.getTime());
			bacterialstraininfo.setCreateTime(date2);
			bacterialstraininfo.setOriginalNum(originalnum[i]);
			bacterialstraininfo.setPictureAddr(imgadd[i]);
			bacterialstraininfo.setSampleInfoId(sampleinfo2.getId());
			bacterialstraininfo.setSampleNum(sampleid);
			bacterialstraininfo.setTxtAddr(txtadd[i]);
			bacterialstraininfo.setWordAddr(docadd[i]);
			this.yangpinService.addBc(bacterialstraininfo);
		}
		return Msg.success();
	}
	/*
	 * 根据样品编号查询sampleinfo是否存在
	 */
	@RequestMapping("selectBysampleid")
	@ResponseBody
	public Msg selectBysampleid(@RequestParam("sampleid") String sampleid){
		return this.yangpinService.selectBysampleid(sampleid);
	}
	/*
	 * 根据菌株编号查询bac是否已经存在
	 */
	@RequestMapping("selectByoriginal")
	@ResponseBody
	public Msg selectByoriginal(@RequestParam("originalnum")String originalnum){
		return this.yangpinService.selectByoriginal(originalnum);
	}
	/*
	 * 删除IM
	 */
	@RequestMapping("deleteIM")
	@ResponseBody
	public Msg deleteIM(@RequestParam("sampleid") String sampleid){
		return this.yangpinService.deleteIM(sampleid);
	}
	/*
	 * 批量删除
	 */
	@RequestMapping("deleteAllIM")
	@ResponseBody
	public Msg deleteAllIM(String[] checkone){
		return this.yangpinService.deleteAllIM(checkone);
	}
	/*
	 * 根据样品编号查询sampleinfo
	 */
	@RequestMapping("selectBysampleIdString")
	public String selectBysampleIdString(String sampleid,Map<String, Object>map){
		SampletoxininfoExample example=new SampletoxininfoExample();
		List<Sampletoxininfo> list=this.sampletoxininfoMapper.selectByExample(example);
		CropcategoryExample cropcategoryExample=new CropcategoryExample();
		List<Cropcategory> cropcategories=this.cropcateMapper.selectByExample(cropcategoryExample);
		AddressprovinceExample proviExample=new AddressprovinceExample();
		List<Addressprovince> addressprovinces=this.provinceMapper.selectByExample(proviExample);
		AddresscityExample addresscityExample=new AddresscityExample();
		List<Addresscity> addresscities=this.cityMapper.selectByExample(addresscityExample);
		AddresstownExample addresstownExample=new AddresstownExample();
		List<Addresstown> addresstowns=this.townMapper.selectByExample(addresstownExample);
		SampleinfoExample sampleinfoExample=new SampleinfoExample();
		sampleinfoExample.or().andSampleIdEqualTo(sampleid);
		List<Sampleinfo> sampleinfos=this.sampleinfoMapper.selectByExample(sampleinfoExample);
		Sampleinfo sampleinfo=sampleinfos.get(0);
		addresstownExample.or().andNameEqualTo(sampleinfo.getCounty());
		List<Addresstown> townaddressList=this.townMapper.selectByExample(addresstownExample);
		addresscityExample.or().andNameEqualTo(sampleinfo.getCity());
		List<Addresscity> addresscities2=this.cityMapper.selectByExample(addresscityExample);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String havtime = sdf.format(sampleinfo.getHarvestTime());
		String sampletime = sdf.format(sampleinfo.getSamplingTime());
		SampletoxinExample sampletoxinExample=new SampletoxinExample();
		sampletoxinExample.or().andSampleInfoIdEqualTo(sampleinfo.getId());
		List<Sampletoxin> sampletoxins=this.toxinMapper.selectByExample(sampletoxinExample);
		BacterialstraininfoExample bacterialstraininfoExample=new BacterialstraininfoExample();
		bacterialstraininfoExample.or().andSampleNumEqualTo(sampleid);
		List<Bacterialstraininfo> bacterialstraininfos=this.bacMapper.selectByExample(bacterialstraininfoExample);
		map.put("cropcategories", cropcategories);
		map.put("havtime", havtime);
		map.put("sampletime", sampletime);
		map.put("addressprovinces", addressprovinces);
		map.put("addresscities", addresscities);
		map.put("addresstowns", addresstowns);
		map.put("sampletoxins", sampletoxins);
		map.put("bacterialstraininfos", bacterialstraininfos);
		map.put("sampleid", sampleid);
		map.put("sampleinfos", sampleinfos);
		map.put("toxininfo", list);
		map.put("addresscities2", addresscities2);
		map.put("townaddressList", townaddressList);
		
		return "editIM";
	}
	/*
	 * 根据id查询species
	 */
	@RequestMapping("selectspeciesBycateID")
	@ResponseBody
	public List<Cropspecies> selectspeciesBycateID(Integer cateId){
		List<Cropspecies> list=this.categorylistService.selectSpeciesById(cateId);
		return list;
	}
}
