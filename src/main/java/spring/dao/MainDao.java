package spring.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.dto.Board;
import spring.dto.Member;

@Component
public class MainDao {
	
	@Autowired
	SqlSession sql;
	
	public Member memberselect(Member member){
		return sql.selectOne("spring.sql.Mapper.memberselect", member);
	}
	public int memberinsert(Member member) {
		return sql.insert("spring.sql.Mapper.memberinsert", member);
	}
	
	public int memberdelete(Member member) {
		return sql.delete("spring.sql.Mapper.memberdelete", member);
	}
	
	public void memberupdate(Member member) {
		sql.update("spring.sql.Mapper.memberupdate", member);
	}
	
	
	
	//board기능
	public List<Map> boardselect(Board board) {
		 return sql.selectList("spring.sql.Mapper.boardselect", board);		 
	 }
	
	public Board boarddetail(Board board) {
		return sql.selectOne("spring.sql.Mapper.boarddetail", board);
	}
	
	public void boardupdate(Board board) {
		sql.update("spring.sql.Mapper.boardupdate", board);
	}
	
}
