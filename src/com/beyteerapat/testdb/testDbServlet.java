package com.beyteerapat.testdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

/**
 * Servlet implementation class testDbServlet
 */
@WebServlet("/testDbServlet")
public class testDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String user = "beycustomer";
		String pass = "beycustomer";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/customer_db?useSSL=false";
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			PrintWriter out = response.getWriter();
			
			out.println("Connecting to database" + jdbcUrl);
			
			Class.forName(driver);
			
			Connection c = DriverManager.getConnection(jdbcUrl, user,pass);
			
			out.println("SUCCESS");
			
			c.close();
				
		} catch (Exception e) {
			
		}
		
		
		
		
	}

}
