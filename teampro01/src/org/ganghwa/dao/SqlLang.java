package org.ganghwa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface SqlLang {
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String UPDATE_NOTICE = "update notice set title=?, content=? where no=?";
	String UPDATE_NOTICE_VISITED = "update notice set visited=visited+1 where no=?";
	String DELETE_NOTICE = "delete from notice where no=?";
	
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_MEMBER_BYID = "select * from member where id=?";
	String INSERT_MEMBER = "insert into member values(?,?,?,?,?,?,?,?)";
	String UPDATE_MEMBER = "update member set pw=?, name=?, birth=?, email=?, tel=?, addr=?, postcode=? where id=?";
	String DELETE_MEMBER = "delete from member where id=?";
	
	String SELECT_ALL_QNA = "select * from qna order by parno desc, plevel asc";
	String SELECT_QNA_BYNO = "select * from qna where no=?";
	String UPDATE_QNA = "update qna set title=?, content=? where no=?";
	String UPDATE_QNA_VISITED = "update qna set visited=visited+1 where no=?";
	String DELETE_QUESTION = "delete from qna where parno=?";
	String DELETE_ANSWER = "delete from qna where no=?";
	
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
}
