<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> %>
<%
	request.setCharacterEncoding("utl-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String callId=""; //""공백으로 초기화를 안하고 그냥 callId;로 하면 맨아래 if절에서 오류가난다
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
							pstmt.setString(1, id);//이게 String id의 id이다
							pstmt.setString(2, pw);//이것은 String pw의 pw
														//테이블컬럼명 id,pw가 아니니 착각하지말것
							rs=pstmt.executeQuery(); //String sql ?부분에 pstmt setString으로 대입한 값을 실행 그러므로 위 구문과 순서가 바뀌면 안된다
							
							//	if문을 안에넣고 실행할때
								if(rs.next()){ 
									session.setAttribute("id", rs.getString("id")); 
									session.setAttribute("pw", rs.getString("pw"));
									response.sendRedirect("../index.jsp");
								} else {
									session.invalidate();
									response.sendRedirect("login.jsp");
								}
							
								/*
								if문을 바깥으로 빼서 실행할때
								if(rs.next()){
									callId=rs.getString("id"); //여기서 id는 컬럼에 있던 id를 갖고오는것
									callPw=rs.getString("pw");//여기서 pw는 컬럼에 있던 id를 갖고오는것
		
								}
								*/
						

						}catch(Exception e){
							
						}
					
				}catch(Exception e){
					
				}
		}catch(Exception e){
			
		}
	/*
		if(callId.equals("admin")){ //위에서 select조회가 안되면 값을 못불러오므로 
			session.setAttribute("id", callId); //session(로그인 되어있는동안) setAttribute("id",callId) id의 속성을 callId로 한다 라는뜻임
													//여기서 "id" 는 login페이지에서 넘어온 변수인 name="id"의 "id"를 뜻하는것
													//테스트해보고싶으면 다른페이지에 <%= id %.>  를 쓰면(>앞에 .은빼야함 주석처리안돼서 저렇게씀)
													//해당 "id"변수에 부여된 값이 페이지에 나오는걸 볼수있음
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
	*/
%>