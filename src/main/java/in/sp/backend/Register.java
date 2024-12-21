package in.sp.backend;

import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/regUser")

public class Register extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		PrintWriter out = resp.getWriter();
		
		String fullname =req.getParameter("fullname");
		String useremail= req.getParameter("useremail");
		String username=  req.getParameter("username"); // value must be same as in register.jsp file
		long usermobile = Long.parseLong(req.getParameter("usermobile"));
		String userpassword=  req.getParameter("userpassword");
		String conformpassword=  req.getParameter("conformpassword");
				
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "root");
			PreparedStatement ps = con.prepareStatement(
					   "INSERT INTO user1 (fullname, useremail, username, usermobile, userpassword, conformpassword) VALUES (?, ?, ?, ?, ?, ?)"
					);
					ps.setString(1, fullname);
					ps.setString(2, useremail);
					ps.setString(3, username);
					ps.setLong(4, usermobile);
					ps.setString(5, userpassword);
					ps.setString(6, conformpassword);

            int count= ps.executeUpdate();
            PreparedStatement ps1 = con.prepareStatement("insert into login values(?,?,?)");
            ps1.setString(1, useremail);
            ps1.setString(2, username);
            ps1.setString(3, userpassword);
            int count1= ps1.executeUpdate();
            
           if(count>0 && count1>0 )
            {
            	RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
            	rd.include(req, resp);
                     	
            }
            else
            {
            	resp.setContentType("text/html");
            	out.print("<h3 style = 'color: red' User not Registered due to some error");
            	RequestDispatcher rd = req.getRequestDispatcher("/Registration.jsp");
            	rd.include(req, resp);
            	
            }
            
		}
		catch (Exception e) {
		    e.printStackTrace();  // Logs the error
		    resp.setContentType("text/html");
		    out.print("<h3 style='color: red'>Exception Occurred: " + e.getClass().getName() + " - " + e.getMessage() + "</h3>");
		    RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		    rd.include(req, resp);

		}

	}
}

	
