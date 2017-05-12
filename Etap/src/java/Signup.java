/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Signup extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        

        String FN = request.getParameter("first_name");
        String LN = request.getParameter("last_name");
        String DN = request.getParameter("display_name");
        String E = request.getParameter("email");
        String A = request.getParameter("Address");
        String P = request.getParameter("password");
        
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/etap", "root", "root");
           
           PreparedStatement ps = con.prepareStatement("insert into user_info(First_Name,Last_Name,Display_Name,Email_ID,Password,Address) values(?,?,?,?,?,?)");
           
           ps.setString(1,FN);
           ps.setString(2,LN);
           ps.setString(3,DN);
           ps.setString(4,E);
           ps.setString(5,P);
           ps.setString(6,A);
           
           int i = ps.executeUpdate();
           if(i != 0) {
              response.sendRedirect("Welcome.html");
              Sendmail s = new Sendmail();
                     s.sendmail(E);
        } 
           else{
               out.println("cant save");
           }
    }
    catch(Exception se)
            {
                se.printStackTrace();
                out.close();
            }
	
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

