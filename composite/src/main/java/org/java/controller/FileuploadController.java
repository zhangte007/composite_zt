package org.java.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
@RequestMapping("/fileupload")
public class FileuploadController {
	
	@Autowired
	private ServletContext context;//只能在外面注入
	
	/**
	 * 文件上传
	 * @param username 上传者
	 * @param toFile 文件
	 * @param model request作用域
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/uploadOne")
	public String uploadOne(String username,@RequestParam CommonsMultipartFile toFile,Model model) throws Exception {
		model.addAttribute("username", username);
		String path = context.getRealPath("/temp");
		String fileName = toFile.getOriginalFilename();
		File newFile=  new File(path, fileName);
		toFile.getFileItem().write(newFile);
		return "/menus/fileuoload/uoloadOne";
	}
	/**
	 * 文件下载
	 * @param response
	 * @param fileNname
	 * @throws IOException
	 */
	@RequestMapping("/{fileName}/downFile")
	public void downFile(HttpServletResponse response,@PathVariable String fileName) throws IOException {
		String path = context.getRealPath("/temp");
		//中文需要转换,这个还没准确测试
		response.setHeader("Content-disposition", "attachment;fileName="+URLEncoder.encode(fileName,"utf-8"));
		File downFile = new File(path, fileName);
		response.setContentType("application/x-msdownload");
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(downFile));
		byte [] bytes = new byte[2048];//8096
		int len = 0;
		while ((len=bis.read(bytes, 0, bytes.length))!=-1) {
			response.getOutputStream().write(bytes, 0, len);
		}
		bis.close();
	}
	
}
