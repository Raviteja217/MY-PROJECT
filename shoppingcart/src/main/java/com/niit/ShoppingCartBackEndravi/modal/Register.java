package com.niit.ShoppingCartBackEndravi.modal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "register")
@Component

public class Register {
	
	 @Id 
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 @Column(name="id")
	private int id;
	 @NotNull
	 @Size(min=2,max=30,message="Name Must be more than 2 letters")
	 @Column(name="name")
	 private String name;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="email")
    private String email;
	 @NotNull
	 @Size(min=10,max=12)
	 @Column(name="mobile_number")
	 private String mobile_number;
	 @NotNull
	 @Size(min=2,max=30,message="Address at least more than 3 Characters")
	 @Column(name="address")
	 private String address;	
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="password")
	 private String password;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="confirmpassword")
	 private String confirmpassword;
	 @NotNull
	 @Column(name="status")
	 private boolean status=true;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public boolean getStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	

}