package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.pojo.Books;
import com.pojo.Type;
import com.service.BooksService;
import com.service.TypeService;

@Controller
@RequestMapping("books")
public class BooksController {

	@Autowired
	BooksService service;
	@Autowired
	TypeService tService;
	
	@RequestMapping("list")
	private ModelAndView list(Books books,@RequestParam(value="pageNum",required=false,defaultValue="1")int pageNum,@RequestParam(value="pageSize",required=false,defaultValue="4")int pageSize) {
		ModelAndView mv = new ModelAndView();
		List<Books> list = service.getBooksList(books, pageNum, pageSize);
		PageInfo<Books> info=new PageInfo<>(list);
	mv.addObject("list",info);
	mv.setViewName("list");
	return mv;
	}
	@RequestMapping("toAdd")
	private String toAdd(Model m) {
		List<Type> typeList = tService.getTypeList();
		m.addAttribute("typeList", typeList);
		return "add";
	}
	@RequestMapping("add")
	@ResponseBody
	private int add(Books books) {
		int add = service.add(books);
		if(add>0) {
			return 1;
		}
		return 0;
		
	}
	@RequestMapping("delete")
	private ModelAndView delete(@RequestParam("bid")int bid) {
		ModelAndView mv = new ModelAndView();
		int delete = service.delete(bid);
		if(delete>0) {
			mv.setViewName("redirect:books/list");
		}
		return mv;
	}
	@RequestMapping("toUpdate")
	private ModelAndView toUpdate(@RequestParam("bid")int bid) {
		ModelAndView mv = new ModelAndView();
		Books books = service.getObjectByBid(bid);
		List<Type> typeList = tService.getTypeList();
		mv.addObject("books", books);
		mv.addObject("typeList", typeList);
		mv.setViewName("update");
		return mv;
	}
	@RequestMapping("update")
	@ResponseBody
	private int update(Books books) {
		int update = service.update(books);
		if(update>0) {
			return 1;
		}
		return 0;
		
	}
}
