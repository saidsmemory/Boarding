package spring.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
}
