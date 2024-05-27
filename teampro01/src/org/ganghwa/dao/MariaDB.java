package org.ganghwa.dao;

import java.sql.*;

public class MariaDB implements SqlLang {
	final static String DRIVER = "org.mariadb.jdbc.Driver";
	final static String URL = "jdbc:mariadb://localhost:3308/team72";
	final static String USERID = "team72";
	final static String USERPW = "gh1234";
	final static String INSERT_NOTICE = "insert into notice values(default, ?, ?, default, 0)";
	final static String LATEST_NOTICE = "select * from notice order by no desc limit 5";
	final static String LATEST_QNA = "select * from qna order by parno desc, plevel asc limit 5";
	final static String INSERT_QUESTION = "insert into qna values(default,'1',null,?,?,default,0,?)";
	final static String INS_ANSWER = "insert into qna values(default,'2',?,?,?,default,0,?)";
	//public static final String UPDATE_QUESTION_BYPARNO = "update qna set parno=no where no=(select * from qna order by no desc limit 1)";
	final static String UPDATE_QUESTION_BYPARNO = "update qna as outer_qna join(select no from qna order by no desc limit 1)"
			+ "as sub_query set outer_qna.parno=sub_query.no where outer_qna.no=sub_query.no";
	final static String INS_TRAFFIC = "insert into traffic values (?,?,?,?,?,?);";
	Connection con = null;
	
	@Override
	public Connection connect() {
		try {
			Class.forName(DRIVER);
			try {
				con = DriverManager.getConnection(URL, USERID, USERPW);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	@Override
	public void close(Connection con, PreparedStatement pstmt) {
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
	
	@Override
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
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
}
