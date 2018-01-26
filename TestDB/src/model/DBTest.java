package model;

public class DBTest {
public static void main(String[] args) {
	MemberDAO dao = MemberDAO.getInstance();
	dao.getCon();
}
}
