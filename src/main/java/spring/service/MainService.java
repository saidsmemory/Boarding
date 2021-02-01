package spring.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.dao.MainDao;
import spring.dto.Board;
import spring.dto.Member;
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
		return info;
		}
				
				
				
		public int add(Member member) {
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
		
		public int badd(Board board) {
			return dao.boardinsert(board);
		}
		public void boardUpdate(Board board) {
			dao.boardupdate(board);
		}
		
		public void bdel(Board board) {
			dao.boarddelete(board);
			System.out.println("delete");
		}
}
