<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost/pro1";
		String user="postgres";
		String pass = "1234";
		Connection conn;
		PreparedStatement pstmt;
		String sql="insert into member values(?,?,?,?,?,?,default)";
		int sw=0;
		try{
			Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url,user,pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, request.getParameter("id") );
					pstmt.setString(2, request.getParameter("pw"));
					pstmt.setString(3, request.getParameter("name"));
					pstmt.setString(4, request.getParameter("tel"));
					pstmt.setString(5, request.getParameter("addr"));
					pstmt.setString(6, request.getParameter("email"));
					sw=pstmt.executeUpdate();
					if(sw>0){
						System.out.println("정보등록 완료");
						response.sendRedirect("login.jsp");
					}else{
						System.out.println("정보등록 실패");
						response.sendRedirect("실패.jsp");
					}

				}catch(Exception e){
					System.out.println("SQL 전송 실패");
				}	
			}catch(Exception e){
				System.out.println("DB 연결 실패");
			}	
		}catch(Exception e){
			System.out.println("드라이버 로딩 실패");
		}


%>