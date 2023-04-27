<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String callId=""; 
	String callPw="";
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "select * from member where id=? and pw=?";
		try{
			Class.forName(driver);
				try{
					conn=DriverManager.getConnection(url,user,pass);
						try{
							pstmt=conn.prepareStatement(sql);
							pstmt.setString(1, id);
							pstmt.setString(2, pw);
							rs = pstmt.executeQuery();
							if(rs.next()){
								callId=rs.getString("id"); 
								callPw=rs.getString("pw");
	
							}


						}catch(Exception e){
							System.out.println("SQL전송 실패");
						}
					
				}catch(Exception e){
					System.out.println("DB연결 실패");
				}
		}catch(Exception e){
			System.out.println("드라이버 로딩 실패");
		}
		System.out.println(callId);
		if(callId.equals("admin")){ 
			session.setAttribute("id", callId); 
			session.setAttribute("pw", callPw);
			response.sendRedirect("../index.jsp");
		} else if(id.equals(callId) && pw.equals(callPw)){
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			response.sendRedirect("../index.jsp");
		} else {
			session.invalidate();
			response.sendRedirect("login.jsp");
		}

%>

