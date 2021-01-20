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
 * Servlet implementation class FeedBack
 */
@WebServlet("/FeedBack")
public class FeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedBack() {
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
		String parentid=request.getParameter("parentid");
		String campid=request.getParameter("campid");
		String message=request.getParameter("message");
		java.util.Date dt = new java.util.Date();
		long t = dt.getTime();
		java.sql.Date sd = new java.sql.Date(t);
		con=CrudOperation.createConnection();
		try
		{
			String sql="insert into feedback(parentid,campid,text,date)values(?,?,?,?)";                          //insertion query
			ps=con.prepareStatement(sql);                //passes query to DBMS and dbms will compile this query and will store in buffer area in memory
		    ps.setString(1,parentid);
		    ps.setString(2, campid);
		    ps.setString(3, message);
		    ps.setDate(4, sd);
		    int rw=ps.executeUpdate();     //to fire insert update delete query
		    
		    if(rw>0)
		    {
		    	System.out.println("row inserted successfully");
		    }
		    	
		}
		
		catch(SQLException se)
		{
			System.out.println(se);
		}
		
		
		
	}

}
