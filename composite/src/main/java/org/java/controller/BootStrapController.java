package org.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bootstrap")
public class BootStrapController {
	/**
	 * to全局css样式
	 * @return
	 */
	@RequestMapping("/totalCss")
	public String totalCss() {
		return "/menus/bootstrap/totalCss";
	}
	/**
	 * to组件模块
	 * @return
	 */
	@RequestMapping("/compnent")
	public String compnent() {
		return "/menus/bootstrap/compnent";
	}
	
	/**
	 * 栅格系统
	 * @return
	 */
	@RequestMapping("/gridSystem")
	public String gridSystem() {
		return "/menus/bootstrap/totalCss/gridSystem";
	}
	/**
	 * 排版
	 * @return
	 */
	@RequestMapping("/composing")
	public String composing() {
		return "/menus/bootstrap/totalCss/composing";
	}
	
	/**
	 * 排版
	 * @return
	 */
	@RequestMapping("/compnentOne")
	public String compnentOne() {
		return "/menus/bootstrap/compnent/compnentOne";
	}
}
