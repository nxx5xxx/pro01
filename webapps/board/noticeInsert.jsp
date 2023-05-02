<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String path1 = request.getContextPath();
	String nid= request.getParameter("id");					
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
table {margin : 0 auto ;border: 2px solid black ; border-collapse : collapse; width: 1100px}
th {background-color:rgba(150, 150, 150) ; color:white}
th,td{ border: 1px solid black }
input {width:100%}
.content_box {height: 300px ; width:100% ;overflow-wrap: break-word;resize:none}
a:link,a:visited {color : white;}
.page_tit{padding-top:50px}
    </style>
</head>
<body>
    <div class="container">
    <!--헤더영역  -->
    <%@ include file="../header.jsp" %>
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
                
                <form action="noticeInsertPro.jsp?id=<%=nid%>" method="post">
						<table>
							<tr>
								<th colspan="4"><input type="text" name="title"  placeholder="제목"></th>
							</tr>
							<tr>
								<th>등록자 명</th><td colspan="3"><%=nid%></td>
							</tr>
							<tr class="content_sub1">
								<th colspan="4"><textarea rows="12" cols="10" class="content_box" name="content"  placeholder="내용을 입력하세요"></textarea></th>
							</tr>

							<tr>
							<th colspan="2"><a href="sub2.jsp">목록으로</a></th><th colspan="2"><input type="submit" value="글쓰기" ></th>
							</tr>
						</table>
				</form>
						                
                
                </div>
            </section>
        </div>
	 <!--푸터영역  -->
    <%@ include file="../footer.jsp" %>
    <!--/푸터영역 -->
	</div>
 
</body>
</html>