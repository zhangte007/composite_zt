package org.java.service;

import java.util.List;
import java.util.Map;

public interface InfoService {
	public List<Map<String, Object>> findAll();

	public void addInfos(List<Map<String, Object>> infos);
	
}
