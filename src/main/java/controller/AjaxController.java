package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import spring.dto.Member;
import spring.service.MainService;

@RestController
public class AjaxController {

	@Autowired
	MainService ms;

	@PostMapping("/ajaxtest")
	public ResponseEntity ajaxtest(@RequestBody Member member) {
		return ResponseEntity.ok(ms.add(member));
	}
	@GetMapping("/ajaxtest2")
	public ResponseEntity ajaxtest2(Member member) {
		return ResponseEntity.ok(ms.select(member));
	}


}
