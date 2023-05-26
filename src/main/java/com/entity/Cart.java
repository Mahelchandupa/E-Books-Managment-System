package com.entity;

public class Cart {
      private int cid;
      private int bid;
      private int userId;
      private String bookName;
      private String author;
      private Double price;
      private Double totalPrice;
	
    public int getCid() {
		return cid;
	}
	public int getBid() {
		return bid;
	}
	public int getUserId() {
		return userId;
	}
	public String getBookName() {
		return bookName;
	}
	public String getAuthor() {
		return author;
	}
	public Double getPrice() {
		return price;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
      
      
}
