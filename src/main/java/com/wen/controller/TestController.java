package com.wen.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wen.pojo.TbStudent;
import com.wen.util.ExcelReaderUtil;
@Controller
public class TestController {
	
	@RequestMapping("readExcel")
	@ResponseBody
	public String test(){
		String excelPath = "D:\\student.xlsx";

        try {
            //String encoding = "GBK";
        	System.out.println("进来了");
            File excel = new File(excelPath);
            if (excel.isFile() && excel.exists()) {   //判断文件是否存在

                String[] split = excel.getName().split("\\.");  //.是特殊字符，需要转义！！！！！
                Workbook wb;
                //根据文件后缀（xls/xlsx）进行判断
                if ( "xls".equals(split[1])){
                    FileInputStream fis = new FileInputStream(excel);   //文件流对象
                    wb = new HSSFWorkbook(fis);
                }else if ("xlsx".equals(split[1])){
                    wb = new XSSFWorkbook(excel);
                }else {
                    System.out.println("文件类型错误!");
                    return null;
                }

                //开始解析
                Sheet sheet = wb.getSheetAt(0);     //读取sheet 0

                int firstRowIndex = sheet.getFirstRowNum()+1;   //第一行是列名，所以不读
                int lastRowIndex = sheet.getLastRowNum();
                System.out.println("firstRowIndex: "+firstRowIndex);
                System.out.println("lastRowIndex: "+lastRowIndex);

                for(int rIndex = firstRowIndex; rIndex <= lastRowIndex; rIndex++) {   //遍历行
                    System.out.println("rIndex: " + rIndex);
                    Row row = sheet.getRow(rIndex);
                    if (row != null) {
                        int firstCellIndex = row.getFirstCellNum();
                        int lastCellIndex = row.getLastCellNum();
                        for (int cIndex = firstCellIndex; cIndex < lastCellIndex; cIndex++) {   //遍历列
                            Cell cell = row.getCell(cIndex);
                            if (cell != null) {
                                System.out.println(cell.toString());
                            }
                        }
                    }
                }
            } else {
                System.out.println("找不到指定的文件");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
	}

	@RequestMapping("read")
	public String test2(){
			
	        String path = "d:/student.xlsx";
	        List<TbStudent> studentList = new ArrayList<>();
	        
	        List<List<String>> lists = ExcelReaderUtil.readExcel(path);
	        lists.remove(0);//index=0是Excel中的标题，不是想要的数据
	        for (List<String> list : lists) {
	        	TbStudent student = new TbStudent();
	        	student.setXuehao(list.get(0));
	        	student.setName(list.get(1));
	        	student.setSex(list.get(2));
	        	student.setIdcardnum(list.get(3));
	        	student.setSchool(list.get(4));
	        	student.setXiaoqu(list.get(5));
	        	student.setXueyuan(list.get(6));
	        	student.setZhuanye(list.get(7));
	        	student.setBanji(list.get(8));
	        	student.setXuezhi(list.get(9));
	        	student.setRuxuetime(list.get(10));
	        	student.setPhone(list.get(11));
	        	studentList.add(student);
	            
	    }
		for(TbStudent stu : studentList){
			System.out.println(stu);
		}
		return null;
	}
}
