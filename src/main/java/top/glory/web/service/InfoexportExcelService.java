package top.glory.web.service;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public interface InfoexportExcelService {
	//导出查询到的数据到表格
	public void exportExcelInfo(Integer[] ids,HttpSession session,HttpServletRequest req) throws FileNotFoundException, IOException, IllegalArgumentException, IllegalAccessException;
	//导入样品信息表格信息到数据库
	public int importExcelInfo(InputStream in, MultipartFile file) throws Exception;
	//导入菌株信息表
	public int updateBacterSInfo(InputStream in, MultipartFile file) throws Exception;
}
