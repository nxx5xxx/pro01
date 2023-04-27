<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
		String path1 = request.getContextPath();   
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	String sql = "select * from member where id=?";
	String mid = (String)session.getAttribute("id");
	String mpw ="";
	String mname ="";
	String mtel ="";
	String maddr ="";
	String memail ="";
	String mregdate ="";
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, mid);
					rs=pstmt.executeQuery();
					if(rs.next()){
						
					mpw = rs.getString("pw");
					mname = rs.getString("name");
					mtel = rs.getString("tel");
					maddr =	rs.getString("addr");
					memail = rs.getString("email");
					mregdate =	rs.getString("regdate");
					}
						System.out.println("여기까진됨");
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
<html>
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
    <link rel="shortcut icon" href=".\img\teruwaico.png">
    <!-- 오픈그래프 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 떼루아와인아울렛">
    <meta name="og:description" content="떼루아 와인아울렛은 와인을 저렴하게 구매할수 있습니다">
    <meta name="og:url" content="https://nxx5xxx.github.io/web1">
    <meta name="og:image" content=".\img\sum1">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">  
    <link rel="stylesheet" href="<%=path1 %>/common.css">
    <link rel="stylesheet" href="<%=path1 %>/subcommon.css" >
<style>
table {border: 1px solid black;}
th {border: 1px solid black; width: 200px ;height : 60px}
td {text-align:center; border: 1px solid black; width: 400px ;height : 60px}
</style>

</head>
<body>
<!-- 헤더영역 -->
<%@ include file="../header.jsp" %>
<!-- 헤더영역끝 -->
	    <div class="content" style="min-height:500px">
            <figure class="vs">
                <div class="img_box">
                    마이페이지
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit"></h2>
                <div class="page_wrap"></div>
                <div>
                <table style="margin:0 auto">
                <tr>
                <th>아이디</th>
                <td><%=mid %></td>
                </tr>
                <tr>
                <th>비밀번호</th>
                <td><%=mpw %></td>
                </tr>
                <tr>
                <th>이름</th>
                <td><%=mname %></td>
                </tr>
                <tr>
                <th>전화번호</th>
                <td><%=mtel %></td>
                </tr>
                <tr>
                <th>주소</th>
                <td><%=maddr %></td>
                </tr>
                <tr>
                <th>이메일</th>
                <td><%=memail %></td>
                </tr>
                <tr>
                <th>등록일</th>
                <td><%=mregdate %></td>
                </tr>
                <tr>
                <th colspan="2"><a href="<%=path_hd%>/login/update.jsp" >회원정보 수정</a></th>
                </tr>
                </table>
                </div>
                
            </section>
        </div>
<!-- 푸터영역 -->
<%@ include file="../footer.jsp" %>
<!-- 푸터영역 끝 -->
</body>
</html>
