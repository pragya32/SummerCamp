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
 * Servlet implementation class ChildAdmission
 */
@WebServlet("/ChildAdmission")
public class ChildAdmission extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChildAdmission() {
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
		String program=request.getParameter("programid");
		 int programid=Integer.parseInt(program);
		String campid=request.getParameter("campid");
		String childname=request.getParameter("childname");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String schoolname=request.getParameter("schoolname");
		String transaction_no=request.getParameter("transaction");
		String status=request.getParameter("status");
		String pic=request.getParameter("fileUpload");
		con=CrudOperation.createConnection();
		try
		{
			con.setAutoCommit(false);
			String strinsert="insert into admission(parentid, programid, campid, childname, age, gender, schoolname, transaction_no, status, pic) values(?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(strinsert);
			/* ps.setString(1, null); */
			ps.setString(1, parentid);
			ps.setInt(2, programid);
			ps.setString(3, campid);
			ps.setString(4, childname);
			ps.setString(5, age);
			ps.setString(6, gender);
			ps.setString(7, schoolname);
			ps.setString(8, transaction_no);
			ps.setString(9, status);
			ps.setString(10,pic);
			
			int row=ps.executeUpdate();
			
	     if(row>0)
		    {
		    	con.commit();
		    	System.out.println("row inserted successfully");
		    	response.sendRedirect("/kidssummercamp/html/html/successchildreg.html");
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
