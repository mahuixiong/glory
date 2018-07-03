package top.glory.web.controller;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.FileOutputStream;

@Controller
@RequestMapping("down")
public class DownController {

    @RequestMapping("download")
    @ResponseBody
    public String download(String bianma,Integer hang)throws Exception
    {
        //创建工作薄
        XSSFWorkbook wb=new XSSFWorkbook();
        //工作表
        XSSFSheet sheet=wb.createSheet("工作表");
        //设置行数  0代表第一行
        XSSFRow row=sheet.createRow(0);
        //设置列数  0代表一列
        XSSFCell cell=row.createCell(0);
        cell.setCellValue("样品编号");//取样信息 农作物种类 污染率 取样时间
        row.createCell(1).setCellValue("取样信息");
        row.createCell(2).setCellValue("农作物种类");
        row.createCell(3).setCellValue("污染率");
        row.createCell(4).setCellValue("取样时间");
        System.out.println("22222222222222222222222222");
        //传数据-----------------------
        row=sheet.createRow(1);
        row.createCell(0).setCellValue(bianma);
        row.createCell(1).setCellValue(bianma);
        row.createCell(2).setCellValue(bianma);
        row.createCell(3).setCellValue(bianma);
        row.createCell(4).setCellValue(bianma);
        //设置列宽  每个字符是255
        for(int i=0;i<row.getPhysicalNumberOfCells();i++)
        {
            sheet.setColumnWidth(i,255*20);
        }
        FileOutputStream fos=new FileOutputStream("d:/" +bianma+".xlsx");
        //"d:/" +bianma+".xlsx"
        //"d:/文档表1.xlsx"
        wb.write(fos);
        System.out.println("1111111111111111111111111111");
        fos.close();

        //serviece.添加到下载记录中
        return "ok";
    }
}
