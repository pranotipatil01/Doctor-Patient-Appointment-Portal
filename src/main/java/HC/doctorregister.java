package HC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
/**
 * Servlet implementation class doctorregister
 */
@WebServlet("/doctorregister")
public class doctorregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doctorregister() {
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
	        String name = request.getParameter("name");
	        int departmentId = Integer.parseInt(request.getParameter("department"));
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String password = request.getParameter("password");

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
	            PreparedStatement ps = con.prepareStatement("INSERT INTO doctors (name, department_id, email, phone, password) VALUES (?, ?, ?, ?, ?)");
	            ps.setString(1, name);
	            ps.setInt(2, departmentId);
	            ps.setString(3, email);
	            ps.setString(4, phone);
	            ps.setString(5, password);
	            ps.executeUpdate();

	            
	            response.sendRedirect("registration_success.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("registration_error.jsp");
	        }
	    }

}
