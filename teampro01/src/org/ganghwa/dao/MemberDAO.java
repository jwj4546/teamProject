package org.ganghwa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import org.ganghwa.dto.Member;

public class MemberDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Member> getMemberList() {
		List<Member> memberList = new ArrayList<>();
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_MEMBER);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Member member = new Member(rs.getString("id"),
						rs.getString("pw"),
						rs.getString("name"),
						rs.getString("birth"),
						rs.getString("email"),
						rs.getString("tel"),
						rs.getString("addr"),
						rs.getString("postcode")
						);
				memberList.add(member);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return memberList;
	}
	
	public Member getMember(String id) {
		Member member = new Member();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_MEMBER_BYID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setBirth(rs.getString("birth"));
				member.setEmail(rs.getString("email"));
				member.setTel(rs.getString("tel"));
				member.setAddr(rs.getString("addr"));
				member.setPostcode(rs.getString("postcode"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		
		return member;
	}
	
	public int join(Member member) {
		int cnt = 0;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.INSERT_MEMBER);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getBirth());
			pstmt.setString(5, member.getEmail());
			pstmt.setString(6, member.getTel());
			pstmt.setString(7, member.getAddr());
			pstmt.setString(8, member.getPostcode());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	
	public int editMember(Member member) {
		int cnt = 0;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATE_MEMBER);
			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getBirth());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getTel());
			pstmt.setString(6, member.getAddr());
			pstmt.setString(7, member.getPostcode());
			pstmt.setString(8, member.getId());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int memberOut(String id) {
		int cnt = 0;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_MEMBER);
			pstmt.setString(1, id);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}

	public boolean idCheck(String id) {
		boolean check = false;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_MEMBER_BYID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				check = true;
			}
			else {
				check = false;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return check;
	}
}
