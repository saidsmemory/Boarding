package spring.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.dao.MainDao;
import spring.dto.Board;
import spring.dto.Member;
import spring.exception.DuplicateMemberException;
import spring.exception.LoginCheckException;

@Service
public class MainService {

		@Autowired
		MainDao dao;
		
//		public Member select(Member member){
//			return dao.memberselect(member);
//		}
		
		//login관련 연습
		public Member select(Member member){
			Member info = dao.memberselect(member);
			if(info==null) {
				throw new LoginCheckException("존재하지않는 이메일입니다");
			}
		//	if(!info.getPassword().equals(member.getPassword())) {
		//		throw new LoginCheckException("비밀번호를 확인하세요");
		//	}
			return info;
		}
		
		
		
		public int add(Member member) {
			Member checkmember = dao.memberselect(member);
			if(checkmember != null) {
				throw new DuplicateMemberException("중복된 아이디입니다");
			}
			return dao.memberinsert(member);
		}
		
		public void del(Member member) {
			dao.memberdelete(member);
			System.out.println("delete");
		}
		
		public void update(Member member) {
			dao.memberupdate(member);
			System.out.println("update");
		}
		
		
		public List<Map> boardList(Board board){
			return dao.boardselect(board);
		}
		
		public Board boardOne(Board board) {
			return dao.boarddetail(board);
		}
		public void boardUpdate(Board board) {
			dao.boardupdate(board);
		}
}
