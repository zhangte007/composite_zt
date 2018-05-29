package org.java.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxl.Sheet;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.java.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/jxl")
public class JxlController {
	@Autowired
	private InfoService infoService;
	/**
	 * 获得当前分页信息
	 * @param model
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	@RequestMapping("/downloadJxl")
	public String downloadJxl(Model model,@RequestParam(defaultValue="1") Integer pageNum,@RequestParam(defaultValue="10") Integer pageSize,HttpSession session) {
		PageHelper.startPage(pageNum, pageSize);
		List<Map<String, Object>> infos = infoService.findAll();
		PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(infos);
		model.addAttribute("infos", infos);
		model.addAttribute("pageInfo", pageInfo);
		session.setAttribute("infos", infos);
		return "/menus/jxl/downloadJxl";
	}
	/**
	 * 下载当前页的信息
	 * @param session
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/downloadJxlStart")
	public void downloadJxlStart(HttpSession session,HttpServletResponse response) throws Exception {
		List<Map<String, Object>> infos = (List<Map<String, Object>>) session.getAttribute("infos");
		String fileNname = URLEncoder.encode("工作簿.xls","utf-8");
		response.setHeader("content-disposition", "attachment;fileName="+fileNname);
		response.setContentType("application/x-msdownload");
		BufferedOutputStream os = new BufferedOutputStream(response.getOutputStream());
		WritableWorkbook wk = Workbook.createWorkbook(os);
		WritableSheet sheet = wk.createSheet("信息表1",0);//获取表格
		sheet.getSettings().setDefaultColumnWidth(40);//设置每列的宽度
		WritableFont wf = new WritableFont(WritableFont.ARIAL,14,WritableFont.BOLD);//设置字体,大小,字体样式
		WritableCellFormat cf = new WritableCellFormat(wf);
		cf.setAlignment(Alignment.CENTRE);
		cf.setBackground(Colour.WHITE);
	//	cf.setWrap(true);
		cf.setBorder(Border.ALL, BorderLineStyle.THIN);
		Label label = new Label(0,0,"学员考勤总汇",cf);
		sheet.addCell(label);
		sheet.mergeCells(0, 0, 3, 0);
		
		sheet.addCell(new Label(0,1,"编号",cf));
		sheet.addCell(new Label(1,1,"id",cf));
		sheet.addCell(new Label(2,1,"姓名",cf));
		sheet.addCell(new Label(3,1,"性别",cf));
		for (int i = 0; i < infos.size(); i++) {
			Map<String, Object> info = infos.get(i);
			sheet.addCell(new Label(0,i+2,(i+1+""),cf));
			sheet.addCell(new Label(1,i+2,info.get("id").toString(),cf));
			sheet.addCell(new Label(2,i+2,info.get("name").toString(),cf));
			sheet.addCell(new Label(3,i+2,info.get("gender").toString(),cf));
		}
		Label lastLabel = new Label(0, infos.size()+2,infos.size()+"条数据", cf);
		sheet.addCell(lastLabel);
		sheet.mergeCells(0, infos.size()+2, 3, infos.size()+2);
		wk.write();
		wk.close();
		os.close();
	}
	/**
	 * 进入录入jxl目录
	 * @return
	 */
	@RequestMapping("/uploadJxlUi")
	public String uploadJxl() {
		return "/menus/jxl/uploadJxlUi";
	}
	/**
	 * 下载上传jxl模板
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/downloadJxlModel")
	public void downloadJxlModel(HttpServletResponse response) throws Exception {
		String fileNname = URLEncoder.encode("工作簿.xls","utf-8");
		response.setHeader("content-disposition", "attachment;fileName="+fileNname);
		response.setContentType("application/x-msdownload");
		BufferedOutputStream os = new BufferedOutputStream(response.getOutputStream());
		WritableWorkbook wk = Workbook.createWorkbook(os);
		WritableSheet sheet = wk.createSheet("信息表1",0);//获取表格
		sheet.getSettings().setDefaultColumnWidth(40);//设置每列的宽度
		WritableFont wf = new WritableFont(WritableFont.ARIAL,14,WritableFont.BOLD);//设置字体,大小,字体样式
		WritableCellFormat cf = new WritableCellFormat(wf);
		cf.setAlignment(Alignment.CENTRE);
		cf.setBackground(Colour.WHITE);
		cf.setBorder(Border.ALL, BorderLineStyle.THIN);
		Label label = new Label(0,0,"学员考勤总汇",cf);
		sheet.addCell(label);
		sheet.mergeCells(0, 0, 3, 0);
		
		sheet.addCell(new Label(0,1,"编号(如若上传请忽视)",cf));
		sheet.addCell(new Label(1,1,"id(如若上传请忽视)",cf));
		sheet.addCell(new Label(2,1,"姓名",cf));
		sheet.addCell(new Label(3,1,"性别",cf));
		wk.write();
		wk.close();
		os.close();
	}
	/**
	 * 上传jxl保存到数据库
	 * @param jxlFile
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/uploadJxl")
	public String uploadJxl(@RequestParam("jxlFile") CommonsMultipartFile jxlFile) throws Exception {
		BufferedInputStream in = new BufferedInputStream(jxlFile.getInputStream());
		List<Map<String, Object>> infos = null;
		//根据输入流中的信息，产生电子表格文档
				Workbook wk = Workbook.getWorkbook(in);
				//得到文档中包含有几个表单
				int count = wk.getNumberOfSheets();
				for(int k=0;k<count;k++){
					infos = new ArrayList<Map<String,Object>>();
					//得到文档中的所有表单
					Sheet[] sts = wk.getSheets();
					//得到第一个表单
					Sheet st = sts[k];
					//得到当前表单的总行数
					int rows = st.getRows();
					//取得每一行，每一列的值
					Map<String, Object> info = null;
					for(int i=2;i<rows;i++){//对行循 环
						info =  new HashMap<String, Object>();
						info.put("id", st.getCell(1, i).getContents());
						info.put("name", st.getCell(2, i).getContents());
						info.put("gender", st.getCell(3, i).getContents());
						infos.add(info);
					}
					infoService.addInfos(infos);//将上传的表格添加到数据库
				}
				in.close();
		return "/menus/jxl/uploadJxlOk";
	}
	
	
}
