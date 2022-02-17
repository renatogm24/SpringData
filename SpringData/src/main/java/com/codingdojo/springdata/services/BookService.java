package com.codingdojo.springdata.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.springdata.models.Book;
import com.codingdojo.springdata.repositories.BookRepository;
@Service
public class BookService {
    
	
	private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // devuelve todos los libros
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // crea un libro
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    //actualiza un libro
    public Book updateBook(Book b) {
        return bookRepository.save(b);
    }
    // recupera un libro
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    public void deleteBook(Long id) {
        bookRepository.deleteById(id);
    }
}