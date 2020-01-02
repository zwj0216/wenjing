package com.pojo;

public class Books {

	private int bid;
	
	private String bname;
	
	private String bauthor;
	
	private int bprice;
	
	private int bpages;
	
	private  String bfocus;
	
	private String tname;
	
	private int tid;
	
	

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public Books(int bid, String bname, String bauthor, int bprice, int bpages, String bfocus, String tname) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bauthor = bauthor;
		this.bprice = bprice;
		this.bpages = bpages;
		this.bfocus = bfocus;
		this.tname = tname;
	}

	public Books() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBauthor() {
		return bauthor;
	}

	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}

	public int getBprice() {
		return bprice;
	}

	public void setBprice(int bprice) {
		this.bprice = bprice;
	}

	public int getBpages() {
		return bpages;
	}

	public void setBpages(int bpages) {
		this.bpages = bpages;
	}

	public String getBfocus() {
		return bfocus;
	}

	public void setBfocus(String bfocus) {
		this.bfocus = bfocus;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}
	
	
	
	
	
}
