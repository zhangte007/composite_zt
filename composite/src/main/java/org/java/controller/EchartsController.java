package org.java.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.java.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/echarts")
public class EchartsController {
	@Autowired
	private EchartsService echartsService;
	/**
	 * 显示饼图页面
	 * @return
	 */
	@RequestMapping("/pieModel")
	public String pieModel() {
		return "/menus/echarts/pieModel";
	}
	
	@RequestMapping("/barModel")
	public String barModel() {
		return "/menus/echarts/barModel";
	}
	
	/**
	 * 加载饼图数据
	 * @return
	 */
	@RequestMapping("/loadPieData")
	@ResponseBody
	public Map<String, Object> loadPieData() {
		Map<String, Object> data = new HashMap<String, Object>();
		List<Map<String, Object>> datas = echartsService.loadPieData();
		List<String> titles = new ArrayList<>();
		for (Map<String, Object> map : datas) {
			titles.add(map.get("name").toString());
		}
		data.put("titles", titles);
		data.put("datas", datas);
		return data;
	}
	/**
	 * 加载树桩图
	 * @return
	 */
	@RequestMapping("/loadBarData")
	@ResponseBody
	public Map<String, Object> loadBarData() {
		Map<String, Object> data = new HashMap<String, Object>();
		List<Map<String, Object>> datas = echartsService.loadPieData();
		Object [] keys = new  Object[datas.size()];
		Object [] values = new  Object[datas.size()];
		for (int i = 0; i < datas.size(); i++) {
			Map<String, Object> map = datas.get(i);
			keys[i] = map.get("name");
			values[i] = map.get("value");
		}
		data.put("keys", keys);
		data.put("values", values);
		return data;
	}
	
}
