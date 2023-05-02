<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	String sql = "select * from cars order by id";
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
	<table>
	<tr>
	<th>순번</th><th>제조사</th><th>모델</th><th>연식</th><th>쌕상</th>
	</tr>
<%
	while(rs.next()){
		id = rs.getInt("id");
%>
	<tr>
		<td><a href="postGREUpdate.jsp?id=<%=id%>"><%=id%></a></td>
		<td><%=rs.getString("maker") %></td>
		<td><%=rs.getString("model") %></td>
		<td><%=rs.getString("year") %></td>
		<td><%=rs.getString("color") %></td>
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