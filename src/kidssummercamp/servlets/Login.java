package kidssummercamp.servlets;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kidssummercamp.dbtask.CrudOperation;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement pslogin;
	private ResultSet rslogin;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("userid");
		String userpass=request.getParameter("userpass");
		con=CrudOperation.createConnection();
		
		String strsql="select * from login where userid=? and userpass=?";
		try
		{
			pslogin=con.prepareStatement(strsql);
			pslogin.setString(1, userid);
			pslogin.setString(2, userpass);
			rslogin=pslogin.executeQuery();
			if(rslogin.next())
			{
				HttpSession hs=request.getSession();   //create a new session
				
				hs.setAttribute("sessionkey", userid);
				String usertype=rslogin.getString("usertype");
				hs.setAttribute("sessiontype",usertype );
				if(usertype.equals("admin"))
					response.sendRedirect("#");
				if(usertype.equals("organizer"))
					response.sendRedirect("/kidssummercamp/jsp/organizerhome.jsp");	
				if(usertype.equals("parent"))
					response.sendRedirect("/kidssummercamp/jsp/parenthome.jsp");	
			}
			else
			{
				String message="invalid userid or password";
				request.setAttribute("msg", message);          //msg is key and message is value.
				 RequestDispatcher rd=request.getRequestDispatcher("/jsp/registration&login/login.jsp");   
				//it always takes absolute path than means no project name is included
				rd.forward(request, response);
				}

		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		finally
		{
			try
			{
			if (pslogin!=null)
				pslogin.close();
			if(rslogin!=null)
				rslogin.close();
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		}

		}
		
		
	}


