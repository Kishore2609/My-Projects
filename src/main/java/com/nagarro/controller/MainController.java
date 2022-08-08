package com.nagarro.controller;

import com.nagarro.model.BookModel;
import com.nagarro.model.UserModel;
import com.nagarro.repository.BookRepository;
import com.nagarro.repository.LoginRepository;
import com.nagarro.services.BookServices;
import com.nagarro.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.Optional;

@Controller
public class MainController {
    @Autowired
    private BookServices bookServices;

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private LoginService loginService;

    @Autowired
    private LoginRepository loginRepository;



    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home() {
       ModelAndView mv=new ModelAndView("home");
        List<BookModel> bookList = bookServices.getBookDetails();
        List<UserModel> userList = loginService.getUserDetails();

        mv.addObject("bookList", bookList);
        mv.addObject("userList", userList);
        return mv;
    }

    @GetMapping("/addbook")
    public String addBook(ModelMap model) {
        return new String("addBook");
    }

    @PostMapping("/insert")
    public ModelAndView addBookDetails(@Validated BookModel book, HttpSession session) {
        ModelAndView mv = new ModelAndView("home");
        bookServices.insertBookDetail(book);
        System.out.println(book.toString());
        List<BookModel> bookList = bookServices.getBookDetails();
        session.setAttribute("msg", "Book Added successfully");
        mv.addObject("bookList", bookList);
        mv.setViewName("home");
        return mv;
    }

    @PostMapping("/editview")
    public ModelAndView editBookDetails(@RequestParam int id) {
        ModelAndView mv = new ModelAndView();
        Optional<BookModel> book = bookServices.getBookById(id);
        BookModel bookObj = book.get();
        mv.addObject("bookObj", bookObj);
        mv.setViewName("editBook");
        return mv;
    }

    @PostMapping("/update")
    public ModelAndView update(BookModel book) {
        ModelAndView mv = new ModelAndView("home");
        bookServices.updateBook(book);
        List<BookModel> bookList = bookServices.getBookDetails();
        mv.addObject("bookList", bookList);
        mv.setViewName("home");
        return mv;
    }

    @PostMapping("/delete")
    public ModelAndView delete(@RequestParam int id) {
        ModelAndView mv = new ModelAndView();
        bookServices.deleteBookById(id);
        List<BookModel> bookList = bookServices.getBookDetails();
        mv.addObject("bookList", bookList);
        mv.setViewName("home");
        return mv;

    }

}
