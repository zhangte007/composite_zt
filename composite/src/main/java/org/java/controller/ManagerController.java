package org.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	/**
	 * ajax请求
	 * @return
	 */
	@RequestMapping("/ajax")
	public String toAjax() {
		
		return "/menus/manager/ajaxMenus";
	}
	/**
	 * restfull风格
	 * @return
	 */
	@RequestMapping("/restfull")
	public String toRestfull() {
		return "/menus/manager/restfullMenus";
	}
	/**
	 * 文件上传下载
	 * @return
	 */
	@RequestMapping("/fileupload")
	public String toFileupload() {
		return "/menus/manager/fileuploadMenus";
	}
}
