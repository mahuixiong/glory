package top.glory.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import top.glory.web.enums.Msg;
import top.glory.web.model.Cropcategory;
import top.glory.web.model.Cropspecies;
import top.glory.web.model.Par;
import top.glory.web.model.Sampletoxininfo;
import top.glory.web.service.CategorylistService;


@Controller
@RequestMapping("page")
public class CropcategoryController {

	@Autowired
	private CategorylistService categorylistService;
	/*
	 * 农产品类别查询
	 */
	@RequestMapping("categorylists")
	public String cropcategoryList(@RequestParam("page")Integer page,Map<String, Object>map){//, HttpServletRequest request
		//Map<String, String[]> map2 = request.getParameterMap();
		PageInfo<Cropcategory> pageinfo=this.categorylistService.catetoryList(page, 6);
		map.put("catelist", pageinfo);
		return "categorylist";
	}
	/*
	 * 新增大类别
	 */
	@RequestMapping("categoryadds")
	@ResponseBody
	public Msg insertcate(@RequestParam("cropcategory") String cropcategory,@RequestParam("state") Integer state){
		return this.categorylistService.insertcate(cropcategory, state);
	}
	/*
	 * 根据Id查询species中的数据
	 */
	@RequestMapping("categoryedits")
	public String selectSpeciesById(@RequestParam("Id")Integer Id,Map<String, Object>map){
		List<Cropspecies> list=this.categorylistService.selectSpeciesById(Id);
		Cropcategory category=this.categorylistService.selectcategoryById(Id);
		map.put("category", category);
		map.put("species", list);
		map.put("Id", Id);
		return "categoryedit";
	}
	/*
	 * 根据id修改catepory
	 */
	@RequestMapping("updatecates")
	@ResponseBody
	public Msg updatecategroyById(@RequestParam("Id") Integer Id,@RequestParam("state") Integer state,@RequestParam("cropcategory") String cropcategory){
		Cropcategory category=new Cropcategory();
		category.setCropCategory(cropcategory);
		category.setId(Id);
		category.setState(state);
		return this.categorylistService.updateCategoryById(category);
	}
	/*
	 * 根据id删除category
	 */
	@RequestMapping("categorydelete")
	@ResponseBody
	public Msg categorydelete(@RequestParam("Id") Integer Id){
		return this.categorylistService.categorydelete(Id);
	}
	/*
	 * 根据breedid毒素查询
	 */
	@RequestMapping("speciesedits")
	public String selectparById(@RequestParam("breedId") Integer breedId,Map<String, Object>map){
		List<Par> list=this.categorylistService.selectParById(breedId);
		map.put("par", list);
		map.put("Id", breedId);
		return "speciesedit";
	}
	/*
	 * 查询所有毒素
	 */
	@RequestMapping("toxinlists")
	public String selectAlltoxin(@RequestParam("Page")Integer Page,Map<String, Object>map){
		PageInfo<Sampletoxininfo> list=this.categorylistService.selectAlltoxin(Page, 6);
		map.put("toxininfo",list);
		return "toxinlist";
	}
	/*
	 * 根据id查询毒素
	 */
	@RequestMapping("toxinedits")
	public String selecttoxininfoById(@RequestParam("Id")Integer Id,Map<String, Object>map){
		Sampletoxininfo sampletoxininfo=this.categorylistService.selecttoxininfoById(Id);
		map.put("sampletoxininfo", sampletoxininfo);
	return "toxinedit";	
	}
	/*
	 * 修改toxininfo
	 */
	@RequestMapping("updatetoxininfo")
	@ResponseBody
	public Msg updateToxininfo(@RequestParam("Id") Integer Id,@RequestParam("toxintype") String type,@RequestParam("state") Integer state){
		Sampletoxininfo toxininfo=new Sampletoxininfo();
		toxininfo.setId(Id);
		toxininfo.setState(state);
		toxininfo.setToxinType(type);
		return this.categorylistService.updateToxininfo(toxininfo);
	}
	/*
	 * 根据id删除毒素
	 */
	@RequestMapping("deletetoxininfo")
	@ResponseBody
	public Msg deletetoxininfoById(@RequestParam("Id") Integer Id){
		return this.categorylistService.deletetoxininfoById(Id);
	}
	/*
	 * 修改毒素
	 */
	@RequestMapping("paredit")
	@ResponseBody
	public Msg updatepar(HttpServletRequest request){
		Integer breedId=Integer.parseInt(request.getParameter("breedid"));
		Integer state=Integer.parseInt(request.getParameter("state"));
		String[] par=request.getParameterValues("par");
		String[] parId=request.getParameterValues("parid");
		return this.categorylistService.updatepar(breedId, par, parId,state);
	}
	/*
	 * 查询toxininfo中state为1的毒素
	 */
	@RequestMapping("speciesadds")
	public  String selecttoxininfoBystate(@RequestParam("Id")Integer Id,Map<String, Object>map){
		List<Sampletoxininfo> list=this.categorylistService.selecttoxininfoBystate();
		map.put("toxininfo", list);
		map.put("cateid", Id);
		return "speciesadd";
	}
	/*
	 * 新增par小类别
	 */
	@RequestMapping("addpar")
	@ResponseBody
	public Msg addPar(HttpServletRequest request){
		String breedname =request.getParameter("breedname");
		Integer cateid =Integer.parseInt(request.getParameter("cateid"));
		Integer state=Integer.parseInt(request.getParameter("state"));
		String[] toxintype=request.getParameterValues("toxintype");
		String[] toxinid=request.getParameterValues("toxinid");
		String[] par=request.getParameterValues("par");
		return this.categorylistService.addPar(breedname, cateid, toxintype, toxinid, par, state);
	}
	/*
	 * 删除species小类别和par中小类别对应的毒素记录
	 */
	@RequestMapping("deletespecies")
	@ResponseBody
	public Msg deletespeciesById(@RequestParam("breedid")Integer breedid){
		return this.categorylistService.deletespeciesById(breedid);
		
	}
}
