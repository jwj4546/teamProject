package org.gangseo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.gangseo.dto.Notice;

public class MySQLtest {
	public static void main(String[] args) {
		Connection con = null;	//연결
		PreparedStatement pstmt = null;	//상태 변경(ON/OFF) 하고, SQL 문장 실행
		ResultSet rs = null;	//검색(Select문)의 결과를 반환받음
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/kew01";
		String userid = "root";
		String userpw = "1234";
		String sql = "select * from notice";
		List<Notice> notiList = new ArrayList<>();
		try {
			Class.forName(driver);	//현재 클래스에 드라이버 로딩
			try {
				con = DriverManager.getConnection(url, userid, userpw); //데이터베이스 물리적 연결
				pstmt = con.prepareStatement(sql); //논리적 채널 연결
				rs = pstmt.executeQuery();	//sql 구문이 select 문장인 경우에는 commit이 필요 없으므로 executeQuery() 메소드를 사용하며, 결과 반환은 레코드셋(ResultSet)이다. 
				while(rs.next()) {
					Notice noti = new Notice(rs.getInt("no"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("resdate"),
							rs.getInt("visited"));
					notiList.add(noti);
					
				} System.out.println("MySQL연결성공");
			} catch (SQLException e) {
				System.out.println("데이터베이스 연결 실패 또는 SQL 구문 실행 실패");
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			System.out.println("데이터베이스 로딩 실패");
			e.printStackTrace();
		} finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		for(Notice n:notiList) {
			System.out.println(n.toString());
		}
	}
}
