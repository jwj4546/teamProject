package org.ganghwa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.ganghwa.dto.Qna;
import org.ganghwa.dto.Traffic;
import org.ganghwa.dto.TrafficVO;

public class TrafficDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Traffic> getTrafficList(){
		List<Traffic> tList = new ArrayList<>();
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_TRAFFIC);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Traffic t = new Traffic(rs.getInt("tno"),
						rs.getString("ttype"),
						rs.getString("no"),
						rs.getString("route"),
						rs.getString("coment"),
						rs.getString("uri"));
				tList.add(t);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return tList;
	}
	
	public Traffic getTraffic(String no){
		Traffic traffic = new Traffic();
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_TRAFFIC_BYNO);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				traffic.setTno(rs.getInt("tno"));
				traffic.setTtype(rs.getString("ttype"));
				traffic.setNo(rs.getString("no"));
				traffic.setRoute(rs.getString("route"));
				traffic.setComent(rs.getString("coment"));
				traffic.setUri(rs.getString("uri"));
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return traffic;
	}
	
	public List<TrafficVO> getTab(){
		List<TrafficVO> voList = new ArrayList<>();
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_TRAFFIC);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TrafficVO t = new TrafficVO(rs.getInt("tno"),
						rs.getString("ttype"),
						rs.getString("no"));
				voList.add(t);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt, rs);
		}
		return voList;
	}
	
	public int insTraffic(Traffic t) {
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(MariaDB.INS_TRAFFIC);
			pstmt.setString(1, t.getTtype());
			pstmt.setString(2, t.getNo());
			pstmt.setString(3, t.getRoute());
			pstmt.setString(4, t.getComent());
			pstmt.setString(5, t.getUri());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editProTraffic(Traffic t) {
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_TRAFFIC);
			pstmt.setString(1, t.getRoute());
			pstmt.setString(2, t.getComent());
			pstmt.setInt(3, t.getTno());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delTraffic(int tno){
		int cnt = 0;
		MariaDB mariadb = new MariaDB();
		try {
			con = mariadb.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_TRAFFIC);
			pstmt.setInt(1, tno);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mariadb.close(con, pstmt);
		}
		return cnt;
	}
}