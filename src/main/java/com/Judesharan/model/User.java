package com.Judesharan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "user")
public class User {

		@Id
		@GeneratedValue
		@Column(name = "id")
		private int id;

		@Column(name = "name")
		private String name;

		@Column(name = "username")
		private String userName;
		
		@Column(name = "password")
		private String password;
		
		@Column(name = "mobile_no")
		private String mobileNumber;
		
		@Column(name = "email_ID")
		private String email;

		@Column(name="active")
		private Boolean active;
		
		@ManyToOne
		@JoinColumn(name="user_roleId")
		private Role role;

}
