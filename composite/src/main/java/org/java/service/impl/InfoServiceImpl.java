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
	@Transactional
	@Override
	public List<Map<String, Object>> findAll() {
		return infoMapper.findAll();
	}
	@Override
	public void addInfos(List<Map<String, Object>> infos) {
		infoMapper.addInfos(infos);
	}

}
