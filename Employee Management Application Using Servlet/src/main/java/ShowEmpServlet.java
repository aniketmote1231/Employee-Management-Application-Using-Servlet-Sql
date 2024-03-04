import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.websocket.Session;

import java.sql.*;
public class ShowEmpServlet extends HttpServlet 
{
	
	Connection con=null;
    public ShowEmpServlet() 
    {
        super();
    
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  try 
	  {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","aniket","aniket");
		HttpSession session= request.getSession();
		String name=(String)session.getValue("name");
		String sid=session.getId();
		PrintWriter out=response.getWriter();	
		PreparedStatement ps= con.prepareStatement("select name,email,gender,about from user2");
		ResultSet rs= ps.executeQuery();
		out.print("<html>");
		out.print("<body>");
		out.print("<br><br>"+name+", Welcome to Show Employee Page...!!<br>");
		out.print("session Id:"+sid+"<br><br>");
		out.print("<table border=1>");
		out.print("<tr><td>Emp name</td><td>Employee email</td><td>Employee gender</td></td>");
		while(rs.next())
		{
	      out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></td>"); 
	       //out.print("<tr><td>"+rs.getString(1)+"<tr><td>"+rs.getString(2)+"<tr><td>"+rs.getString(3) +"<tr><td>"+rs.getString(4)+"<tr><td>");

		}
		out.print("</table>");
		out.print("<br><br><br><br><a href='./LogoutServlet'>Logout</a>");
		out.print("</body>");
		out.print("</html>");
	  }
	  catch (ClassNotFoundException | SQLException e) 
	  {
		
		e.printStackTrace();
	  }		  
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}