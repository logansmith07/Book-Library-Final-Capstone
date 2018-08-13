package com.techelevator.model;

import java.util.List;

import org.apache.commons.text.WordUtils;

public class Book {
	private long bookId;
	private String title;
	private String city;
	private String country;
	private List<String> keywords;
	private List<String> characterFirstNames;
	private List<String> characterLastNames;
	private List<String> authorFirstNames;
	private List<String> authorLastNames;
	
	
	public long getBookId() {
		return bookId;
	}
	public void setBook_id(long book_id) {
		this.bookId = book_id;
	}
	public String getTitle() {
		return WordUtils.capitalize(title);
	}	
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCity() {
		return WordUtils.capitalize(city);
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return WordUtils.capitalize(country);
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public List<String> getKeywords() {
		return keywords;
	}
	public void setKeywords(List<String> keywords) {
		this.keywords = keywords;
	}
	public List<String> getCharacterFirstNames() {
		return characterFirstNames;
	}
	public void setCharacterFirstNames(List<String> characterFirstNames) {
		this.characterFirstNames = characterFirstNames;
	}
	public List<String> getCharacterLastNames() {
		return characterLastNames;
	}
	public void setCharacterLastNames(List<String> characterLastNames) {
		this.characterLastNames = characterLastNames;
	}
	public List<String> getAuthorFirstNames() {
		return authorFirstNames;
	}
	public void setAuthorFirstNames(List<String> authorFirstNames) {
		this.authorFirstNames = authorFirstNames;
	}
	public List<String> getAuthorLastNames() {
		return authorLastNames;
	}
	public void setAuthorLastNames(List<String> authorLastNames) {
		this.authorLastNames = authorLastNames;
	}
	
	public boolean equals(Book otherBook) {
		if (otherBook.getBookId() == this.bookId) {
			return true;
		} 
		return false;
	}
}
