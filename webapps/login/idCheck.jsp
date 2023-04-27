<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost/pro1";
		String user="postgres";
		String pass = "1234";
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		String sql = "select * from member where id=?";
		String passId = "";
		try{
			Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, request.getParameter("id") );
					rs=pstmt.executeQuery();

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>

</head>
<body>
	<input type="hidden" id="ck_id" name="ck_id" value="<%=id%>">
<%
		if(rs.next()){
			passId=rs.getString("id");
%>
		사용불가능한 아이디
		<input type="hidden" id="ps" name="ps" value="no">
		<input type="hidden" id="msg" name="msg" value="사용이 불가능한 아이디">
<%}else{ %>
		사용가능한 아이디
		<input type="hidden" id="ps" name="ps" value="yes">
	<input type="hidden" id="msg" name="msg" value="사용 가능한 아이디">
<%} %>
	<button type="button" onclick="closing()">닫기</button>
<script>
function closing(){
	var ps = document.getElementById("ps").value;
		opener.document.getElementById("id").value = document.getElementById("ck_id").value;
		opener.document.getElementById("id_ck").value = document.getElementById("ps").value;
		opener.document.getElementById("msg").innerText= document.getElementById("msg").value;
		if(ps=="yes"){
			opener.document.getElementById("id").setAttribute("readonly",true); //readonly 속성을 부여한다  
		}
		window.close();
}
</script>
</body>
</html>
<%
						rs.close();
						pstmt.close();
						conn.close();
				}catch(Exception e){
					System.out.println("SQL전송 실패");
				}
			}catch(Exception e){
				System.out.println("DB연결 실패");
			}
		}catch(Exception e){
			System.out.println("드라이버 로딩 실패");
			
		}
 %>