package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.dto.Board;
import spring.dto.Member;
import spring.exception.LoginCheckException;
import spring.service.MainService;
import vaildator.MainValidator;

@Controller
public class MainController {

	@Autowired
	MainService ms;
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/home2")
	public String home2() {
		return "home2";
	}
	@RequestMapping("/home3")
	public String home3() {
		return "home3";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	@RequestMapping("/unlogin")
	public String down() {
		return "unlogin";
	}
	

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
		if(info==null) {
			throw new LoginCheckException("This email does not exist.");
		}
		if(!info.getPassword().equals(member.getPassword())) {
		throw new LoginCheckException("Check your password");
		}
		
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
	
	//board기능
	@GetMapping("/board")
	public String boardList(Model model, Board board) {
		//board 파라미터값 변수
		model.addAttribute("list", ms.boardList(board));
		return "/board/boardList";
	}
	
	@GetMapping("/boardOne")
	public String boardOne(Model model, Board board) {	
		model.addAttribute("board", ms.boardOne(board));
		return "/board/boardOne";
	}
	
	@GetMapping("/boardInsert")
	public String boardInsert(Board board) {
		return "/board/boardInsert";
	}
	
	@PostMapping("/boardInsertPage")
	public String boardInsertPage(Board board) {
		ms.badd(board);
		return "/board/boardInsertPage";
	}
	
	@PostMapping("/boardUpdate")
	public String boardUpdate(Board board,HttpSession session,Model model) {
		
		//작성자가 아닐경우 - 권한이 없습니다  ----진행중
		
		//String seinfo = ((Member) session.getAttribute("memberinfo")).getId();
		//System.out.println(seinfo);
		 
		
		return "/board/boardUpdate";
	}
	@PostMapping("/boardUpdatePage")
	public String boardUpdatePage(Board board, HttpSession session) {
		ms.boardUpdate(board);
		return "/board/boardUpdatePage";
	}
	
	@RequestMapping("/boardDelete")
	public String boardDeletePage(Board board) {
		ms.bdel(board);
		return "board/boardDelete";
	}
	

	
	
	
	@GetMapping("ajaxinsert")
	public String ajaxinsert() {
		return "/test/ajaxtest";
	}
	
	
}
