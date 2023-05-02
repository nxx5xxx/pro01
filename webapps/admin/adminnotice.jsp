<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String sub2id = "";
	if(session.getAttribute("id")!=null) {
		sub2id = (String) session.getAttribute("id");
	}
	if(!sub2id.equals("admin")){
		response.sendRedirect("../index.jsp");
	}
	String path1 = request.getContextPath();
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	String sql = "select b.bno as bno ,a.name as name ,b.title as title ,b.regdate as regdate,a.id as id  from member a , board b where a.id=b.id";
	//int id = 0;
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					rs=pstmt.executeQuery();

					
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 떼루아 와인아울렛</title>
    <!-- Seo -->
    <meta name="subject" content="떼루아 와인아울렛 벤치마킹 사이트">
    <meta name="keywords" content="떼루아, 떼루아와인아울렛, 와인아울렛, 떼루아 와인아울렛,와인,술,맛집">
    <meta name="description" content="떼루아 와인아울렛은 와인을 저렴하게 구매할수 있습니다">
    <meta name="author" content="nxx5xxx">
    <link rel="shortcut icon" href="<%=path1%>/img/teruwaico.png">
    <!-- 오픈그래프 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 떼루아와인아울렛">
    <meta name="og:description" content="떼루아 와인아울렛은 와인을 저렴하게 구매할수 있습니다">
    <meta name="og:url" content="https://nxx5xxx.github.io/web1">
    <meta name="og:image" content="<%=path1%>/img/teruwaico.png">


    <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">  
    <link rel="stylesheet" href="<%=path1 %>/common.css">
    <link rel="stylesheet" href="<%=path1 %>/subcommon.css">

    <style>
table {margin : 0 auto ;border: 2px solid black ; border-collapse : collapse;}
th {background-color:black ; color:white}
th,td{ border: 1px solid black }
.nt_write {text-align : center}
    </style>
</head>
<body>
    <div class="container">
		<!--헤더영역  -->
    	<%@ include file="adminheader.jsp" %>
		<!--헤더영역  -->
		<div class="content">
            <figure class="vs">
                <div class="img_box">
                    공지사항
                </div>
            </figure>
            <section class="page" id="page1">
                <h1 class="page_tit"></h1>
                <div class="page_wrap">
                
						<table>
							<tr>
							<th>글번호</th><th>이름</th><th>제목</th><th>작성일</th>
							</tr>
						<%
							while(rs.next()){
						%>
						
							<tr>
								<td><%=rs.getString("bno") %></td>
								<td><%=rs.getString("name") %></td>
								<%
								if(sub2id!=""){
								%>
								<td><a href="adminsubDetail.jsp?bno=<%=rs.getString("bno") %>"><%=rs.getString("title") %></a></td>
								<%
								}else{
								%>
								<td><%=rs.getString("title") %></td>
								<%
								}
								%>
								<td><%=rs.getString("regdate") %></td>
							</tr>
						
						<%
							}
						%>

						</table>
						<%
						if(sub2id!=""){
						%>
						<div class="nt_write">
						<input type="button"  onclick="location.href='noticeInsert.jsp?id=<%=sub2id%>'" value="글쓰기">
						</div>
						<%}%>
						                
                
                </div>
            </section>
        </div>
	</div>
 
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