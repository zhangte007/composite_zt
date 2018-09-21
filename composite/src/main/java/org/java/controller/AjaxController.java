package org.java.controller;

import org.java.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ajax")
public class AjaxController {
	/////
	/**
	 * ajax简单案例
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/singleton")
	@ResponseBody
	public User singleton(Integer id) {//jackson-core-asl和jackson-mapper-asl 开启@ResponseBody 和mvc注解驱动
		User user = new User();
		user.setId(1);
		return user;
	}
	
}
