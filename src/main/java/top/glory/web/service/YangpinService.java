package top.glory.web.service;

import java.util.List;

import top.glory.web.enums.Msg;
import top.glory.web.model.Addresscity;
import top.glory.web.model.Addresstown;
import top.glory.web.model.Bacterialstraininfo;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.Sampletoxin;

public interface YangpinService {
	/*
	 * 查询所有农产品
	 */
	public List<Cropcategory> seleAllcatetory();
	/*
	 * 根据shengId查询city
	 */
	public List<Addresscity> selectcityByprivinceCode(String shengId);
	/*
	 * 根据citycode查询xian
	 */
	public List<Addresstown> selectxianBycityCode(String cityId);
	/*
	 * 增加IM
	 */
	public void addIM(Sampleinfo sampleinfo);
	/*
	 * 增加bc
	 */
	public void addBc(Bacterialstraininfo bacterialstraininfo);
	/*
	 * 增加toxin
	 */
	public void addToxin(Sampletoxin toxin);
	/*
	 * 根据菌株编号查询bac是否已经存在
	 */
	public Msg selectByoriginal(String originalnum);
	/*
	 * 删除IM
	 */
	public Msg deleteIM(String sampleid);
	/*
	 * 批量删除IM
	 */
	public Msg deleteAllIM(String[] checkone);
	/*
	 * 查询sample记录
	 */
	public Msg selectBysampleid(String fromVals);
	/*
	 * 根据id查询sampleinfo记录
	 */
	public Sampleinfo selectsamplebyId(Integer id);
	/*
	 * 根据sampleid查询sampletoxin
	 */
	public List<Sampletoxin> selectsampletoxinBysampleId(Integer id);
	/*
	 * 根据sampleid查询菌毒
	 */
	public List<Bacterialstraininfo> selBacStrainInfoBySamInfoId(Integer id);
	/*
	 * 查询所有sampleinfo
	 */
	public List<Sampleinfo> selAllSampleInfo();
	/*
	 * 根据id查询sampleinfo
	 */
	public List<Sampleinfo> selSampleInfoBySampleId(String id);
}
