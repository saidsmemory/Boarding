package spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.dao.MainDao;
import spring.dto.Member;

@Service
public class MainService {

		@Autowired
		MainDao dao;
		
		public Member select(Member member){
			return dao.memberselect(member);
		}
		
		public void add(Member member) {
			dao.memberinsert(member);
			System.out.println("insert");
		}
		
		public void del(Member member) {
			dao.memberdelete(member);
			System.out.println("delete");
		}
		
		public void update(Member member) {
			dao.memberupdate(member);
			System.out.println("update");
		}
}
