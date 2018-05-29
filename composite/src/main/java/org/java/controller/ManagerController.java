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
	
	/**
	 * 文件上传下载
	 * @return
	 */
	@RequestMapping("/jxl")
	public String toJxl() {
		return "/menus/manager/jxlMenus";
	}
	/**
	 * 图像报表
	 * @return
	 */
	@RequestMapping("/echarts")
	public String echarts() {
		return "/menus/manager/echartsMenus";
	}
	/**
	 * 前段页面展示
	 * @return
	 */
	@RequestMapping("/bootstrap")
	public String bootstrap() {
		return "/menus/manager/bootstrapMenus";
	}
}
