package spring.sql;


import spring.dto.Member;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
	public Member memberselect(Member member);
	
	public int memberinsert(Member member);
	
	public int memberdelete(Member member);
	
	public void memberupdate(Member member);
}
