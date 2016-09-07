
	package com.niit.ShoppingCartBackEndravi.modal;

	import javax.persistence.Column;
	import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
	import javax.persistence.Table;

	import org.springframework.stereotype.Component;

	@Entity
	@Table(name = "login")
	@Component

	public class Login {

		 @Id 
		 @GeneratedValue(strategy=GenerationType.AUTO)
		 @Column(name="id")
		private int id;
		private String password;
		private String name;
		private String role="ROLE_USER";
		private boolean status;
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		public boolean getStatus() {
			return status;
		}
		public void setStatus(boolean status) {
			this.status = status;
		}
		
		
		
		
	}
		
		
