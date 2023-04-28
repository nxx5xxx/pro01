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
    <link rel="stylesheet" href="<%=path1 %>/main.css" >
<style>
</style>

</head>
<body>
<!-- 헤더영역 -->
<%@ include file="../header.jsp" %>
<!-- 헤더영역끝 -->
	    <div class="content" style="min-height:500px">
            <figure class="vs">
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit"></h2>
                <div class="page_wrap"></div>

			<form name="login_form" action="joinpro.jsp" method="post" onsubmit="return form_check(this)">
				<table class="table" id="tb1" style="margin: 0 auto">
				               <caption class="title" style="font-weight:bold ; font-size:24px">회원가입 폼</caption>
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td><input type="text" name="id" id="id" class="indata" pattern="[A-Za-z0-9]{3,15}"  autofocus>
							<input type="hidden" name="id_ck" id="id_ck" value="no">
							<input type="button" value="아이디 중복확인" onclick="idCheck()">
							<div id="msg"></div></td>
						</tr>
						<tr>
							<th><label for="pw">비밀번호</label></th>
							<td><input type="password" name="pw" id="pw" pattern="[A-Za-z0-9$!@#%^&*()]{3,50}"></td>
						</tr>
						<tr>
							<th><label for="pw">비밀번호 확인</label></th>
							<td><input type="password" name="pw2" id="pw2" pattern="[A-Za-z0-9$!@#%^&*()]{3,50}"></td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td><input type="text" name="name" id="name" pattern="[A-Za-z가-힣]{2,20}"></td>
						</tr>
						<tr>
							<th><label for="addr">주소</label></th>
							<td><input type="text" name="addr" id="addr" maxlength="150"></td>
						</tr>
						<tr>
							<th><label for="email">이메일</label></th>
							<td><input type="text" name="email" id="email" pattern="[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]"></td>
						</tr>						
						<tr>
							<td colspan="2">
								<input type="submit" value="회원가입" > &nbsp; &nbsp; &nbsp; &nbsp;
								<input type="reset" value="취소" >
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<script>
			function idCheck(){
				var id= document.getElementById("id");
				if(id.value!=""){
					window.open("idCheck.jsp?id="+id.value,"아이디 중복 검사","width=400, height=300");
				}else {
					alert("아이디를 입력해주세요");
					id.focus();
				}
			}
			
			function form_check(x){
				if(x.pw.value!=x.pw.value){
					alert("비밀번호 불일치");
					return false;//false로 리턴하지않으면 submit을 해버린다
				}
				if(x.id_ck.value!="yes"){
					alert("아이디를 다시 확인해주세요")
					return false;
					
				}
				
			}
			</script>
            </section>
        </div>
<!-- 푸터영역 -->
<%@ include file="../footer.jsp" %>
<!-- 푸터영역 끝 -->
</body>
</html>