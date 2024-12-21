
package in.sp.backend;

import java.io.PrintWriter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/team")

public class team extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		PrintWriter out = resp.getWriter();
		
		String username=  req.getParameter("username"); // value must be same as in register.jsp file
		String useremail=  req.getParameter("useremail");
		String userpassword=  req.getParameter("userpassword");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");	
            PreparedStatement ps = con.prepareStatement("select * from login where username=? and useremail=? and userpassword=?");
            ps.setString(1, username);
            ps.setString(2, useremail);
            ps.setString(3, userpassword);
            ResultSet rs= ps.executeQuery();
            if(rs.next())
            {
            	HttpSession session=req.getSession();
            	session.setAttribute("session_name",rs.getString("username"));
            	RequestDispatcher rd = req.getRequestDispatcher("/tl.jsp");
           	    rd.include(req, resp);
    		 
            }
            else
            {
               	RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
            	rd.include(req, resp);
            	
            }
		}
		catch(Exception e)
		{
		 	RequestDispatcher rd = req.getRequestDispatcher("/Registration.jsp");
       	    rd.include(req, resp);
		   
		}
	}}