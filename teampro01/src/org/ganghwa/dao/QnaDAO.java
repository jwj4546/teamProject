package org.ganghwa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.ganghwa.dto.Qna;

public class QnaDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Qna> getQnaList(){
		List<Qna> qnaList = new ArrayList<>();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_QNA);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("no"),
						rs.getString("plevel"),
						rs.getInt("parno"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"),
						rs.getString("aid"));
				qnaList.add(qna);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return qnaList;
	}
	
	public Qna getQna(int no) {
		Qna qna = new Qna();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATE_QNA_VISITED);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				qna.setNo(rs.getInt("no"));
				qna.setPlevel(rs.getString("plevel"));
				qna.setParno(rs.getInt("parno"));
				qna.setTitle(rs.getString("title"));
				qna.setContent(rs.getString("content"));
				qna.setResdate(rs.getString("resdate"));
				qna.setVisited(rs.getInt("visited"));
				qna.setAid(rs.getString("aid"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return qna;
	}
	
	public int insQuestion(Qna qna) {
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(MariaDB.INSERT_QUESTION);
			pstmt.setString(1, qna.getTitle());
			pstmt.setString(2, qna.getContent());
			pstmt.setString(3, qna.getAid());
			cnt = pstmt.executeUpdate();
			
			pstmt = null;
			pstmt = con.prepareStatement(MariaDB.UPDATE_QUESTION_BYPARNO);
			cnt = cnt + pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int insAnswer(Qna qna) {
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(MariaDB.INS_ANSWER);
			pstmt.setInt(1, qna.getParno());
			pstmt.setString(2, qna.getTitle());
			pstmt.setString(3, qna.getContent());
			pstmt.setString(4, qna.getAid());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProQna(Qna qna) {
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATE_QNA);
			pstmt.setString(1, qna.getTitle());
			pstmt.setString(2, qna.getContent());
			pstmt.setInt(3, qna.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delQuestion(int parno){
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_QUESTION);
			pstmt.setInt(1, parno);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delAnswer(int no){
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_ANSWER);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public Qna getQna2(int no) {
		Qna qna = new Qna();
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				qna.setNo(rs.getInt("no"));
				qna.setPlevel(rs.getString("plevel"));
				qna.setParno(rs.getInt("parno"));
				qna.setTitle(rs.getString("title"));
				qna.setContent(rs.getString("content"));
				qna.setResdate(rs.getString("resdate"));
				qna.setVisited(rs.getInt("visited"));
				qna.setAid(rs.getString("aid"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return qna;
	}

	public List<Qna> LatestgetQnaList() {
		List<Qna> latestQnaList = new ArrayList<>();
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(MariaDB.LATEST_QNA);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("no"),
						rs.getString("plevel"),
						rs.getInt("parno"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"),
						rs.getString("aid"));
				latestQnaList.add(qna);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return latestQnaList;
	}
}
