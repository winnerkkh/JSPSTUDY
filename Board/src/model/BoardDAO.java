package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

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
	private BoardDAO() {}

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

	//하나의 새로운 게시글이 넘어와서 저장되는 메소드
	public void insertBoard(BoardBean boardBean) {
		
		getCon(); //데이터베이스 접속
		
		//빈클래스에 넘어오지 않았던 데이터들을 초기화 해주어야 한다.
		
		int ref = 0; //글 그룹을 의미 = 쿼리를 실행시켜 가장큰 ref값을 가져온후 +1을 더해주면됨
		int re_step = 1; //들여쓰기를 의미,
		int re_level = 1; //최신으로 올라온글을 상위에 노출시기는 기능
		
		
		try {
			//가장큰 ref값을 읽어오는 쿼리 준비
			String refsql = "select max(ref) from board";
			
			//쿼리 실행객체
			pstmt = con.prepareStatement(refsql);
			
			//쿼리 실행후 결과를 리턴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //결과가 있다면
				ref = rs.getInt(1)+1; //최대값에 +1을 더해서 글그룹을 설정
			}
			
			//실제로 게시글 전체값을 테이블에 저장
			//board_seq.NEXTVAL 시퀀스에 있는 값에 다음값을 자동으로 리턴해줌
			String sql="insert into board values(board_seq.NEXTVAL, ?,?,?,?, sysdate, ?,?,?,0,?)";
			pstmt = con.prepareStatement(sql);
			
			//?에 값을 맵핑
			
			pstmt.setString(1, boardBean.getWriter());
			pstmt.setString(2, boardBean.getEmail());
			pstmt.setString(3, boardBean.getSubject());
			pstmt.setString(4, boardBean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, boardBean.getContent());
			
			
			//쿼리를 실행하시오
			pstmt.executeQuery();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
			
		}finally {
			
			//자원반납
		try {
			if(rs !=null ) rs.close();
			if(pstmt !=null) pstmt.close();
			if(con !=null) con.close();

		} catch (Exception e2) {
			System.out.println(e2.getMessage());
		  }
	}
		
	}
	
	
	public Vector<BoardBean> getAllBoard() {
		
		//리턴할 객체 선언
		Vector<BoardBean> v = new Vector<>();
		getCon();
		
		try {
			
			//쿼리준비
			String sql = "select * from board order by ref desc, re_step asc, re_level asc";
			
			//쿼리를 실행할 객체 선언
			pstmt = con.prepareStatement(sql);
			
			//쿼리 실행후 결과 저장
			rs = pstmt.executeQuery();
			
			//데이터 개수가 몇개인지 모르기에 반복문을 이용하여 테이터를 추출
			
			while(rs.next()) {
				//데이터를 패키징(가방 = BoardBean클래스) 해줌
				BoardBean bean = new BoardBean();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getString(6).toString());	
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContent(rs.getString(11));
				
				//패키징한 데이터를 벡터에 저장
				v.add(bean);
			}
	
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			
			//자원반납
		try {
			if(rs !=null ) rs.close();
			if(pstmt !=null) pstmt.close();
			if(con !=null) con.close();

		} catch (Exception e2) {
			System.out.println(e2.getMessage());
		  }
	}
		
		
		return v;
	}
}
