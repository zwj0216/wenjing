package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BooksDao;
import com.github.pagehelper.PageHelper;
import com.pojo.Books;
@Service
public class BooksServiceImpl implements BooksService {

	@Autowired
	BooksDao dao;
	@Override
	public List<Books> getBooksList(Books books, int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		return dao.getBooksList(books);
	}
	@Override
	public int add(Books books) {
		// TODO Auto-generated method stub
		return dao.add(books);
	}
	@Override
	public int delete(int bid) {
		// TODO Auto-generated method stub
		return dao.delete(bid);
	}
	@Override
	public Books getObjectByBid(int bid) {
		// TODO Auto-generated method stub
		return dao.getObjectByBid(bid);
	}
	@Override
	public int update(Books books) {
		// TODO Auto-generated method stub
		return dao.update(books);
	}


}
