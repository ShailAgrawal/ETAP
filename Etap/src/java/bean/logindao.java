/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;

/**
 *
 * @author OEM
 */
public class logindao {
    public static String validate(loginbean bean)
    {  
        String name="";  
        try
            {  
                Connection con=connectionprovider.getCon();  
              
                PreparedStatement ps=con.prepareStatement(  
                        "select * from user_info where `Email_ID`=? and`Password`=?");  
  
                    ps.setString(1,bean.getEmail());  
                    ps.setString(2,bean.getPswd());
              
                    ResultSet rs=ps.executeQuery();  
                if(rs.next()) {
                    System.out.println("fn" +rs.getString("First_Name"));
                    name = rs.getString("First_Name");
            }
            
                else {
                    System.out.println("not found");
                }
            }
            catch(Exception e)
            {
                            }  
  
        return name;  
  
    }
}
    
    
//    public static String getName(loginbean bean) throws SQLException
//    {  
//        String name="";  
//        try
//            {  
//                Connection con=connectionprovider.getCon();  
//              
//                PreparedStatement ps=con.prepareStatement(  
//                        "select * from user_info where `Email_ID`=?");  
//  
//                    ps.setString(1,bean.getEmail());  
//              
//                    ResultSet rs=ps.executeQuery();  
////                    status=rs.next();
//                if(rs.next()) {
//                    System.out.println("fn" +rs.getString("First_Name"));
//                    name = rs.getString("First_Name");
//            }
//            
//                else {
//                    System.out.println("not found");
//                }
//            }
//            catch(Exception e)
//            {
//                            }  
//  
//        return name;  
//  
//    }
//}
//
