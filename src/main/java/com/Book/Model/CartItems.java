package com.Book.Model;

public class CartItems {
	int novel_id;
	String novel_name;
	String novel_author;
	String description;
	int quantity;
	String novel_type;
	int price;
	
	public int getNovel_id() {
		return novel_id;
	}
	public void setNovel_id(int novel_id) {
		this.novel_id = novel_id;
	}
	
	public String getNovel_name() {
		return novel_name;
	}
	public void setNovel_name(String novel_name) {
		this.novel_name = novel_name;
	}
	
	public String getNovel_author() {
		return novel_author;
	}
	public void setNovel_author(String novel_author) {
		this.novel_author = novel_author;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getNovel_type() {
		return novel_type;
	}
	public void setNovel_type(String novel_type) {
		this.novel_type = novel_type;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public CartItems() {
		super();
	}
	
	public CartItems(int novel_id, String novel_name, String novel_author, String description,int quantity, String novel_type,
			int price) {
		super();
		this.novel_id = novel_id;
		this.novel_name = novel_name;
		this.novel_author = novel_author;
		this.description = description;
		this.quantity= quantity;
		this.novel_type = novel_type;
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "Novel [novel_name=" + novel_name + ", novel_author=" + novel_author + ", description=" + description
				+ ", quantity=" + quantity + ", novel_type=" + novel_type + ", price=" + price + "]";
	}
	
}
