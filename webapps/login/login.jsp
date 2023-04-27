<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String path1 = request.getContextPath();    
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
    <link rel="stylesheet" href="<%=path1 %>/main.css" >
        <link rel="stylesheet" href="<%=path1 %>/subcommon.css" >
<style>
</style>

</head>
<body>
<!-- 헤더영역 -->
<%@ include file="../header.jsp" %>
<!-- 헤더영역끝 -->
	    <div class="content" style="min-height:500px">
            <figure class="vs">
                <div class="img_box">
                    로그인 페이지
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit"></h2>
                <div class="page_wrap"></div>
                <h2 class="title" style="text-align:center">로그인 폼</h2>
			<form name="login_form" action="loginpro.jsp" method="post">
				<table class="table" id="tb1" >
					<tbody style="text-align:center">
						<tr >
							<th><label for="id">아이디</label></th>
							<td><input type="text" name="id" id="id" required autofocus></td>
						</tr>
						<tr>
							<th><label for="pw">비밀번호</label></th>
							<td><input type="password" name="pw" id="pw" required></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="로그인" > &nbsp; &nbsp; &nbsp; &nbsp;
								<input type="reset" value="취소" >
								<input type="button" value="회원가입" onclick="location.href='agreement.jsp'">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
            </section>
        </div>
<!-- 푸터영역 -->
<%@ include file="../footer.jsp" %>
<!-- 푸터영역 끝 -->
</body>
</html>