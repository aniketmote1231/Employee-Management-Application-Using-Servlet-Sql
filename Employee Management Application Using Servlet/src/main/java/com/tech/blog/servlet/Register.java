package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.UserDao;
import com.tech.blog.helper.ConnectionProvider;

import com.tech.blog.entities.User2;

@MultipartConfig
public class Register extends HttpServlet {

	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		// String name=request.getParameter("user_name");
		String check = request.getParameter("check");
		if (check == null) {
			out.print("Check box");
		} else {
			String name = request.getParameter("user_name");
			String email = request.getParameter("user_email");
			String password = request.getParameter("user_password");
			String gender = request.getParameter("gender");
			String about = request.getParameter("about");

			User2 user2 = new User2(name, email, password, gender, about);

			UserDao dao = new UserDao(ConnectionProvider.getConnection());

			if (dao.saveUser(user2)) {
				response.sendRedirect("Login.jsp");
				out.print("done");
			}

			else {

				out.print("failed");
			}
		}
	}

}
