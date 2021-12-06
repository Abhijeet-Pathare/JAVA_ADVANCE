package com.app.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.pojos.Credentilas;
import com.app.pojos.Users;
import com.app.services.UserServicesImpl;

@Controller
public class UserControllers {
	@Autowired
	private UserServicesImpl userService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/validate")
	public String validate(Credentilas cr, Model model, HttpSession session) {
		String msg;
		Users user = userService.authenticateUser(cr.getEmail(), cr.getPassword());
		if (user == null) {
			msg = "Invalid Email or Paasword Try Agian";
			model.addAttribute("message", msg);
			return "login";
		}
		session.setAttribute("user", user);
//		session.setAttribute("id", user.getId());
		if (user.getRole().equals("admin"))
			return "redirect:manage";
		return "redirect:details";
	}
	@RequestMapping("/details")
	public String details(HttpSession session,Model model)
	{
		Users user1=(Users) session.getAttribute("user");
		Users user=userService.findById(user1.getId());
		model.addAttribute("vendor",user);
		return "details";
	}
	@RequestMapping("/manage")
	public String manage(Model model)
	{
		List<Users> users=userService.findAllVendors();
		model.addAttribute("vendors",users);
		return "manage";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model model)
	{
		Users user=(Users) session.getAttribute("user");
		model.addAttribute("name", user.getName());
		session.invalidate();
		return"logout";
	}
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int id)
	{
		userService.deleteById(id);
		return "redirect:manage";
	}
	@RequestMapping("/edit")
	public String edit(@RequestParam("id") int id,Model model)
	{
		Users user=userService.findById(id);
		model.addAttribute("vendors",user);
		return "edit";
	}
	@RequestMapping("/update")
	public String update(Users vendors,Model model)
	{
		userService.updateVendors(vendors);
		return "redirect:manage";
	}
	@RequestMapping("/add")
	public String add(Model model)
	{
		Users vendor=new Users();
		model.addAttribute("vendors",vendor);
		return "add";
	}
	@RequestMapping("/addvendor")
	public String addVendor(Users vendors,Model model)
	{
		userService.updateVendors(vendors);
		return "redirect:manage";
	}
}

//insert into vendors values(default,'ms','ms@gmail.com','2234','pune', '9156156958',500, '2018-11-21’,'vendor');
//insert into vendors values(default,'ms','m@gmail.com','2234','pune','91305657',100,'2021-12-02','vendor');