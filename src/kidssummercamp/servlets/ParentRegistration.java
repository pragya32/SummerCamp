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
 * Servlet implementation class ParentRegistration
 */
@WebServlet("/ParentRegistration")
public class ParentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement psParent, pslogin;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ParentRegistration() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("id");
		String userpass = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phoneno = request.getParameter("phoneno");
		String email = request.getParameter("email");
		/* String date=request.getParameter("date"); */
		java.util.Date dt = new java.util.Date();
		long t = dt.getTime();
		java.sql.Date sd = new java.sql.Date(t);
		con = CrudOperation.createConnection();
		try {

			con.setAutoCommit(false);
			String strinsert = "insert into login values(?,?,?);";
			pslogin = con.prepareStatement(strinsert);
			pslogin.setString(1, userid);
			pslogin.setString(2, userpass);
			pslogin.setString(3, "parent");
			int row1 = pslogin.executeUpdate();

			String sql = "insert into parent(parentid, name, address, phoneno, email, date)values(?,?,?,?,?,?)"; // insertion
																													// query
			psParent = con.prepareStatement(sql); // passes query to DBMS and dbms will compile this query and will
													// store in buffer area in memory
			psParent.setString(1, userid);
			psParent.setString(2, name);
			psParent.setString(3, address);
			psParent.setString(4, phoneno);
			psParent.setString(5, email);
			psParent.setDate(6, sd);
			int rw = psParent.executeUpdate(); // to fire insert update delete query

			if (rw > 0 && row1>0) {
				con.commit();
				System.out.println("row inserted successfully");
				response.sendRedirect("/kidssummercamp/jsp/registration&login/login.jsp");
			}

		}

		catch (SQLException se) {
			System.out.println(se);
		} finally {
			try {
				if (psParent != null)
					psParent.close();
				if (pslogin != null)
					pslogin.close();
			} catch (SQLException se) {
				System.out.println(se);
			}
		}
	}

}
