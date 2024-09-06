package HC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "add":
                addDoctor(request, response);
                break;
            case "edit":
                updateDoctor(request, response);
                break;
            case "addDepartment":
                addDepartment(request, response);
                break;
           case "editDepartment":
                updateDepartment(request, response);
                break;
                
           case "editUser":
               updateUser(request, response);
               break;
                
                
         
            default:
                response.sendRedirect("adminDashboard.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "view":
                viewDoctors(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteDoctor(request, response);
                break;
            case "viewDepartments":
                viewDepartments(request, response);
                break;
           case "editDepartment":
                showEditDepartmentForm(request, response);
              break;
            case "deleteDepartment":
                deleteDepartment(request, response);
               break;
            case "viewUsers":
                viewUsers(request, response);
                break;
                
            
            case "editUser":
                showEditUserForm(request, response);
                break;
            case "deleteUser":
                deleteUser(request, response);
                break;
            case "viewAppointment":
                viewAppointment(request, response);
                break;
            
           
            default:
                response.sendRedirect("adminDashboard.jsp");
        }
    }

    private void addDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String name = request.getParameter("name");
	        int departmentId = Integer.parseInt(request.getParameter("department"));
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO doctors (name, department_id, email, phone, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, departmentId);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, password);
            ps.executeUpdate();

           
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("admin?action=view");
    }

    private void viewDoctors(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Doctor> doctors = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM doctors";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Doctor doctor = new Doctor();
                doctor.setDoctor_id(rs.getInt("doctor_id")); 
                doctor.setName(rs.getString("name"));
                doctor.setDepartment(rs.getInt("department_id"));
                doctor.setEmail(rs.getString("email"));
                doctor.setPhone(rs.getString("phone"));
                doctor.setPassword(rs.getString("password"));
                doctors.add(doctor);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving doctors: " + e.getMessage());
        }

        request.setAttribute("doctors", doctors);
        request.getRequestDispatcher("viewDoctors.jsp").forward(request, response);
    }
    
    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int doctorId = Integer.parseInt(request.getParameter("id"));
        Doctor doctor = null;

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM doctors WHERE doctor_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, doctorId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                doctor = new Doctor();
                doctor.setDoctor_id(rs.getInt("doctor_id"));
                doctor.setName(rs.getString("name"));
                doctor.setDepartment(rs.getInt("department_id"));
                doctor.setEmail(rs.getString("email"));
                doctor.setPhone(rs.getString("phone"));
                doctor.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving doctor: " + e.getMessage());
        }

        request.setAttribute("doctor", doctor);
        request.getRequestDispatcher("editDoctor.jsp").forward(request, response);
    }

    private void updateDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int doctorId = Integer.parseInt(request.getParameter("doctor_id"));
        String name = request.getParameter("name");
        int departmentId = Integer.parseInt(request.getParameter("department"));
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE doctors SET name = ?, department_id = ?, email = ?, phone = ?, password = ? WHERE doctor_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, departmentId);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, password);
            ps.setInt(6, doctorId);
            ps.executeUpdate();

            request.setAttribute("message", "Doctor updated successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error updating doctor: " + e.getMessage());
        }

        response.sendRedirect("admin?action=view");
    }

    private void deleteDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int doctorId = Integer.parseInt(request.getParameter("id"));

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "DELETE FROM doctors WHERE doctor_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, doctorId);
            ps.executeUpdate();

            request.setAttribute("message", "Doctor deleted successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error deleting doctor: " + e.getMessage());
        }

        response.sendRedirect("admin?action=view");
    }

    private void addDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String departmentName = request.getParameter("department_name");

        try (Connection conn = DBConnection.getConnection()) {
        	 String query = "INSERT INTO departments (department_name) VALUES (?)";
             PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(1,departmentName );
             int result = ps.executeUpdate();

            request.setAttribute("message", "Department added successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error adding department: " + e.getMessage());
        }

        response.sendRedirect("admin?action=viewDepartments");
    }
    
    
    
    private void viewDepartments(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Department> department = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM departments";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                
                Department department1 =new Department();
                department1.setDepartment_Id(rs.getInt("Department_Id"));
                department1.setDepartment_Name(rs.getString("department_Name"));
               
                department.add(department1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving doctors: " + e.getMessage());
        }

        request.setAttribute("departments", department);
        request.getRequestDispatcher("viewDepartment.jsp").forward(request, response);
    }


    private void showEditDepartmentForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int departmentId = Integer.parseInt(request.getParameter("id"));
        Department department = null;

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM departments WHERE department_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, departmentId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                department = new Department();
                department.setDepartment_Id(rs.getInt("department_id"));
                department.setDepartment_Name(rs.getString("department_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving department: " + e.getMessage());
        }

        request.setAttribute("department", department);
        request.getRequestDispatcher("editDepartment.jsp").forward(request, response);
    }

    private void updateDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int departmentId = Integer.parseInt(request.getParameter("department_id"));
        String departmentName = request.getParameter("department_name");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE departments SET department_name = ? WHERE department_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, departmentName);
            ps.setInt(2, departmentId);
            ps.executeUpdate();

            request.setAttribute("message", "Department updated successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error updating department: " + e.getMessage());
        }

        response.sendRedirect("admin?action=viewDepartments");
    }

   
    
   
    private void deleteDepartment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int departmentId = Integer.parseInt(request.getParameter("id"));

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "DELETE FROM departments WHERE department_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, departmentId);
            ps.executeUpdate();

            request.setAttribute("message", "Department deleted successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error deleting department: " + e.getMessage());
        }

        response.sendRedirect("admin?action=viewDepartments");
    }
    private void viewUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM users";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                User user = new User();
                user.setUser_id(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving users: " + e.getMessage());
        }

        request.setAttribute("users", users);
        request.getRequestDispatcher("viewUsers.jsp").forward(request, response);
    }
    
    private void showEditUserForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = null;

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM users WHERE user_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUser_id(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving user: " + e.getMessage());
        }

        request.setAttribute("user", user);
        request.getRequestDispatcher("editUser.jsp").forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("user_id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE users SET username = ?, password = ?, email = ? WHERE user_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setInt(4, userId);
            ps.executeUpdate();

            request.setAttribute("message", "User updated successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error updating user: " + e.getMessage());
        }

        response.sendRedirect("admin?action=viewUsers");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "DELETE FROM users WHERE user_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.executeUpdate();

            request.setAttribute("message", "User deleted successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error deleting user: " + e.getMessage());
        }

        response.sendRedirect("admin?action=viewUsers");
    
}
    private void viewAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Appointment> appointments = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM appointments";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Appointment a = new Appointment();
                a.setAppointment_id(rs.getInt("appointment_id"));
                a.setPatient_name(rs.getString("patient_name"));
                a.setAge(rs.getInt("age"));
                a.setGender(rs.getString("gender"));
                a.setPatient_email(rs.getString("patient_email"));
                a.setPatient_phone(rs.getString("patient_phone"));
                a.setDepartment_id(rs.getInt("department_id"));
                a.setDoctor_id(rs.getInt("doctor_id"));
                a.setAppointment_date(rs.getDate("appointment_date"));
                a.setPrescription(rs.getString("prescription"));
                
            
                appointments.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error retrieving users: " + e.getMessage());
        }

        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("viewAppointment.jsp").forward(request, response);
    }
    
    
    
}
