package com.service;

import java.util.List;

import com.pojo.Books;

public interface BooksService {

	List<Books> getBooksList(Books books,int pageNum,int pageSize);
	
	Books getObjectByBid(int bid);
	
	int add(Books books);

	int delete(int bid);
	
	int update(Books books);
}
