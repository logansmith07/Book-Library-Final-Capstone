package com.techelevator;

import java.sql.SQLException;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.model.Book;
import com.techelevator.model.BookDAO;
import com.techelevator.model.JDBCBookDAO;


public class JDBCBookDAOTest extends DAOIntegrationTest {
	BookDAO bookDao;
	
	@Before
	public void setup() {
		bookDao = new JDBCBookDAO(dataSource);
	}
	
	@Test 
	public void get_books_from_author_table() throws SQLException {
		String queryString = "j.k.";
		List<Book> books = bookDao.searchForBooksBasedOnAuthor(queryString);
		Assert.assertNotNull(books);
		Assert.assertEquals(3, books.size());
	}
	
	@Test
	public void get_books_from_character_table() throws SQLException {
		String queryString = "harry";
		List<Book> books = bookDao.searchForBooksBasedOnCharacter(queryString);
		Assert.assertNotNull(books);
		Assert.assertEquals(3, books.size());
	}
	
	@Test
	public void get_books_from_keyword_table() throws SQLException {
		String queryString = "fantasy";
		List<Book> books = bookDao.searchForBooksBasedOnKeyword(queryString);
		Assert.assertNotNull(books);
		Assert.assertEquals(3, books.size());
	}
	
	@Test
	public void get_books_from_location_table() throws SQLException {
		String queryString = "london";
		List<Book> books = bookDao.searchForBooksBasedOnPublishingLocation(queryString);
		Assert.assertNotNull(books);
		Assert.assertEquals(3, books.size());
	}
	
	@Test
	public void get_books_from_title_table() throws SQLException {
		String queryString = "the great gatsby";
		List<Book> books = bookDao.searchForBooksBasedOnTitle(queryString);
		Assert.assertNotNull(books);
		Assert.assertEquals(1, books.size());
	}
	
	@Test
	public void get_books_from_search_for_books() throws SQLException {
		String queryString = "j.k.";
		List<Book> books = bookDao.searchForBooks(queryString);
		Assert.assertNotNull(books);
		
		Assert.assertEquals(3, books.size());
		Assert.assertEquals(1, books.get(0).getBookId());
		Assert.assertEquals(2, books.get(1).getBookId());
		Assert.assertEquals(3, books.get(2).getBookId());
		Assert.assertEquals("London", books.get(2).getCity());
	}
}
