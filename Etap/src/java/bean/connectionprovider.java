/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import static bean.provider.CONNECTION_URL;
import static bean.provider.DRIVER;
import static bean.provider.PASSWORD;
import static bean.provider.USERNAME;

/**
 *
 * @author OEM
 */
public class connectionprovider {
private static Connection con=null;  
    
    static
            {  
             try
                {  
                    //load mysql connection driver
                    Class.forName(DRIVER);  
                    con = DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
                }
                catch(Exception e)
                                    {
                                         out.print("Connection Problem !");
                
                                    }  
            }  
  
    //method getCon returns object con of type Connection 
    public static Connection getCon()
                                    {  
                                        return con;  
                                    }
    
}
