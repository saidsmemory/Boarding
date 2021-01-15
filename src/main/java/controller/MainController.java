package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.dto.Member;
import spring.service.MainService;
import vaildator.MainValidator;

@Controller
public class MainController {

	@Autowired
	MainService ms;
	
	@RequestMapping("/main")
	public String main() {
		System.out.println("main");
		return "main";
	}
	@RequestMapping("/down")
	public String down() {
		return "down";
	}
	
//	@RequestMapping("/select")
//	public String select(Member member) {
//		member.setId("1");
//		ms.select(member);
//		return "select";
//	}
	@GetMapping("/select")
	public String select(Member member, Model model) {
//		model.addAttribute("member",member);
		return "select";
	}
	@PostMapping("/selectPage")
	public String selectPage(Member member,Errors errors, Model model, HttpSession session) {
		new MainValidator().validate(member, errors);
		if (errors.hasErrors()) {
			return "select";
		}
		Member info = ms.select(member);
		session.setAttribute("memberinfo", info);
		return "selectPage";
	}
	
	
	@GetMapping("/insert")
	public String insert(Member member) {
		return "insert";
	}
	@PostMapping("/insert")
	public String memberInsert(Member member) {
		ms.add(member);
		return "insertPage";
	}
	
	@GetMapping("/delete")
	public String delete(Member member) {
		return "delete";
	}
	@PostMapping("/delete")
	public String memberDelete(Member member) {
		ms.del(member);
		return "deletePage";
	}
	
	@GetMapping("/update")
	public String update(Member member) {
		return "update";
	}
	@PostMapping("/update")
	public String memberUpdate(Member member) {
		ms.update(member);
		return "updatePage";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "logout";
	}
}
