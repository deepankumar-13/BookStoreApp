package com.Book.Model;

public class Books {
	
	private int book_id;
	private String bookName;
	private String author;
	private String description;
	private String bookType;
	private int price;
	

	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getBookType() {
		return bookType;
	}
	public void setBookType(String bookType) {
		this.bookType = bookType;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public Books() {
		super();
	}
	
	public Books(int book_id,String bookName, String author, String description, String bookType, int price) {
		super();
		this.book_id = book_id;
		this.bookName = bookName;
		this.author = author;
		this.description = description;
		this.bookType = bookType;
		this.price = price;
	}
	@Override
	public String toString() {
		return "Books [bookName=" + bookName + ", author=" + author + ", description=" + description + ", bookType="
				+ bookType + ", price=" + price + "]";
	}	

}
