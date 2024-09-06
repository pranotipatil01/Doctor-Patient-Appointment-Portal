package HC;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class viewDoctorAppointments
 */
@WebServlet("/viewDoctorAppointments")
public class viewDoctorAppointments extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewDoctorAppointments() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int doctorId = (Integer) session.getAttribute("doctorId");

        List<Appointment> appointments = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM appointments WHERE doctor_id=?");
            ps.setInt(1, doctorId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Appointment appointment = new Appointment();
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
                appointments.add(appointment);
            }
            request.setAttribute("appointments", appointments);
            request.getRequestDispatcher("doctorviewAppointment.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

