<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	String sql = "select a.id as id ,a.name as name, a.tel as tel ,a.addr as addr ,b.title as title ,b.content as content  from member a , board b where a.id=b.id";
	int id = 0;
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
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
	<nav>
	<a href="index.jsp">메인페이지</a>
	<a href="postGREinsert.jsp">추가</a>
	</nav>
	<table style="border: 2px solid black ">
	<tr>
	<th>아이디</th><th>이름</th><th>전화번호</th><th>주소</th><th>제목</th><th>내용</th>
	</tr>
<%
	while(rs.next()){
%>

	<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("tel") %></td>
		<td><%=rs.getString("addr") %></td>
		<td><%=rs.getString("title") %></td>
		<td><%=rs.getString("content") %></td>
	</tr>

<%
	}
%>

	</table>

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