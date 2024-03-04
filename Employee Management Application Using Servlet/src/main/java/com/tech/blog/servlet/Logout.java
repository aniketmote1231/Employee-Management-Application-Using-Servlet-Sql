package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.entities.Message;


public class Logout extends HttpServlet {
	
       
   
    public Logout() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		HttpSession s=request.getSession();
		s.removeAttribute("currentUser");
		Message m=new Message("Logout Successfull","success","alert-success");
		s.setAttribute("msg", m);
		response.sendRedirect("Login.jsp");
		
	}

}
