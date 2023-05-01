<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String path1 = request.getContextPath();
	String nid= request.getParameter("id");
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	String sql = "insert into board values(default,?,?,?,default)";
	int sw=0;
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, nid );
					pstmt.setString(2, request.getParameter("title") );
					pstmt.setString(3, request.getParameter("content") );
					sw=pstmt.executeUpdate();
					if(sw>0){
						System.out.println("공지사항 등록 완료");
						response.sendRedirect("sub2.jsp");
					}else{
						System.out.println("공지사항 등록 실패");
						response.sendRedirect("noticeInsert.jsp");
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