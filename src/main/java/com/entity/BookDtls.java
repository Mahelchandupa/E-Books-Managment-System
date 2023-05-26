package com.entity;

public class BookDtls {
     private int bookId;
     private String bookName;
     private String author;
     private String price;
     private String bookCategory;
     private String status;
     private String photoName;
     private String email;
	
     public BookDtls() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookDtls(String bookName, String author, String price, String bookCategory, String status,
			String photoName, String email) {
		super();
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.bookCategory = bookCategory;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}

	public int getBookId() {
		return bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public String getAuthor() {
		return author;
	}

	public String getPrice() {
		return price;
	}

	public String getBookCategory() {
		return bookCategory;
	}

	public String getStatus() {
		return status;
	}

	public String getPhotoName() {
		return photoName;
	}

	public String getEmail() {
		return email;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "BookDtls [bookId=" + bookId + ", bookName=" + bookName + ", author=" + author + ", price=" + price
				+ ", bookCategory=" + bookCategory + ", status=" + status + ", photoName=" + photoName + ", email="
				+ email + "]";
	}
     
     
     
}
