package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	
	
	Connection con; // 데이터베이스에 접근할수 있도록 설정해주는 객체 선언
	PreparedStatement pstmt; // 데이터베이스에서 쿼리를 실행시켜주는 객체 선언
	ResultSet rs; // 데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체

	// 오라클 데이터 베이스에 연결하고 select, insert, update, delete작업을 실행해주는 클래스
	private static BoardDAO instance;

	//
	private BoardDAO() {
	}

	// getInstance public
	public static BoardDAO getInstance() {
		if (instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}

	// 데이터 베이스의 커넥션풀을 사용하도록 설정하는 메소드
	public void getCon() {
		try {
			
			Context initctx = new InitialContext();
			Context envctx =(Context) initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			
			con = ds.getConnection();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
