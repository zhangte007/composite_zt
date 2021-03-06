package org.java.service.impl;

import java.util.List;
import java.util.Map;

import org.java.dao.EchartsMapper;
import org.java.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class EchartsServiceImpl implements EchartsService {
	@Autowired
	private EchartsMapper echartsMapper;
	/**
	 * 加载pie图像数据(bar数据也是用的这个方法)
	 */
	@Transactional
	@Override
	public List<Map<String, Object>> loadPieData() {
		return echartsMapper.loadPieData();
	}

}
