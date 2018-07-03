package top.glory.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.glory.web.dao.AddresscityMapper;
import top.glory.web.dao.AddresstownMapper;
import top.glory.web.dao.BacterialstraininfoMapper;
import top.glory.web.dao.CropcategoryMapper;
import top.glory.web.dao.SampleinfoMapper;
import top.glory.web.dao.SampletoxinMapper;
import top.glory.web.enums.Msg;
import top.glory.web.model.Addresscity;
import top.glory.web.model.AddresscityExample;
import top.glory.web.model.Addresstown;
import top.glory.web.model.AddresstownExample;
import top.glory.web.model.Bacterialstraininfo;
import top.glory.web.model.BacterialstraininfoExample;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.CropcategoryExample;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.SampleinfoExample;
import top.glory.web.model.Sampletoxin;
import top.glory.web.model.SampletoxinExample;
import top.glory.web.service.YangpinService;
@Service
public class YangpinServiceImpl implements YangpinService{
	@Autowired
	private CropcategoryMapper categoryMapper;
	@Autowired
	private AddresscityMapper addresscityMapper;
	@Autowired
	private AddresstownMapper addresstownMapper;
	@Autowired
	private SampleinfoMapper sampleinfoMapper;
	@Autowired
	private BacterialstraininfoMapper bacterMapper;
	@Autowired
	private SampletoxinMapper toxinMapper;
	/*
	 * 查询所有农产品
	 */
	@Override
	public List<Cropcategory> seleAllcatetory() {
		CropcategoryExample example=new CropcategoryExample();
		List<Cropcategory> list=this.categoryMapper.selectByExample(example);
		return list;
	}

	/*
	 * 根据shengId查询city
	 */
	@Override
	public List<Addresscity> selectcityByprivinceCode(String shengId) {
		AddresscityExample example=new AddresscityExample();
		example.or().andProvincecodeEqualTo(shengId);
		List<Addresscity> list=this.addresscityMapper.selectByExample(example);
		return list;
	}

	/*
	 * 根据citycode查询xian
	 */
	@Override
	public List<Addresstown> selectxianBycityCode(String cityId) {
		AddresstownExample example=new AddresstownExample();
		example.or().andCitycodeEqualTo(cityId);
		List<Addresstown> list=this.addresstownMapper.selectByExample(example);
		return list;
	}
	/*
	 * 增加IM
	 */
	@Override
	public void addIM(Sampleinfo sampleinfo) {
		this.sampleinfoMapper.insert(sampleinfo);
	}
	/*
	 * 根据菌株编号查询bac是否已经存在
	 */
	@Override
	public Msg selectByoriginal(String originalnum) {
		BacterialstraininfoExample example=new BacterialstraininfoExample();
		example.or().andOriginalNumEqualTo(originalnum);
		List<Bacterialstraininfo>bacterialstraininfos=this.bacterMapper.selectByExample(example);
		if(bacterialstraininfos.size()>0){
			return Msg.fail();
		}else{
			return Msg.success();
		}
		
	}
	/*
	 * 增加bc
	 */
	@Override
	public void addBc(Bacterialstraininfo bacterialstraininfo) {
		this.bacterMapper.insert(bacterialstraininfo);
		
	}
	/*
	 * 增加toxin
	 */
	@Override
	public void addToxin(Sampletoxin toxin) {
		this.toxinMapper.insert(toxin);
	}
	/*
	 * 删除IM
	 */
	@Override
	public Msg deleteIM(String sampleid) {
		SampleinfoExample example=new SampleinfoExample();
		example.or().andSampleIdEqualTo(sampleid);
		this.sampleinfoMapper.deleteByExample(example);
		BacterialstraininfoExample example2=new BacterialstraininfoExample();
		example2.or().andSampleNumEqualTo(sampleid);
		this.bacterMapper.deleteByExample(example2);
		return Msg.success();
	}
	/*
	 * 批量删除IM
	 */
	@Override
	public Msg deleteAllIM(String[] checkone) {
		SampleinfoExample example=new SampleinfoExample();
		BacterialstraininfoExample example2=new BacterialstraininfoExample();
		for (int i = 0; i < checkone.length; i++) {
			example.or().andSampleIdEqualTo(checkone[i]);
			this.sampleinfoMapper.deleteByExample(example);
		}
		for (int i = 0; i < checkone.length; i++) {
			example2.or().andSampleNumEqualTo(checkone[i]);
			this.bacterMapper.deleteByExample(example2);
		}
		return Msg.success();
	}
	/*
	 * 查询sample记录
	 */
	@Override
	public Msg selectBysampleid(String fromVals) {
		SampleinfoExample example=new SampleinfoExample();
		example.or().andSampleIdEqualTo(fromVals);
		List<Sampleinfo>list=this.sampleinfoMapper.selectByExample(example);
		if(list.size()>0){
			return Msg.success();
		}else{
			return Msg.fail();
		}
		
	}
	/*
	 * 根据id查询sampleinfo记录
	 */
	@Override
	public Sampleinfo selectsamplebyId(Integer id) {
		Sampleinfo sampleinfo=this.sampleinfoMapper.selectByPrimaryKey(id);
		return sampleinfo;
	}
	/*
	 * 根据sampleid查询sampletoxin
	 */
	@Override
	public List<Sampletoxin> selectsampletoxinBysampleId(Integer id) {
		SampletoxinExample example=new SampletoxinExample();
		example.or().andSampleInfoIdEqualTo(id);
		List<Sampletoxin> list=this.toxinMapper.selectByExample(example);
		return list;
	}
	/*
	 * 根据sampleid查询菌毒
	 */
	@Override
	public List<Bacterialstraininfo> selBacStrainInfoBySamInfoId(Integer id) {
		BacterialstraininfoExample example= new BacterialstraininfoExample();
		example.or().andSampleInfoIdEqualTo(id);
		List<Bacterialstraininfo>list=this.bacterMapper.selectByExample(example);
		return list;
	}
	/*
	 * 查询所有sampleinfo
	 */
	@Override
	public List<Sampleinfo> selAllSampleInfo() {
		SampleinfoExample example=new SampleinfoExample();
		List<Sampleinfo> list=this.sampleinfoMapper.selectByExample(example);
		return list;
	}
	/*
	 * 根据id查询sampleinfo
	 */
	@Override
	public List<Sampleinfo> selSampleInfoBySampleId(String id) {
		SampleinfoExample example =new SampleinfoExample();
		example.or().andSampleIdEqualTo(id);
		List<Sampleinfo> list=this.sampleinfoMapper.selectByExample(example);
		return list;
	}
	
}
