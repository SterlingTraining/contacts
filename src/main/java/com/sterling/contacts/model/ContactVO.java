package com.sterling.contacts.model;

public class ContactVO implements java.io.Serializable{

	private long contactId;
	private String contactName;
	private String firstName;
	private String lastName;
	private String dob;
	private String email;
	private String mobilePhone;
	private String homePhone;
	private String workPhone;
	private String address;
	
	
	public long getContactId() {
		return contactId;
	}
	public void setContactId(long contactId) {
		this.contactId = contactId;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	public String getWorkPhone() {
		return workPhone;
	}
	public void setWorkPhone(String workPhone) {
		this.workPhone = workPhone;
	}
	@Override
	public String toString() {
		return "ContactVO [contactId=" + contactId + ", contactName=" + contactName + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", dob=" + dob + ", email=" + email + ", mobilePhone=" + mobilePhone
				+ ", homePhone=" + homePhone + ", workPhone=" + workPhone + ", address=" + address + "]";
	}
	
	
}
