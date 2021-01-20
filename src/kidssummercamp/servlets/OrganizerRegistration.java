package kidssummercamp.servlets;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kidssummercamp.dbtask.CrudOperation;

/**
 * Servlet implementation class OrganizerRegistration
 */
@WebServlet("/OrganizerRegistration")
public class OrganizerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement psOrganizer,pslogin;
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrganizerRegistration() {
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
		String userpass=request.getParameter("camppass");
		String campname=request.getParameter("campname");
		String campaddress=request.getParameter("campaddress");
		String campphoneno=request.getParameter("campphoneno");
		String campemail=request.getParameter("campemail");
		//String campdate=request.getParameter("campdate");
		java.util.Date dt = new java.util.Date();
		long t = dt.getTime();
		java.sql.Date campdate = new java.sql.Date(t);
		String campdescription=request.getParameter("campdescription");
		con=CrudOperation.createConnection();
		try
		{
			
			
			String sql="insert into organizer(campid, campname, campaddress, campphoneno, campemail, camppass, date, description)values(?,?,?,?,?,?,?,?)";                          //insertion query
			psOrganizer=con.prepareStatement(sql);                //passes query to DBMS and dbms will compile this query and will store in buffer area in memory
			psOrganizer.setString(1,userid);
			psOrganizer.setString(2, campname);
			psOrganizer.setString(3, campaddress);
			psOrganizer.setString(4,campphoneno);
			psOrganizer.setString(5,campemail);
			psOrganizer.setString(6,userpass);
			psOrganizer.setDate(7,campdate);
			psOrganizer.setString(8,campdescription);
		    int rw=psOrganizer.executeUpdate();     //to fire insert update delete query
		    
		    if(rw>0)
		    {
		    	con.commit();
		    	System.out.println("row inserted successfully");
		    	response.sendRedirect("/kidssummercamp/html/registrationsuccessful.html");
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
				if(pslogin!=null)
					pslogin.close();
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		}
		
		
	}

}
