package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.TypeDao;
import com.pojo.Type;
@Service
public class TypeServiceImpl implements TypeService {

	@Autowired
	TypeDao dao;
	@Override
	public List<Type> getTypeList() {
		// TODO Auto-generated method stub
		return dao.getTypeList();
	}

}
