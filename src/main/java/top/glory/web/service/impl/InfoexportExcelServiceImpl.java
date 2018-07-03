package top.glory.web.service.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import top.glory.core.util.Comment;
import top.glory.web.dao.BacterialstraininfoMapper;
import top.glory.web.dao.SampleinfoMapper;
import top.glory.web.dao.SampletoxinMapper;
import top.glory.web.model.Bacterialstraininfo;
import top.glory.web.model.BacterialstraininfoExample;
import top.glory.web.model.BacterialstraininfoExample.Criteria;
import top.glory.web.model.Sampleinfo;
import top.glory.web.model.SampleinfoWithBLOBs;
import top.glory.web.model.Sampletoxin;
import top.glory.web.model.Sampletoxininfo;
import top.glory.web.service.CategorylistService;
import top.glory.web.service.InfoexportExcelService;
import top.glory.web.service.YangpinService;
@Service
public class InfoexportExcelServiceImpl implements InfoexportExcelService {

	@Autowired
	private CategorylistService categoryservice;
	@Autowired
	private YangpinService yangservice;
	@Autowired
	private SampletoxinMapper toxinMapper;
	@Autowired
	private BacterialstraininfoMapper bacterialstraininfoMapper;
	@Autowired
	private SampleinfoMapper sampleinfoMapper;
	private final static String excel2003L =".xls";    //2003- 版本的excel
    private final static String excel2007U =".xlsx";   //2007+ 版本的excel
	/*
	 * 导出
	 */
	@Override
	public void exportExcelInfo(Integer[] ids, HttpSession session,HttpServletRequest req)throws FileNotFoundException, IOException, IllegalArgumentException, IllegalAccessException {
		List<Sampleinfo> list = new ArrayList<>();
		List toxinCountList = new ArrayList<>();
		List bsList = new ArrayList<>();
		
		//查询sampleToxinInfo
		List<Sampletoxininfo> stiList = categoryservice.selecttoxininfoBystate();
		
		for(Integer id:ids){
			//按id查询sampleInfo
			Sampleinfo sampleInfo = yangservice.selectsamplebyId(id);
			list.add(sampleInfo);
			
			//根据sampleInfo的id查询sampleToxin
			List<Sampletoxin> sampleToxinList = yangservice.selectsampletoxinBysampleId(id);
			//计算样品对应的各种毒素含量
			List<Float> toxinCounts=new ArrayList<Float>();
			for(Sampletoxininfo s:stiList){
				Float toxin=toxinMapper.selectToxinCount(id, s.getId());
				toxinCounts.add(toxin);
			}
			toxinCountList.add(toxinCounts);
			
			//根据sampleInfo的id查询菌株信息
			List<Bacterialstraininfo> bsiList = yangservice.selBacStrainInfoBySamInfoId(id);
			bsList.add(bsiList);
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
		String res = sdf.format(new Date());
		
		//声称excel
		String rootPath = req.getSession().getServletContext().getRealPath("/Upload");
        rootPath = rootPath.replaceAll("\\\\", "/");
        String[] strs = rootPath.split("/");
        StringBuffer path1 = new StringBuffer();
        for(int a=0;a<strs.length-3;a++){
        	
        	path1.append(strs[a]+"/");
        }
        System.out.println(path1);
		String pathExcel=path1+"/Excel/"+File.separator+"样品信息表"+res+".xls";
		Workbook wk=null;
		wk = exportExcel(list, Sampleinfo.class, stiList,toxinCountList,bsList );
		wk.write(new FileOutputStream(pathExcel));
		// wk.close();
		
	}
/*
 * 导入样品
 */
	@Override
	public int importExcelInfo(InputStream in, MultipartFile file)throws Exception {
		System.out.println("mingzi++"+file.getOriginalFilename());
		List<List<Object>> listob = getBankListByExcel(in,file.getOriginalFilename());
		
        System.out.println("listob+++"+listob);
        
      //查询所有的sampleInfo
      	List<Sampleinfo> sampleInfoList = yangservice.selAllSampleInfo();
      //查询sampleToxinInfo
      	List<Sampletoxininfo> stiList = categoryservice.selecttoxininfoBystate();
        //sampleInfo占表格的21列  sampletoxin占22-31 bacter  31-
      	
      //	SampleInfoWithBLOBs samInfo = new SampleInfoWithBLOBs();
      	SampleinfoWithBLOBs samInfo=new SampleinfoWithBLOBs();
       //循环遍历listob
      	for(int i =0;i<listob.size();i++){
        	List list =listob.get(i);
        	//将list中德数据封装到对象里
        	if(list.get(1)!=null&&!list.get(1).toString().equals(""))
        	samInfo.setSampleId((String) list.get(1));
        	if(list.get(2)!=null&&!list.get(2).toString().equals(""))
        	samInfo.setCropCategoryId(Integer.parseInt((String) list.get(2)));
        	if(list.get(3)!=null&&!list.get(3).toString().equals(""))
        	samInfo.setBreed(Integer.parseInt((String) list.get(3)));
        	if(list.get(4)!=null&&!list.get(4).toString().equals(""))
        	samInfo.setProvince((String) list.get(4));
        	if(list.get(5)!=null&&!list.get(5).toString().equals(""))
        	samInfo.setCity((String) list.get(5));
        	if(list.get(6)!=null&&!list.get(6).toString().equals(""))
        	samInfo.setCounty((String) list.get(6));
        	if(list.get(7)!=null&&!list.get(7).toString().equals(""))
        	samInfo.setTownship((String) list.get(7));
        	if(list.get(8)!=null&&!list.get(8).toString().equals(""))
        	samInfo.setVillage((String) list.get(8));
        	if(list.get(9)!=null&&!list.get(9).toString().equals(""))
        	samInfo.setHousehold((String) list.get(9));
        	
        	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        	if(list.get(10)!=null&&!list.get(10).toString().equals("")){
	        	
	    		Date time = df.parse((String) list.get(10));
	    		
	        	samInfo.setHarvestTime(time);
        	}
        	if(list.get(11)!=null&&!list.get(11).toString().equals("")){
        		Date time1 =df.parse((String) list.get(11));
        	
        		samInfo.setSamplingTime(time1);
        	}
        	if(list.get(12)!=null&&!list.get(12).toString().equals(""))
        	samInfo.setSamplingPeople((String) list.get(12));
        	if(list.get(15)!=null&&!list.get(15).toString().equals(""))
        	samInfo.setPollutionRate(Float.parseFloat((String) list.get(15)));
        	
        	if(list.get(16)!=null&&!list.get(16).toString().equals("")){
        		
	        	Date time2 =df.parse((String) list.get(16));
	        	samInfo.setCreateTime(time2);
        	}
        	if(list.get(17)!=null&&!list.get(17).toString().equals("")){
	        	Date time3 =df.parse((String) list.get(17));
	        	samInfo.setInputTime(time3);
        	}
        	if(list.get(18)!=null&&!list.get(18).toString().equals(""))
        	samInfo.setEnterpeople(Integer.parseInt((String) list.get(18)));
        	samInfo.setIsdel(1);
        	
        	/*List<SampleInfo> sList = sampleInfoService.selSampleInfoBySampleId(list.get(1).toString());
        	int n1 =0;
        	if(sList.size()==0 || sList==null){
        		//添加sampleInfo
        		n1 = sampleInfoService.insertOneSampleInfo(samInfo);
        	}else{
        		//更新
        	}*/
        	//添加sampleInfo
    		int n1 = sampleinfoMapper.insert(samInfo);
        	if(n1==0){return -1;}
        	//查询出新添加的sampleInfo
        	List<Sampleinfo> sampleList = yangservice.selSampleInfoBySampleId((String) list.get(0));
        	//添加SampleToxin
        	for(int a =0;a<stiList.size();a++){
        		if(list.get(21+a)!=null&&!list.get(21+a).toString().equals("")){
        			Sampletoxin s = new Sampletoxin();
        			s.setToxinCount(Float.parseFloat((String) list.get(21+a)));
        			s.setToxinId(stiList.get(a).getId());
        			s.setSampleInfoId(sampleList.get(0).getId());
        			int n2 = toxinMapper.insert(s);
        			if(n2==0){return -2;}
        		}
        	}
        	
        	//添加菌株信息
        	for(int b = 31;b<list.size();b++){
        		Bacterialstraininfo bs = new Bacterialstraininfo();
        		bs.setSampleInfoId(sampleList.get(0).getId());
        		bs.setSampleNum((String) list.get(1));
        		bs.setOriginalNum((String) list.get(b));
        		bs.setIsdel(1);
        		int n3 = bacterialstraininfoMapper.insert(bs);
        		if(n3==0){return -3;}
        	}
        }
        
		return 1;
	}
/*
 * 导入菌株
 */
	@Override
	public int updateBacterSInfo(InputStream in, MultipartFile file) throws Exception{
		System.out.println("mingzi++"+file.getOriginalFilename());
		List<List<Object>> listob = getBankListByExcel(in,file.getOriginalFilename());
		System.out.println("listob+++"+listob);
		//更改菌株信息  根据sampleId和菌株原始编号
		for(int i=0;i<listob.size();i++){
			List list = listob.get(i);
			Bacterialstraininfo bs =new Bacterialstraininfo();
			if(list.get(2)!=null&&!list.get(2).toString().equals(""))
				bs.setWordAddr((String) list.get(2));
			if(list.get(3)!=null&&!list.get(3).toString().equals(""))
				bs.setTxtAddr((String) list.get(3));
			if(list.get(4)!=null&&!list.get(4).toString().equals(""))
				bs.setPictureAddr((String) list.get(4));
			
			BacterialstraininfoExample example = new BacterialstraininfoExample();
			Criteria c= example.createCriteria();
			//if(list.get(0)!=null)
				c.andSampleInfoIdEqualTo(Integer.parseInt((String) list.get(0)));
			//if(list.get(0)!=null)
				c.andOriginalNumEqualTo((String) list.get(1));
			int n = bacterialstraininfoMapper.updateByExampleSelective(bs, example);
			if(n==0){return n;}
			
		}
		
		return 1;	}
	//导出表格
		public static Workbook exportExcel(List data, Class clasz ,List<Sampletoxininfo> list,
				List toxinCountList,List bsList)
				throws IllegalArgumentException, IllegalAccessException,
				FileNotFoundException, IOException {
			// ����Excel�����
			HSSFWorkbook wk = new HSSFWorkbook();

			HSSFSheet sheet = wk.createSheet();
			
			//设置样式
			CellStyle style=wk.createCellStyle();

			//设置表头信息
			HSSFRow row0 = sheet.createRow(0);
			Field[] fields = clasz.getDeclaredFields();
			int k=0;
			for (int i = 0; i < fields.length; i++) {
				Comment comment=fields[i].getAnnotation(Comment.class);
				String filedName="";
				if(comment!=null){
					Cell cell=row0.createCell(k);
					filedName=comment.value();
					cell.setCellValue(filedName);
					k+=1;
				}
//				}else{
//					filedName=fields[i].getName();
//				}
//				cell.setCellValue(filedName);
			}
			for(Sampletoxininfo s:list){
				Cell cell=row0.createCell(k+1);
				cell.setCellValue(s.getToxinType());
				k+=1;
			}
			/*Cell cell1=row0.createCell(k+1);
			cell1.setCellValue("菌株原始编号");*/
			List<Bacterialstraininfo>  bsiList1 = (List<Bacterialstraininfo>) bsList.get(0);
			for(Bacterialstraininfo bs : bsiList1){
				Cell cell=row0.createCell(k+1);
				cell.setCellValue("菌株原始编号");
				k+=1;
			}
			// 将数据写到表格中
			for (int i = 1; i < data.size() + 1; i++) {
				Object obj = data.get(i-1);
				HSSFRow row = sheet.createRow(i);
				int m=0;
				for (int j = 0; j < fields.length; j++) {
					Comment comment=fields[j].getAnnotation(Comment.class);					
					if(comment!=null){
						Field field = fields[j];
						field.setAccessible(true);	
						Object object = field.get(obj);			
						HSSFCell cell = row.createCell(m);
						if(object==null){
							cell.setCellValue("");
						}
						else if (object instanceof Date) {
							Date date = (Date) object;
							String format = new SimpleDateFormat("yyyy-MM-dd").format(date);
							cell.setCellValue(format);
						} else {
							cell.setCellValue(object.toString());
						}
						m+=1;
					}
				}
				List<Float> toxinCounts = (List<Float>) toxinCountList.get(i-1);
					for(Float f:toxinCounts){
						HSSFCell cell = row.createCell(m+1);
						if(f==null){
						cell.setCellValue("");	
						}else{
						cell.setCellValue(f);
						}
						m+=1;
					}
				List<Bacterialstraininfo> bsiList = (List<Bacterialstraininfo>) bsList.get(i-1);
					for(Bacterialstraininfo bs:bsiList){
						HSSFCell cell = row.createCell(m+1);
						System.out.println("----"+bs.getOriginalNum());
						if(bs.getOriginalNum()==null){
						cell.setCellValue("");	
						}else{
							cell.setCellValue(bs.getOriginalNum());
						}
						m+=1;
					}

			}

			return wk;
		}
		
		
		//导入excel
		
		 /**
	     * Excel导入
	     */
	    public static  List<List<Object>> getBankListByExcel(InputStream in, String fileName) throws Exception{
	        List<List<Object>> list = null;
	        //创建Excel工作薄
	        Workbook work = getWorkbook(in,fileName);
	        if(null == work){
	            throw new Exception("创建Excel工作薄为空！");
	        }
	        Sheet sheet = null;
	        Row row = null;
	        Cell cell = null;
	        list = new ArrayList<List<Object>>();
	        //遍历Excel中所有的sheet
	        for (int i = 0; i < work.getNumberOfSheets(); i++) {
	            sheet = work.getSheetAt(i);
	            if(sheet==null){continue;}
	            //遍历当前sheet中的所有行
	            //包涵头部，所以要小于等于最后一列数,这里也可以在初始值加上头部行数，以便跳过头部
	            for (int j = sheet.getFirstRowNum(); j <= sheet.getLastRowNum(); j++) {
	                //读取一行
	                row = sheet.getRow(j);
	                //去掉空行和表头
	                if(row==null||row.getFirstCellNum()==j){continue;}
	                //遍历所有的列
	                List<Object> li = new ArrayList<Object>();
	                for (int y = row.getFirstCellNum(); y < row.getLastCellNum(); y++) {
	                    cell = row.getCell(y);
	                    li.add(getCellValue(cell));
	                }
	                list.add(li);
	            }
	        }
	        return list;
	    }

	    /**
	     * 描述：根据文件后缀，自适应上传文件的版本
	     */
	    public static  Workbook getWorkbook(InputStream inStr,String fileName) throws Exception{
	        Workbook wb = null;
	        String fileType = fileName.substring(fileName.lastIndexOf("."));
	        if(excel2003L.equals(fileType)){
	            wb = new HSSFWorkbook(inStr);  //2003-
	        }else if(excel2007U.equals(fileType)){
	            wb = new XSSFWorkbook(inStr);  //2007+
	        }else{
	            throw new Exception("解析的文件格式有误！");
	        }
	        return wb;
	    }
		
	    
	    /**
	     * 描述：对表格中数值进行格式化
	     */
	    public static  Object getCellValue(Cell cell){
	        Object value = null;
	        DecimalFormat df = new DecimalFormat("0");  //格式化字符类型的数字
	        SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");  //日期格式化
	        DecimalFormat df2 = new DecimalFormat("0.00");  //格式化数字
	       System.out.println("cell++"+cell);
	       if(cell != null){
	        switch (cell.getCellType()) {
	            case Cell.CELL_TYPE_STRING:
	                value = cell.getRichStringCellValue().getString();
	                break;
	            case Cell.CELL_TYPE_NUMERIC:
	                if("General".equals(cell.getCellStyle().getDataFormatString())){
	                    value = df.format(cell.getNumericCellValue());
	                }else if("m/d/yy".equals(cell.getCellStyle().getDataFormatString())){
	                    value = sdf.format(cell.getDateCellValue());
	                }else{
	                    value = df2.format(cell.getNumericCellValue());
	                }
	                break;
	            case Cell.CELL_TYPE_BOOLEAN:
	                value = cell.getBooleanCellValue();
	                break;
	            case Cell.CELL_TYPE_BLANK:
	                value = "";
	                break;
	            default:
	                break;
	        }
	       }
	        return value;
	    }

}
