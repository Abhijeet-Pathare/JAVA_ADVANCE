package com.app.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

//create table vendors(id int(5) primary key auto_increment,name varchar(20), email varchar(20) unique, password varchar(20),city varchar(20), cell_no varchar(10) unique ,reg_amount double(8,1),reg_date date,role varchar(10));
@Entity
@Table(name="vendors")
public class Users 
{
	@Id
	private int id;
	private String name;
	private String email;
	private String password;
	private String city;
	@Column(name="cell_no")
	private String cellNo;
	@Column(name="reg_amount")
	private double regAmount;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="reg_date")
	private Date regDate;
	private String role;
	
	public Users() {
		// TODO Auto-generated constructor stub
	}

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCellNo() {
		return cellNo;
	}

	public void setCellNo(String cellNo) {
		this.cellNo = cellNo;
	}

	public double getRegAmount() {
		return regAmount;
	}

	public void setRegAmount(double regAmount) {
		this.regAmount = regAmount;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Users(int id, String name, String email, String password, String city, String cellNo, double regAmount,
			Date regDate, String role) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.city = city;
		this.cellNo = cellNo;
		this.regAmount = regAmount;
		this.regDate = regDate;
		this.role = role;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", city=" + city
				+ ", cellNo=" + cellNo + ", regAmount=" + regAmount + ", regDate=" + regDate + ", role=" + role + "]";
	}
	
	
}
