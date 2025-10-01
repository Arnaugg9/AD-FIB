package DB;


import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author alumne
 */
@WebServlet(name = "DB", urlPatterns = {"/DB"})
public class Database {
    private String query;
    private PreparedStatement statement;
    private ResultSet rs;
    
    protected void altaUsuari(String username, String password){
        
    }
    
    public boolean existeixUsuari(String username, String password){
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/pr2;user=pr2;password=pr2");
        
        query = "select 1 from USUARIOS where username = ? and password = ?";
        try (statement = connection.prepareStatement(query)){
            statement.setString(1, username);
            statement.setString(2, password);
            
            try (ResultSet rs = statement.executeQuery()){
                return rs.next();
            }
            
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return false;
    }
}
