package com.app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Users;

public interface UserDao extends JpaRepository<Users, Integer>
{
	Users findByEmail(String email);
	List<Users> findByRole(String role);
}
