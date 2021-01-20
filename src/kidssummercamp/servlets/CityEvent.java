package kidssummercamp.servlets;

import java.io.IOException;import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kidssummercamp.dbtask.CrudOperation;

/**
 * Servlet implementation class CityEvent
 */
@WebServlet("/CityEvent")
public class CityEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityEvent() {
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
		
		String ename=request.getParameter("name");
		//String date=request.getParameter("date");
		java.util.Date dt = new java.util.Date();
		long t = dt.getTime();
		java.sql.Date sd = new java.sql.Date(t);
		String ecity=request.getParameter("city");
		String vaddress=request.getParameter("venueaddress");
		String url=request.getParameter("urlpage");
		String desc=request.getParameter("description");
		
		con=CrudOperation.createConnection();
		try
		{
			 con.setAutoCommit(false);
			 String sql="insert into cityevent(eventname, date, city, venueaddress, urlpage, description)values(?,?,?,?,?,?)";
			   ps=con.prepareStatement(sql);  //pass your query to dbms and compile query and will store in buffer
			   ps.setString(1, ename);
			   ps.setDate(2, sd);
			   ps.setString(3, ecity);
			   ps.setString(4,vaddress );
			   ps.setString(5, url);
			   ps.setString(6, desc);
			  
			   int rw=ps.executeUpdate();
			   if(rw>0)
		          {
		        	  con.commit();
		        	  System.out.println("row inserted");
		        	  response.sendRedirect("/kidssummercamp/jsp/organizerhome.jsp");
		          }
 		
		
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
