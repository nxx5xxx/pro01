<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	int bbno =	Integer.parseInt(request.getParameter("bno")) ;
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	int sw = 0;
	String sql = "delete from board where bno=?";
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setInt(1, bbno);
					sw=pstmt.executeUpdate();
					if(sw>0){
						System.out.println("삭제 완료");
						response.sendRedirect("sub2.jsp");
					}else{
						System.out.println("삭제 실패");
						response.sendRedirect("subDetail.jsp");
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