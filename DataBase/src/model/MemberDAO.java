package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//오라클 데이터 베이스에 연결하고 select, insert, update, delete작업을 실행해주는 클래스
public class MemberDAO {

	// 오라클 접속하는 소스를 작성
	String id = "kh"; // 접속 아이디
	String pass = "kh";
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 접속 url

	Connection con; // 데이터베이스에 접근할수 있도록 설정해주는 객체 선언
	PreparedStatement pstmt; // 데이터베이스에서 쿼리를 실행시켜주는 객체 선언
	ResultSet rs; // 데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체

	// 데이터 베이스에 접근할수 있도록 도와주는 메소드
	public void getCon() {

		try {
			// 1단계. 해당 데이터 베이스를 사용한다고 선언(클래스를 등록 = 오라클용을 사용)
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2단계. 해당 데이터 베이스에 접속
			con = DriverManager.getConnection(url, id, pass);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	//데이터 베이스에 한사람의 회원 정보를 저장해주는 메소드
	public void insertMember(MemberBean mbean) {
		
		try{
			
			getCon();//1단계와 2단계는 모든 메소드들에 중복으로 들어가기에 메소드로 만든후 적으면 자동 오라클 접속 저장
			
			//3단계. 쿼리준비(바인딩 변수 사용)
			String sql="insert into member values(?,?,?,?,?,?,?,?)";
			
			//쿼리를 사용하도록 설정
			PreparedStatement pstmt = con.prepareStatement(sql); //jsp에서 쿼리를 사용하도록 설정
			
			//?에 맞게 데이터를 맵핑
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			
			//4단계. 오라클에서 쿼리를 실행하시오
			pstmt.executeUpdate();// insert, update, delete시 사용하는 메소드
			
			
			//5단계. 자원 반납
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	}
}