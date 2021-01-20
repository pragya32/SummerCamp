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
 * Servlet implementation class Programs
 */
@WebServlet("/Programs")
public class Programs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PreparedStatement ps;
	private Connection con;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Programs() {
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
		
		
		
		String campid=request.getParameter("campid");
		String programid=request.getParameter("programid");
		String programname=request.getParameter("programname");
		String duration=request.getParameter("duration");
		String cost=request.getParameter("cost");
		String start_date=request.getParameter("start");
		String end_date=request.getParameter("end");
		String description=request.getParameter("description");
		con=CrudOperation.createConnection();
		try
		{
			String strinsert="insert into programs values(?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(strinsert);
			ps.setString(1, campid);
			ps.setString(2, programid);
			ps.setString(3, programname);
			ps.setString(4, duration);
			ps.setString(5, cost);
			ps.setString(6, start_date);
			ps.setString(7, end_date);
			ps.setString(8, description);
			
			int row=ps.executeUpdate();
			
	     if(row<0)
		    {
		    	con.commit();
		    	System.out.println("row inserted successfully");
		    	response.sendRedirect("/kidssummercamp/jsp/programs.jsp");
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
				if(ps!=null)
					ps.close();
			}
			catch(SQLException se)
			{
				System.out.println(se);
			}
		}
		System.out.println("---------------------------------------------------------------------------");
			
}
}
