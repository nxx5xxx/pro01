<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="main.css" > 
    <link rel="stylesheet" href="subcommon.css">

    <style>
	.page_wrap {text-align:center}
    </style>
</head>
<body>
    <div class="container">
        <!-- 헤더영역 -->
		<%@include file="header.jsp" %>
		<!-- 헤더영역 -->
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    고객지원
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">고객센터 031-986-0777</h2>
                <div class="page_wrap"><hr><h3>평일 : 오전 10:30 ~ 오후 08:30 | 주말·공휴일 : 오전 10:30 ~ 오후 08:00</h3><hr></div>
            </section>
            <!-- <section class="page" id="page2">
                <h2 class="page_tit"></h2>
                <div class="page_wrap"></div>
            </section> -->
        </div>
        

		<!-- 푸터영역 -->
		<%@include file="footer.jsp" %>
		<!-- 푸터영역 -->
    </div>
    <div class="fix_area">
        <a href="sub6.html" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box toptop">↑<br>TOP</a>
    </div>

</body>
</html>