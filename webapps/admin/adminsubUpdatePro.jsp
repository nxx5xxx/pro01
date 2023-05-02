<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	int bbno =	Integer.parseInt(request.getParameter("bno")) ;
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	int sw = 0;
	String sql = "update board set title=?,content=? where bno=?";
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setInt(3, bbno);
					pstmt.setString(1, request.getParameter("title") );
					pstmt.setString(2, request.getParameter("content") );
					System.out.println(request.getParameter("title"));
					System.out.println(request.getParameter("content"));
					sw=pstmt.executeUpdate();
					System.out.println(bbno);
					if(sw>0){
						System.out.println("수정 완료");
						response.sendRedirect("adminsubDetail.jsp?bno="+bbno);
					}else{
						System.out.println("수정 실패");
						response.sendRedirect("adminsubDetail.jsp");
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