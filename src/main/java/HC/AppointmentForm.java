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
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class AppointmentForm
 */
@WebServlet("/appointmentForm")
public class AppointmentForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM departments");
            ResultSet rs = ps.executeQuery();
            List<Department> departments = new ArrayList<>();
            while (rs.next()) {
                Department department = new Department();
                department.setDepartment_Id(rs.getInt("department_id"));
                department.setDepartment_Name(rs.getString("department_name"));
                departments.add(department);
            }
            rs.close();
            ps.close();
            con.close();
            request.setAttribute("departments", departments);
            request.getRequestDispatcher("appointmentForm.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}




