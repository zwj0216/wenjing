package com.dao;

import java.util.List;

import com.pojo.Books;

public interface BooksDao {

	List<Books> getBooksList(Books books);
	
	Books getObjectByBid(int bid);
	
	int add(Books books);
	
	int delete(int bid);
	
	int update(Books books);
}
