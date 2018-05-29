package org.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/restfull")
public class RestfullController {
	/**
	 * restfull简单案例
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/{id}/simpleRestfull")
	public String simpleRestfull(@PathVariable Integer id,Model model) {
		model.addAttribute("id", id);
		return "/menus/restfull/simpleRestfull";
	}
}
