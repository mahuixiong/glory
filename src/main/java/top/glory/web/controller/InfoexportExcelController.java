package top.glory.web.controller;


import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import top.glory.web.enums.Msg;
import top.glory.web.service.InfoexportExcelService;

@Controller
@RequestMapping("page")
public class InfoexportExcelController {

	@Autowired
	private InfoexportExcelService ieeService;
	//导出
	@RequestMapping("exportExcelInfo")
	public Msg exportExcelInfo(Integer[] ids,HttpSession session,HttpServletRequest req) throws FileNotFoundException, IllegalArgumentException, IllegalAccessException, IOException{
		for(Integer id:ids){
			System.out.println("0000+++"+id);
		}
		ieeService.exportExcelInfo(ids, session, req);
		
		return Msg.success();
	}
	//导入样品信息表（即添加sampleInfo,SmapleToxin,菌株信息）
	@RequestMapping("importExcelInfo")
	public Msg importExcelInfo(HttpServletRequest request,MultipartFile file) throws Exception{
		System.out.println("importExcelInfo");
		// log.info("这里是excelAvdSet.do, 导入 Excel");
	        //获取上传的文件

//	        MultipartHttpServletRequest multipart = (MultipartHttpServletRequest)request;




//	        MultipartFile file = multipart.getFile("file");
	        InputStream in = file.getInputStream();
	        //数据导入 n =-1 sampleInfo添加失败   n=-1 sampleToxin添加失败   n = -3 菌株信息添加失败
	       int n= ieeService.importExcelInfo(in,file);
	        in.close();
	        System.out.println("nnnnnn="+n);
		return Msg.success();
		
	}
	
	//导入菌株信息表（即更改菌株信息根据sampleId和 菌株原始编号）
	@RequestMapping("updateBacterSInfo")
	public Msg updateBacterSInfo(HttpServletRequest request,MultipartFile file) throws Exception{
		InputStream in =file.getInputStream();
		int n = ieeService.updateBacterSInfo(in, file);
		System.out.println("bs----"+n);
		return Msg.success();
		
	}
}

