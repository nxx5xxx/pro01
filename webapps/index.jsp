<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String path = request.getContextPath();    
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
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="main.css" > 
    <style>
    
    </style>
</head>
<body>
<!--    <h1>떼루아 와인아울렛</h1>
    <a href="https://nxx5xxx.github.io">메인 - https://nxx5xxx.github.io</a>  -->

    <div class="container">
		<!--헤더영역  -->
    	<%@ include file="header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <video src="./movie/main.mp4" muted autoplay loop></video>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title" style="display: none;">EVENT</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">TERROIR</h3>
                        <h2 class="main_title">EVENT</h2>
                    </div>
                    <article class="pg1_btn_box">
                        <input type="radio" name="pg_ra" id="pg1_ra1" class="pg1_ra" checked>
                        <label for="pg1_ra1" class="item1">이달의 와인</label>
                        <input type="radio" name="pg_ra" id="pg1_ra2" class="pg1_ra">
                        <label for="pg1_ra2" class="item2">이달의 특가</label>
                        <input type="radio" name="pg_ra" id="pg1_ra3" class="pg1_ra">
                        <label for="pg1_ra3" class="item3">타임 세일</label>
                        <div class="ban_fr">
                            <ul class="ban_box">
                                <li class="item1">
                                    <img src="./img/btimg1.png" alt="이달의와인" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">01</h2>
                                        <h2 class="ban_tit2">떼루아 와인아울렛</h2>
                                        <p class="ban_com">Good Wine Mall<br>
                                            Reasonable Price

                                        </p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <img src="./img/btimg2.png" alt="이달의특가" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">02</h2>
                                        <h2 class="ban_tit2">업계 최저가 보장</h2>
                                        <p class="ban_com">매달 새로운 와인을 특가로!<br><br></p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <img src="./img/btimg3.png" alt="타임세일" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">03</h2>
                                        <h2 class="ban_tit2">금요일의 마법!</h2>
                                        <p class="ban_com">돌아오는 주말이 즐거워지는 이곳!!<br>
                                                            떼루아 와인아울렛!
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>


                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_title" style="visibility: hidden">About</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">ABOUT</h3>
                        <h2 class="main_title">TERROIR</h2>
                    </div>
                    <article class="grid_fr">
                        <ul class="grid_box">
                            <li>
                                <a href="" class="item1">
                                    <h3 class="grid_tit"></h3>
                                    <p class="grid_com"></p>
                                </a>
                                <a href="" class="item2">
                                    <h3 class="grid_tit">야간 운영</h3>
                                    <p class="grid_com">늦은 시간까지도 와인을</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item3">
                                    <h3 class="grid_tit">다양한 종류</h3>
                                    <p class="grid_com">국내에서 가장 많은 와인보유중</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item4">
                                    <h3 class="grid_tit"></h3>
                                    <p class="grid_com"></p>
                                </a>
                                <a href="" class="item5">
                                    <h3 class="grid_tit">한정 판매</h3>
                                    <p class="grid_com">각 국의 한정판매 와인 구비</p>
                                </a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_title" style="visibility: hidden">AP</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title" style="color:#f5f5f179">APOW</h3>
                        <h2 class="main_title" style="color: #e7e5de;">Average Price Of Wine</h2>
                    </div>
                    <!-- article.col_fr>ul.col_box>li.left>((p.one_line>span.dot{1234}+span.gtxt{05500})+div.inv_p>(p.large_txt+(p.small_txt>span.ltxt+span.btxt))) -->
                    <article class="col_fr">
                        <ul class="col_box">
                            <li class="left">
                                <p class="one_line"><span class="dot">Dom Perignon Vintage</span><span class="gtxt">오늘의 와인</span></p>
                                <div class="inv_p">
                                    <p class="large_txt">282,450원</p>
                                    <p class="small_txt">
                                        <span class="ltxt">2023/04/18 10:38:54</span>
                                        <span class="btxt">-24,400&nbsp;-8.67%</span>
                                    </p>
                                </div>
                                <!-- dl.col_dl>(dd>h4.d_tit+p.d_com)*6 -->
                                <dl class="col_dl">
                                    <dd>
                                        <h4 class="d_tit">시가</h4>
                                        <p class="d_com">282,450원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">고가</h4>
                                        <p class="d_com">365,550원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">저가</h4>
                                        <p class="d_com">282,450원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">전일가격</h4>
                                        <p class="d_com">310,000원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">재고수량</h4>
                                        <p class="d_com">13병</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">판매량</h4>
                                        <p class="d_com">87병</p>
                                    </dd>
                                </dl>
                            </li>
                            <!-- li.right>a[href=""].item$*3>span> -->
                            <li class="right">
                                <a href="" class="item1"><span>다른와인</span></a>
                                <a href="" class="item2"><span>재고현황</span></a>
                                <a href="" class="item3"><span>입고예정</span></a>
                            </li>
                        </ul>
                    </article>
                    


                </div>
                
            </section>
            
            <section class="page" id="page4">
                <h2 class="page_title" style="visibility: hidden;">공지사항</h2>
                <div class="page_wrap">
                    <!-- div.tit_box>(h3.sub_title{TERROIR}+h2.main_title{NOTICE}) -->
                    <div class="tit_box">
                        <h3 class="sub_title">TERROIR</h3>
                        <h2 class="main_title">NOTICE</h2>
                    </div>
                    <a href="" class="more">+</a>
                    <!-- article.board_fr>table.tb1>tbody>tr>(td.td1{5}+(td.td2>a[href=""]>(h3.td_tit+p.td_com))) -->
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">[예정] 떼루아 와인 아울렛 2023년 봄 행사 일정 안내 </h3>
                                            <p class="td_com">다가오는 봄을 준비하는 와인러버들을 위한 3월 봄 세일이 시작됩니다!! 특별 할인가로 진행되는 스페셜 오퍼!! 다양한 인기와인들로 구성된 패키지 품목!!
                                                약 2,000종 이상의 품목을 기존 장터 할인가로!!</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">*2023년 영업시간 변경안내* </h3>
                                            <p class="td_com">[변경 전] 월~금 10:30 ~ 21:00 / 주말 및 공휴일 11:00 ~ 20:30 / [변경 후] 평일(월~금) 10:30 ~ 20:30 / 주말 및 공휴일 10:30 ~ 20:00 /2023년 1월 1일부터 시행됩니다 </p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">2023년 03월 이달의 특가 품절 및 빈티지 변경안내.</h3>
                                            <p class="td_com">
                                                (03월 패키지 03)루이 자도 샤블리'21<품절>
                                                (03월 패키지 03)크리스티앙 모로 샤블리'20<품절>
                                                (03월 패키지 04)윌리암 페브르 샤블리'20 <품절>
                                                (03월 패키지 04)이사벨 & 드니 포미에  샤블리'20 <품절>
                                                
                                                </p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">영업시간 및 운영안내. </h3>
                                            <p class="td_com">** 영업시간은 평일 : 오전 10:30 ~ 오후 08:30 | 주말·공휴일 : 오전 10:30 ~ 오후 08:00 입니다. **



                                                ** 떼루아는 평일, 주말 모두 열려 있습니다 **
                                                
                                                 </p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">5</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">홈페이지 리뉴얼 관련 안내드립니다. </h3>
                                            <p class="td_com">안녕하세요 떼루아 와인 아울렛입니다.
                                                홈페이지 개편과 함께 기존에 가입하신 사이트에서 수집되었던 주민등록번호 등 개인정보를 파기해야하여, 부득이하게 일괄 삭제되었음을 안내드리며
                                                이에 따라 불편하시더라도 새롭게 회원가입을 해주셔야 홈페이지 이용이 가능함을 안내드립니다.                                                                                                 
                                                기존 구매내역이나 적립된 포인트는 그대로 유효하오니 이용에 참고 부탁드립니다.                                            
                                                주문 및 예약은 이전과 마찬가지로 고객지원 게시판을 통해 가능합니다.
                                                사전에 안내 없이 변경되어 불편을 드린 점 양해 부탁드립니다.</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_title" style="visibility: hidden;">페이지제목5</h2>
                <div class="page_wrap">
                </div>
                <!-- article.colm_fr>(h3.lst_tit+(ul.lst1>li.item$*3>(h3.item_tit+a[href=""].item_more)))*2 -->
                <article class="colm_fr">
                    <h3 class="lst_tit">COMMUNITY</h3>
                    <ul class="lst1">
                        <li class="item1">
                            <h3 class="item_tit">1:1상담</h3>
                            <a href="" class="item_more">상담하기</a>
                        </li>
                        <li class="item2">
                            <h3 class="item_tit">자주묻는 질문</h3>
                            <a href="" class="item_more">보러가기</a>
                        </li>
                        <li class="item3">
                            <h3 class="item_tit">개인 결재 창</h3>
                            <a href="" class="item_more">결재현황</a>
                        </li>
                    </ul>
                    <h3 class="lst_tit">CATEGORY</h3>
                    <ul class="lst2">
                        <li class="item1">
                            <h3 class="item_tit">와인아울렛 소개</h3>
                            <a href="" class="item_more">보러가기</a>
                        </li>
                        <li class="item2">
                            <h3 class="item_tit">아울렛매장 구경하기</h3>
                            <a href="" class="item_more">구경하기</a>
                        </li>
                        <li class="item3">
                            <h3 class="item_tit">아울렛 찾아오시는 길</h3>
                            <a href="" class="item_more">보러가기</a>
                        </li>
                    </ul>
                </article>
            </section>
        </div>
    <!-- 푸터영역 -->
    <%@ include file="footer.jsp" %>
	</div>
</body>
</html>