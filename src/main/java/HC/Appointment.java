package HC;

//import java.util.Date;

import java.sql.Date;

public class Appointment {
	
	 private int appointment_id;
	    private String patient_name;
	    private int age;
	    private String gender;
	    private String patient_email;
	    private String patient_phone;
	    private int department_id;
	    private int doctor_id;
	    private Date appointment_date;
	    private String prescription;
		
	    
	    public int getAppointment_id() {
			return appointment_id;
		}
		public void setAppointment_id(int appointment_id) {
			this.appointment_id = appointment_id;
		}
		
		public String getPatient_name() {
			return patient_name;
		}
		public void setPatient_name(String patient_name) {
			this.patient_name = patient_name;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getPatient_email() {
			return patient_email;
		}
		public void setPatient_email(String patient_email) {
			this.patient_email = patient_email;
		}
		public String getPatient_phone() {
			return patient_phone;
		}
		public void setPatient_phone(String patient_phone) {
			this.patient_phone = patient_phone;
		}
		public int getDepartment_id() {
			return department_id;
		}
		public void setDepartment_id(int department_id) {
			this.department_id = department_id;
		}
		public int getDoctor_id() {
			return doctor_id;
		}
		public void setDoctor_id(int doctor_id) {
			this.doctor_id = doctor_id;
		}
		public Date getAppointment_date() {
			return appointment_date;
		}
		public void setAppointment_date(Date appointment_date) {
			this.appointment_date = appointment_date;
		}
		public String getPrescription() {
			return prescription;
		}
		public void setPrescription(String prescription) {
			this.prescription = prescription;
		}
	    
	    

}
