package spring.sql;


import java.util.List;
import java.util.Map;

import spring.dto.Board;
import spring.dto.Member;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
	public Member memberselect(Member member);
	
	
	public int memberinsert(Member member);
	
	public int memberdelete(Member member);
	
	public void memberupdate(Member member);
	
	public List<Map> boardselect(Board board);
	
	public Board boarddetail(Board board);
	
	public void boardupdate(Board board);
}
