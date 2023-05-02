<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String path1 = request.getContextPath();
	String sub2delId="";
	if(session.getAttribute("id")!=null) {
		sub2delId = (String) session.getAttribute("id");
	}
	if(!sub2delId.equals("admin")){
		response.sendRedirect("../index.jsp");
	}
	int bbno =	Integer.parseInt(request.getParameter("bno")) ;
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user="postgres";
	String pass = "1234";
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	String sql = "select b.bno as bno ,a.name as name ,b.title as title ,b.regdate as regdate,b.content as content,a.id as id  from member a , board b where a.id=b.id and b.bno=?";
	//int id = 0;
		try{
		Class.forName(driver);
			try{
				conn=DriverManager.getConnection(url, user, pass);
				try{
					pstmt=conn.prepareStatement(sql);
					pstmt.setInt(1, bbno );
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
table {margin : 0 auto ;border: 2px solid black ;border-collapse : collapse; width: 1100px}
th {background-color:black ; color:white}
th,td{ border: 1px solid black }
.bg_white{background-color:white ; color:black;}
a:link,a:visited {color : white;}
.page_tit {padding-top:50px}
    </style>
</head>
<body>
    <div class="container">
    <!--헤더영역  -->
    <%@ include file="adminheader.jsp" %>
    <!--/헤더영역 -->
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
						<%
							if(rs.next()){
						%>
							<tr>
								<th colspan="4" class="bg_white"><%=rs.getString("title") %></th>
							</tr>
							<tr>
								<th>등록자 명</th><td><%=rs.getString("name") %></td><th>등록일</th><td><%=rs.getString("regdate") %></td>
							</tr>
							<tr>
								<th>글 번호</th><td colspan="3"><%=rs.getString("bno") %></td>
							</tr>
							<tr class="content_sub1">
								<th colspan="4" class="bg_white" style="overflow-y:scroll;height:500px;text-align:left;vertical-align:top"><%=rs.getString("content") %></th>
							</tr>
						
						<%
							}
						%>
							<tr>
							<%if(sub2delId.equals(rs.getString("id"))||sub2delId.equals("admin")){ %>
							<th colspan="2"><a href="adminsub2.jsp">목록으로</a></th><th colspan="2"><a href="adminsubUpdate.jsp?bno=<%=bbno%>">수정하기</a></th>
							<%}else{ %>
							<td colspan="4"><a href="adminsub2.jsp">목록으로</a></td>
							<%} %>
							</tr>
						</table>
						                
                
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