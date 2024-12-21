package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
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

@SuppressWarnings("serial")
@WebServlet("/submitTasks")
public class Employee extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String employee = req.getParameter("employee");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "root");
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM task WHERE employee = ?"
            );
            ps.setString(1, employee);

            ResultSet rs = ps.executeQuery();
            resp.setContentType("text/html");
            out.print("<div class='container'>");
            int taskCount = 0;
            String[] colors = {
            	    "#E6E6FA", 
            	    "#F0FFF0", 
            	    "#FFF0F5", 
            	    "#F1C481", 
            	    "#F1E481", 
            	    "#E6E6FA", 
            	    "#8ED5A9", 
            	    "#F5F5DC", 
            	    "#FFF5EE", 
            	    "#FAF0E6", 
            	    "#F0FFF0", 
            	    "#F0E68C"  
            	};

            while (rs.next()) {
                if (taskCount % 3 == 0) {
                    // Start a new row after every 3 tasks
                    out.print("<div class=\"row\">");  // Starting a new row
                }

                String taskColor = colors[taskCount % colors.length];
                out.print("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
                		+ "  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n"
                		+ "  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>\r\n"
                		+ "  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
                out.print("<div class=\"col-md-4\" style=\"border: 1px solid black; background-color:" + taskColor + "; margin-top:2%\">");
            


                out.print("<br><br><h4 style ='color:black'><ceter> employee :</Center></h4>");
                
                out.print("<h4 style='text-align:center;'>" + rs.getString("employee") + "</h4>");

               out.print("<br><br><h4 style ='color:black'><ceter> taskdescription :</Center></h4>");
            	out.print("<h4 style='text-align:center;'>" + rs.getString("taskdescription") + "</h4>");

            	out.print("<br><br><h4 style ='color:black'><ceter> tasktitle:</Center></h4>");
            	out.print("<h4 style='text-align:center;'>" +rs.getString("tasktitle") + "</h4>");

            	out.print("<br><br><h4 style ='color:black'><ceter> tasktdead:</Center></h4>");
            	out.print("<h4 style='text-align:center;'>" +rs.getString("taskdead") + "</h4>");

            	out.print("<br><br><h4 style ='color:black'><ceter> priority:</Center></h4>");
            	out.print("<h4 style='text-align:center;'>" +rs.getString("priority")+ "</h4>");

            	out.print("<br><br><h4 style ='color:black'><ceter> project:</Center></h4>");
            	out.print("<h4 style='text-align:center;'>" +rs.getString("project")+ "</h4>");

               
            	

                out.print("</div>");  // Closing col-md-4

                if (++taskCount % 3 == 0) {
                    // Close the row after every 3 tasks
                    out.print("</div>");  // Closing the row
                }
            }

            if (taskCount % 3 != 0) {
                // Close the last row if it's not complete
                out.print("</div>");  // Closing the last row
            }

            out.print("</div>");  // Closing container

            if (taskCount > 0) {
                // Records found
                out.print("<h4 style='color:green'> User Record Found.</h4><br><br>");
            } else {
                // No records found
                out.print("<h4 style='color:green'> User Record not Found.</h4><br><br>");
            }

            RequestDispatcher rd = req.getRequestDispatcher("/NewFile.jsp");
            rd.include(req, resp);

        } catch (Exception e) {
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
            rd.include(req, resp);
        }
    }
} 