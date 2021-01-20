package kidssummercamp.servlets;
import java.sql.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kidssummercamp.dbtask.CrudOperation;

/**
 * Servlet implementation class OrganizerProfile
 */
@WebServlet("/OrganizerProfile")
public class OrganizerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement psOrganizer;
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrganizerProfile() {
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
		

		String userid=request.getParameter("campid");
		String userpass=request.getParameter("pass");
		String name=request.getParameter("name");
		String gender=request.getParameter("rd");
	    String telephone=request.getParameter("phone");
		String address=request.getParameter("address");
		String email=request.getParameter("emailid");
		con =CrudOperation.createConnection();
		try
		{
		
		
			
			con.setAutoCommit(false);
			String strinsert="insert into login(userid,userpass,usertype) values(?,?,?)";
			psOrganizer=con.prepareStatement(strinsert);
			psOrganizer.setString(1, userid);
			psOrganizer.setString(2, userpass);
			psOrganizer.setString(3, "organizer");
			int row1=psOrganizer.executeUpdate();
			
			String sql="insert into organizerprofile(campid, name, gender, phoneno, address, email,password)values(?,?,?,?,?,?,?)";                          //insertion query
			psOrganizer=con.prepareStatement(sql);                //passes query to DBMS and dbms will compile this query and will store in buffer area in memory
			psOrganizer.setString(1,userid);
			psOrganizer.setString(2, name);
			psOrganizer.setString(3, gender);
			psOrganizer.setString(4, telephone);
			psOrganizer.setString(5, address);
			psOrganizer.setString(6,email);
			psOrganizer.setString(7, userpass);
		    int rw=psOrganizer.executeUpdate();     //to fire insert update delete query
		    
		    if(rw>0 && row1>0)
		    {
		    	con.commit();
		    	System.out.println("row inserted successfully");
		    	response.sendRedirect("/kidssummercamp/jsp/registration&login/login.jsp");
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
				if(psOrganizer!=null)
					psOrganizer.close();
				
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		}
		
		
	}
		
		
		
		
	}


