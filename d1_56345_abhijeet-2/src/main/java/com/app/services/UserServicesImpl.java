package com.app.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.app.dao.UserDao;
import com.app.pojos.Users;

@Service
public class UserServicesImpl {
	private UserDao userDao;

	public UserServicesImpl(UserDao userDao) {
		super();
		this.userDao = userDao;
	}

	public Users findByEmail(String email) {
		return userDao.findByEmail(email);
	}
	
	public Users findById(int id)
	{
		Optional<Users> user=userDao.findById(id);
		return user.orElse(null);
	}

	public Users authenticateUser(String email, String password) {
		Users user = userDao.findByEmail(email);
		if (user != null && user.getPassword().equals(password))
			return user;
		return null;
	}
	
	public List<Users> findAllVendors()
	{
		return userDao.findByRole("vendor");
	}
	
	public void deleteById(int id)
	{
		userDao.deleteById(id);
	}
	public void updateVendors(Users user)
	{
		userDao.save(user);
	}
	
	public void addVendors(Users user)
	{
		userDao.save(user);
	}
}
