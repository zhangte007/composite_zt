package org.java.dao;

import java.util.List;
import java.util.Map;

public interface InfoMapper {
	/**
	 * 查找全部的info
	 * @return
	 */
	public List<Map<String, Object>> findAll();

	/**
	 * 添加工作簿信息
	 * @param infos
	 */
	public void addInfos(List<Map<String, Object>> infos);

}
