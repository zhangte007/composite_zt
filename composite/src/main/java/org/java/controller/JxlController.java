package org.java.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.java.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
}
