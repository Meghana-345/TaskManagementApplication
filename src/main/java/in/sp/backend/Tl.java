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
@WebServlet("/leader")

public class Tl extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		PrintWriter out = resp.getWriter();
		String project=req.getParameter("project");
		String tasktitle =req.getParameter("tasktitle");
		String taskdescription= req.getParameter("taskdescription");
		String taskdead=  req.getParameter("taskdead"); // value must be same as in register.jsp file
		String priority=req.getParameter("priority");
		String employee=req.getParameter("employee");	
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");	
            PreparedStatement ps = con.prepareStatement("insert into task (project, tasktitle, taskdescription, taskdead, priority, employee) values(?,?,?,?,?,?)");
            ps.setString(1, project);
            ps.setString(2, tasktitle);
            ps.setString(3, taskdescription);
            ps.setString(4, taskdead);
            ps.setString(5, priority);
            ps.setString(6, employee);
            int count= ps.executeUpdate();
           
           if(count>0 )
            {
        
            	RequestDispatcher rd = req.getRequestDispatcher("/created.jsp");
            	rd.include(req, resp);
                     	
            }
            else
            {
            	resp.setContentType("text/html");
            	out.print("<h3 style = 'color: red' User not Registered due to some error");
            	RequestDispatcher rd = req.getRequestDispatcher("/registration.jsp");
            	rd.include(req, resp);
            	
            }
            
		}
		catch(Exception e)
		{
		   e.printStackTrace();	
		   resp.setContentType("text/html");
       	out.print("<h3 style = 'color: red' Exception Occured.");
       	RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
       	rd.include(req, resp);
		   
		}
		
	}
}

	
