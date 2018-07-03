package top.glory.web.controller;


import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileInputStream;

public class Ce {
    public static void main(String[] args) throws Exception {
        FileInputStream fis=new FileInputStream("d:/pp.xlsx");
        Workbook wb= WorkbookFactory.create(fis);
        Sheet sheet=wb.getSheetAt(0);
        Row row;
        int p=sheet.getRow(9).getPhysicalNumberOfCells();
        System.out.println(p);
        //行数
        int lie=sheet.getRow(0).getPhysicalNumberOfCells();
        for(int i=0;i<90;i++)
        {
            row=sheet.getRow(i);
            if(row!=null)
            {
                for(int o=0;o<lie;o++)
                {
                    if(row.getCell(o)==null)
                    {
                        System.out.print("--"+"|");
                        o++;
                        if(o<lie)
                        {
                            if(row.getCell(o)==null)
                            {
                                System.out.print("--"+"|");
                            }
                            if(row.getCell(o)!=null)
                            {
                                System.out.print(row.getCell(o).toString()+"|");
                            }
                        }

                    }
                    else{
                        System.out.print(row.getCell(o).toString()+"|");
                    }
                }
                System.out.println();
            }

        }
    }
}