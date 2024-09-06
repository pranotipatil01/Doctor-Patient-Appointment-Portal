package HC;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteAppointment
 */
@WebServlet("/deleteAppointment")
public class deleteAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String appointmentIdStr = request.getParameter("appointment_id");

        if (appointmentIdStr != null && !appointmentIdStr.isEmpty()) {
            try {
                int appointmentId = Integer.parseInt(appointmentIdStr);

                try (Connection conn = DBConnection.getConnection()) {
                    String sql = "DELETE FROM appointments WHERE appointment_id = ?";
                    try (PreparedStatement ps = conn.prepareStatement(sql)) {
                        ps.setInt(1, appointmentId);
                        int rowsAffected = ps.executeUpdate();

                        if (rowsAffected > 0) {
                            request.setAttribute("message", "Appointment deleted successfully.");
                        } else {
                            request.setAttribute("message", "Appointment not found.");
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                        request.setAttribute("error", "Error deleting appointment: " + e.getMessage());
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                    request.setAttribute("error", "Database connection error: " + e.getMessage());
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
                request.setAttribute("error", "Invalid appointment ID format.");
            }
        } else {
            request.setAttribute("error", "Appointment ID is required.");
        }

        
        response.sendRedirect("viewDoctorAppointments");
    }
}
