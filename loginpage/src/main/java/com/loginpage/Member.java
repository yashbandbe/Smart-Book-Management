package com.loginpage;

public class Member {
     private String firstname,lastname,Email_Id,password,gender,number;

	public Member() {
		super();
	}

	public Member(String firstname, String lastname, String email_Id, String password, String gender, String number) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.Email_Id = email_Id;
		this.password = password;
		this.gender = gender;
		this.number = number;
	}
     public String getfirstname() {
    	 return firstname;
     }
     public String getlastname() {
    	 return lastname;
     }
     public String getEmail_Id() {
    	 return Email_Id;
     }
     public String getpassword() {
    	 return password;
     }
     public String getgender() {
    	 return gender;
     }
     public String getnumber() {
    	 return number;
     }
}
