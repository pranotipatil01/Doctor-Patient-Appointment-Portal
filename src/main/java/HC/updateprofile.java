package HC;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class updateprofile
 */
@WebServlet("/updateDoctorProfile")
public class updateprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateprofile() {
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
	        HttpSession session = request.getSession();
	        int doctorId = (Integer) session.getAttribute("doctorId");

	        String name = request.getParameter("name");
	        int department_id = Integer.parseInt(request.getParameter("department_id"));
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
	            PreparedStatement ps = con.prepareStatement("UPDATE doctors SET name=?, department_id=?, email=?, phone=? WHERE doctor_id=?");
	            ps.setString(1, name);
	            ps.setInt(2, department_id);
	            ps.setString(3, email);
	            ps.setString(4, phone);
	            ps.setInt(5, doctorId);
	            int result = ps.executeUpdate();

	            if (result > 0) {
	                response.sendRedirect("viewProfile.jsp");
	            } else {
	                response.sendRedirect("updateProfile.jsp");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
