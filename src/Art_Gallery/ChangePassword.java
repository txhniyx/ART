package Art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class ChangePassword extends HttpServlet

{

   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException

    {
        doPost(req,res);

     }

  public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException

    {
	  
      String n=req.getParameter("email");  
      String p=req.getParameter("password"); 
      
	  res.setContentType("text/html");  
      PrintWriter pw = res.getWriter();  
      Connection conn=null;
        try

       {
        String url = "jdbc:mysql://localhost:3306/";
        String dbName="art_gallery";
        String driver = "com.mysql.jdbc.Driver";

        String user = "root";

        String pass = "mypass";

        HttpSession session=req.getSession();
        
        String email=req.getParameter("email");
        String oldpwd=req.getParameter("oldpwd");

        String newpwd=req.getParameter("newpwd");

        String cnfpwd=req.getParameter("cnfpwd");

        if (newpwd.equals("") || cnfpwd.equals(""))

            {

                    pw.println("New Password and Confirm password, both are required.");
                    String msg = "New Password and Confirm password, both are required.";
                    req.setAttribute("reg", msg);

                getServletContext().getRequestDispatcher("ChangePassword.jsp").forward(req,res);

                return;    

                }

                else if (!newpwd.equals(cnfpwd))

            {

                 pw.println("Your New password and confirm password does not match.");

                 String msg = "Your New password and confirm password does not match.";
                 req.setAttribute("reg", msg);

                  getServletContext().getRequestDispatcher("ChangePassword.jsp").forward(req,res);

                return;

                }

        try

        {    
            Class.forName(driver).newInstance();

            conn = DriverManager.getConnection(url+dbName,"root", "mypass");
            

                try

                {

                     PreparedStatement ps=conn.prepareStatement("update login set password= ? where email=? and password= ?");

                    try

                    {

               

                        ps.setString(1,newpwd);

                        ps.setString(2, email );

                        ps.setString(3, oldpwd);

                        int i= ps.executeUpdate();

                     if(i==0)

                     {

                       pw.println("Password did not change, Try Again.");
                       String msg = "Password did not Change, Try Again.";
                        req.setAttribute("reg", msg);

                        RequestDispatcher rd=req.getRequestDispatcher("Forgot_password.jsp");  
                        rd.forward(req,res);  


                    return;

                     }

                    else
                    {
                      pw.println("Your password was successfully changed.");
                       String msg = "Your password was successfully changed.8";
                        req.setAttribute("reg", msg);
                        	RequestDispatcher rd=req.getRequestDispatcher("index1.jsp");  
                            rd.forward(req,res); 
                        }

                        

                    return;
                    

                    }

                    finally

                    {

                        ps.close();

                    }

                }

                finally

                {

                    conn.close();

                }   

            }

        catch(Exception e)

        {

            e.getMessage();

        }

       }

    catch(Exception e)

    {

        e.getMessage();

    }

   }

}

