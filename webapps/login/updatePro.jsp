<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
		String path1 = request.getContextPath();   
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	String sql = "update member set pw=?,name=?,tel=?,addr=?,email=? where id=?";
	String mid = (String)session.getAttribute("id");
	String mpw = 		request.getParameter("mpw");             
	String mname = 	request.getParameter("mname");         
	String mtel = 		request.getParameter("mtel");           
	String maddr =		request.getParameter("maddr");         
	String memail = 	request.getParameter("memail");       
	String mregdate =	request.getParameter("mregdate");  
	
	int sw=0;
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(6, mid);
					pstmt.setString(1, mpw);
					pstmt.setString(2, mname);
					pstmt.setString(3, mtel);
					pstmt.setString(4, maddr);
					pstmt.setString(5, memail);
					System.out.println(mid);
					System.out.println(mpw);
					System.out.println(mtel);
					sw=pstmt.executeUpdate();
					if(sw>0){
						System.out.println("여기까지됨123");
						response.sendRedirect("mypage.jsp");
					}else{
						System.out.println("여기까지됨1234");
						response.sendRedirect("update.jsp");
					}
					
					


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
