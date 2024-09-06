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
/**
 * Servlet implementation class MakeAppointment
 */
@WebServlet("/MakeAppointment")
public class MakeAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String patientName = request.getParameter("patient_name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int departmentId = Integer.parseInt(request.getParameter("department"));
        int doctorId = Integer.parseInt(request.getParameter("doctor"));
        String appointmentDate = request.getParameter("appointment_date");

        HttpSession session = request.getSession();
        session.setAttribute("patient_name", patientName);
        session.setAttribute("age", age);
        session.setAttribute("gender", gender);
        session.setAttribute("email", email);
        session.setAttribute("phone", phone);
        session.setAttribute("department_id", departmentId);
        session.setAttribute("doctor_id", doctorId);
        session.setAttribute("appointment_date", appointmentDate);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");

            String sql = "INSERT INTO appointments (patient_name, age, gender, patient_email, patient_phone, department_id, doctor_id, appointment_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, patientName);
            ps.setInt(2, age);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setInt(6, departmentId);
            ps.setInt(7, doctorId);
            ps.setString(8, appointmentDate);
            ps.executeUpdate();

            ps.close();
            con.close();

            response.setContentType("text/html");
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Appointment is booked successfully.');");
            response.getWriter().println("window.location.href = 'home.jsp';");
            response.getWriter().println("</script>");
           
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("appointment_error.jsp");
        }
    }
}
