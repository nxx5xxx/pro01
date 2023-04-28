<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
		String id = "";
		if(session.getAttribute("id")!=null) {
			id = (String) session.getAttribute("id");
		}
		if(!id.equals("admin")){
			response.sendRedirect("../index.jsp");
		}
	String path1 = request.getContextPath();
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql="select * from member";
		
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
<title>전체 회원 목록 관리</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 떼루아 와인아울렛</title>
    <!-- Seo -->
    <meta name="subject" content="떼루아 와인아울렛 벤치마킹 사이트">
    <meta name="keywords" content="떼루아, 떼루아와인아울렛, 와인아울렛, 떼루아 와인아울렛,와인,술,맛집">
    <meta name="description" content="떼루아 와인아울렛은 와인을 저렴하게 구매할수 있습니다">
    <meta name="author" content="nxx5xxx">
    <link rel="shortcut icon" href=".\img\teruwaico.png">
    <!-- 오픈그래프 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 떼루아와인아울렛">
    <meta name="og:description" content="떼루아 와인아울렛은 와인을 저렴하게 구매할수 있습니다">
    <meta name="og:url" content="https://nxx5xxx.github.io/web1">
    <meta name="og:image" content=".\img\sum1">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">  
    <link rel="stylesheet" href="<%=path1%>/common.css">
    <link rel="stylesheet" href="<%=path1%>/main.css" > 
<style>
table {border-collapse : collapse; border:2px solid black}
th {background-color:black ; color : white ;}
td {border:1px solid black; }
.id {width :150px}
.pw{width : 150px}
.addr {width:250px}

</style>

</head>
<body>
		<!--헤더영역  -->
    	<%@ include file="adminheader.jsp" %>
		<!--헤더영역  -->
<a href="<%=path1%>/index.jsp">홈으로</a>
<table>
			<tr>
			<th class="id">아이디</th><th class="pw">비밀번호</th><th class="name">이름</th><th class="tel">전화번호</th>
			<th class="addr">주소</th><th class="email">이메일</th><th class="regdate">등록일</th> 
			</tr>
<%
					while(rs.next()){
%>
			<tr>
					<td class="id"><%=rs.getString("id")%></td>
					<td class="pw"><%=rs.getString("pw")%></td>
					<td class="name"><%=rs.getString("name")%></td>
					<td class="tel"><%=rs.getString("tel")%></td>
					<td class="addr"><%=rs.getString("addr")%></td>
					<td class="email"><%=rs.getString("email")%></td>
					<td class="regdate"><%=rs.getString("regdate")%></td>						
			</tr>
<%
					}		
%>

</table>
</body>
</html>

<%
				}catch(Exception e){
					System.out.println("SQL 전송 실패"+e);
				}
			}catch(Exception e){
				System.out.println("DB연결 실패"+e);
			}
		}catch(Exception e){
			System.out.println("드라이버 로딩 실패"+e);
		}
%>