package org.java.service.impl;

import java.util.List;
import java.util.Map;

import org.java.dao.InfoMapper;
import org.java.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class InfoServiceImpl implements InfoService {
	@Autowired
	private InfoMapper infoMapper;
	/**
	 * pagehelper分页查询
	 */
	@Transactional
	@Override
	public List<Map<String, Object>> findAll() {
		return infoMapper.findAll();
	}
	/**
	 * jxl插入多条数据
	 */
	@Override
	public void addInfos(List<Map<String, Object>> infos) {
		infoMapper.addInfos(infos);
	}

}
