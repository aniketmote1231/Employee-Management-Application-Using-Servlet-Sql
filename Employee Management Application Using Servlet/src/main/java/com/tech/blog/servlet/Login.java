package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User2;
import com.tech.blog.helper.ConnectionProvider;


public class Login extends HttpServlet {
	
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
        UserDao dao=new UserDao(ConnectionProvider.getConnection());
         User2 user2 = dao.getUser2ByemailandPassword(email, password);
         
         if(user2==null)
         {
        	 Message msg= new Message("Invalid Details ! try with another","error","alert-danger");
        	 HttpSession s=request.getSession();
        	 s.setAttribute("msg", msg);
        	 response.sendRedirect("Login.jsp");
         }else {
        	 
        	 HttpSession s=request.getSession();
        	 s.setAttribute("CurrentUser", user2);
        	response.sendRedirect("index.jsp");
        	
        	 
        	 
         }
	}

}
