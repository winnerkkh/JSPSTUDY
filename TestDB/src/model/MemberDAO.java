package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


//오라클 데이터 베이스에 연결하고 select, insert, update, delete작업을 실행해주는 클래스
public class MemberDAO {
	private static MemberDAO instance;
	private MemberDAO() {}
	
		//getInstance public
		public static MemberDAO getInstance() {
			if(instance==null) {
				instance = new MemberDAO();
			}
			return instance;
		}

	
	
	
/*
	// 오라클 접속하는 소스를 작성
	String id = "kh"; // 접속 아이디
	String pass = "kh";
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 접속 url

*/	
	Connection con; // 데이터베이스에 접근할수 있도록 설정해주는 객체 선언
	PreparedStatement pstmt; // 데이터베이스에서 쿼리를 실행시켜주는 객체 선언
	ResultSet rs; // 데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체
	
	
	
	
	// 데이터 베이스에 접근할수 있도록 도와주는 메소드
	public void getCon() {
		
	//커넥션품을 이용하여 데이터 베이스에 접근
		
		try {
			//외부에서 데이터를 읽어드려야하기에
			Context initctx = new InitialContext();
			DataSource ds = (DataSource)initctx.lookup("java:comp/env/jdbc/pool");
			
			//톰캣 서버에 정보를 담아놓을곳으로 이동
		    // Context envctx =(Context) initctx.lookup("java:comp/env");
			//DataSource ds = (DataSource) initctx.lookup("java:comp/env/jdbc/pool");
			//데이타 소스 객체 선언
			//DataSource ds = (DataSource)envctx.lookup("jdbc/pool");
			
			
			//데이타 소스를 기준으로 커넥션을 연결
			con = ds.getConnection();
			if(con!=null)
			System.out.println("연결성공");
			else
			System.out.println("연결실패");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
/*
		try {
			// 1단계. 해당 데이터 베이스를 사용한다고 선언(클래스를 등록 = 오라클용을 사용)
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2단계. 해당 데이터 베이스에 접속
			con = DriverManager.getConnection(url, id, pass);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}		
*/	
	}

	
}
