package kidssummercamp.servlets;
import java.sql.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kidssummercamp.dbtask.CrudOperation;

/**
 * Servlet implementation class UserCompose
 */
@WebServlet("/UserCompose")
public class UserCompose extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement psinbox;
	private PreparedStatement pssent;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCompose() {
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
		String id=request.getParameter("id");
		String sub=request.getParameter("subject");
		String msg=request.getParameter("message");
		HttpSession hs=request.getSession(false);
		String senderid=(String)hs.getAttribute("sessionkey");
		con=CrudOperation.createConnection();
		try
		{
			con.setAutoCommit(false);
			String strinsert="insert into sentitem(senderid, receiverid, subject, message, dateofmsg) values (?,?,?,?,?)";
			pssent=con.prepareStatement(strinsert);
			pssent.setString(1, senderid);
			pssent.setString(2, id);
			pssent.setString(3, sub);
			pssent.setString(4, msg);
			pssent.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
			int row=pssent.executeUpdate();
			
			
			
			String sql="insert into inbox(senderid, receiverid, subject, message, dateofmsg) values (?,?,?,?,?)";
			psinbox=con.prepareStatement(sql);
			psinbox.setString(1, senderid);
			psinbox.setString(2, id);
			psinbox.setString(3, sub);
			psinbox.setString(4, msg);
			psinbox.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
			int row1=psinbox.executeUpdate();
			
			if(row>0&&row1>0)
			{
				con.commit();
				response.sendRedirect("/kidssummercamp/jsp/homepage.jsp");
			}
			else
			{
				System.out.println("failed to sent");
			}
			
			
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}	
		
	}

}
