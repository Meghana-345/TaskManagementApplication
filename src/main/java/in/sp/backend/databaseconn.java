package in.sp.backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class databaseconn {
    public static void main(String[] args) {
        // Database credentials and connection details
        String url = "jdbc:mysql://localhost:3306/user"; // Replace 'yourDatabase' with your DB name
        String user = "root"; // Replace with your username
        String password = "root"; // Replace with your password

        // SQL query to retrieve data from the table
        String query = "SELECT * FROM login"; // Replace 'yourTable' with your table name

        try (
            // Establishing a connection
            Connection connection = DriverManager.getConnection(url, user, password);

            // Creating a statement object
            Statement statement = connection.createStatement();

            // Executing the query
            ResultSet resultSet = statement.executeQuery(query)
        ) {
            // Fetching metadata to display column names
            int columnCount = resultSet.getMetaData().getColumnCount();

            // Displaying column headers
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(resultSet.getMetaData().getColumnName(i) + "\t");
            }
            System.out.println();

            // Iterating through the result set to display rows
            while (resultSet.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    System.out.print(resultSet.getString(i) + "\t");
                }
                System.out.println();
            }

        } catch (SQLException e) {
            System.err.println("Database connection or query execution failed!");
            e.printStackTrace();
        }
    }
}


