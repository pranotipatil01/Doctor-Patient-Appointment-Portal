package HC;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class editAppointment
 */
@WebServlet("/editAppointment")
public class editAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));
        
        Appointment appointment = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
            
            String sql = "SELECT * FROM appointments WHERE appointment_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, appointmentId);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                appointment = new Appointment();
                appointment.setAppointment_id(rs.getInt("appointment_id"));
                appointment.setPatient_name(rs.getString("patient_name"));
                appointment.setAge(rs.getInt("age"));
                appointment.setGender(rs.getString("gender"));
                appointment.setPatient_email(rs.getString("patient_email"));
                appointment.setPatient_phone(rs.getString("patient_phone"));
                appointment.setDepartment_id(rs.getInt("department_id"));
                appointment.setDoctor_id(rs.getInt("doctor_id"));
                appointment.setAppointment_date(rs.getDate("appointment_date"));
                appointment.setPrescription(rs.getString("prescription"));
            }
            
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.setAttribute("appointment", appointment);
        request.getRequestDispatcher("/EditAppointment.jsp").forward(request, response);
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));
        String patientName = request.getParameter("patient_name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String email = request.getParameter("patient_email");
        String phone = request.getParameter("patient_phone");
        java.sql.Date appointmentDate = java.sql.Date.valueOf(request.getParameter("appointment_date"));
        String prescription = request.getParameter("prescription");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
            
            String sql = "UPDATE appointments SET patient_name = ?, age = ?, gender = ?, patient_email = ?, patient_phone = ?, appointment_date = ?, prescription = ? WHERE appointment_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, patientName);
            ps.setInt(2, age);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setDate(6, appointmentDate);
            ps.setString(7, prescription);
            ps.setInt(8, appointmentId);
            ps.executeUpdate();
            
            ps.close();
            con.close();
            
            response.sendRedirect("viewDoctorAppointments");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("editAppointment?appointmentId=" + appointmentId + "&error=true");
        }
    }

}
