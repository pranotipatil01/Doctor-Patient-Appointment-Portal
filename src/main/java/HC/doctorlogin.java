package HC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class doctorlogin
 */
@WebServlet("/doctorlogin")
public class doctorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doctorlogin() {
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
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM doctors WHERE name = ? AND password = ?");
	            ps.setString(1, username);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
                   Doctor doctor = new Doctor();
	                doctor.setDoctor_id(rs.getInt("doctor_id"));
	                doctor.setName(rs.getString("name"));
	                
	                
	                HttpSession session = request.getSession();
	                session.setAttribute("doctorId", doctor.getDoctor_id());
	                session.setAttribute("doctorName", doctor.getName());
	                response.sendRedirect("doctorDashboard.jsp");
	            } else {
	                response.sendRedirect("doctor_login.jsp");
	            }
	        } catch (Exception e) {
	        	  e.printStackTrace();
	        }
	        }


}
