package org.java.dao;

import java.util.List;
import java.util.Map;

public interface EchartsMapper {
	
	/**
	 * 查询pie表获得笔记本数据
	 * @return
	 */
 	public List<Map<String, Object>> loadPieData();

}
