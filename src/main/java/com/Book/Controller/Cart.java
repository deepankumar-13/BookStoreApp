package com.Book.Controller;

import java.util.HashMap;
import java.util.Map;

import com.Book.Model.CartItems;

public class Cart {
	
	public Map<Integer,CartItems> books ;
	private CartItems existingBook;
	
	public Cart() {
		books=new HashMap<>();
	}
	
	public Map<Integer,CartItems> addBook(CartItems book){
		if(books.containsKey(book.getNovel_id())) {
			existingBook = books.get(book.getNovel_id());
			existingBook.setQuantity(existingBook.getQuantity()+book.getQuantity());
		}else {
			books.put(book.getNovel_id(), book);
		}
		return books;
	}
	
	public void updateBook(int novel_id , int quantity) {
		if(books.containsKey(novel_id)) {
			if(quantity<=0) {
				books.remove(novel_id);
			}else {
				books.get(novel_id).setQuantity(quantity);
			}
		}
	}
	
	public void remove(int novel_id) {
		books.remove(novel_id);
	}
	
	public Map<Integer,CartItems> getBooks(){
		return books;
	}
	
	public void clear() {
		books.clear();
	}
}
