package org.ganghwa.dao;

import java.sql.*;
import java.util.*;

import org.ganghwa.dto.Notice;

public class NoticeDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Notice> getNoticeList() {
		List<Notice> noticeList = new ArrayList<>();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_NOTICE);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Notice notice = new Notice(rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"));
				noticeList.add(notice);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return noticeList;
	}
	
	public Notice getNotice(int no) {
		Notice notice = new Notice();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			
			pstmt = con.prepareStatement(SqlLang.UPDATE_NOTICE_VISITED);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			
			pstmt = null;
			
			pstmt = con.prepareStatement(SqlLang.SELECT_NOTICE_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				notice.setNo(rs.getInt("no"));
				notice.setTitle(rs.getString("title"));
				notice.setContent(rs.getString("content"));
				notice.setResdate(rs.getString("resdate"));
				notice.setVisited(rs.getInt("visited"));	
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		
		return notice;
	}
	
	public int insNotice(Notice notice) {
		int cnt = 0;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(MariaDB.INSERT_NOTICE);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editNotice(Notice notice) {
		int cnt = 0;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATE_NOTICE);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setInt(3, notice.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delNotice(int no) {
		int cnt = 0;
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_NOTICE);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}

	public Notice getNotice2(int no) {
		Notice notice = new Notice();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_NOTICE_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				notice.setNo(rs.getInt("no"));
				notice.setTitle(rs.getString("title"));
				notice.setContent(rs.getString("content"));
				notice.setResdate(rs.getString("resdate"));
				notice.setVisited(rs.getInt("visited"));	
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		
		return notice;
	}

	public List<Notice> getLatestNoticeList() {
		List<Notice> latestNoticeList = new ArrayList<>();
		
		MariaDB mariadb = new MariaDB();
		
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(MariaDB.LATEST_NOTICE);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Notice notice = new Notice(rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"));
				latestNoticeList.add(notice);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return latestNoticeList;
	}
}
