<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 떼루아 와인아울렛</title>
    <meta name="subject" content="떼루아 와인아울렛 벤치마킹 사이트">
    <meta name="keywords" content="떼루아, 떼루아와인아울렛, 와인아울렛, 떼루아 와인아울렛,와인,술,맛집">
    <meta name="description" content="떼루아 와인아울렛은 와인을 저렴하게 구매할수 있습니다">
    <meta name="author" content="nxx5xxx">
    <link rel="shortcut icon" href=".\img\teruwaico.png">
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
    <link rel="stylesheet" href="subcommon.css">
    <link rel="stylesheet" href="sublayout.css">

    <style>
    #page1 .grid3 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page1 .grid3 .grid_tit { font-size:28px; font-weight:200; color:#750466; padding-top:50px;  }
    #page1 .grid3 .grid_tit:after { content:""; display:block; clear:both; width:80px;
    height:5px; background-color:#750466; margin:30px auto; }
    #page1 .grid3 .grid_com { padding-top: 14px; }



    #page2 { background-image: url("./img/bg5.jpg"); background-position:center center;
    background-size:100% auto; background-attachment: fixed; }
    #page2 .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }

    </style>
</head>
<body>
    <div class="container">
    <!-- 헤더영역 -->
        <%@ include file="header.jsp" %>
    <!-- /헤더영역 -->
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    아울렛 소개
                </div>
            </figure> 
            <section class="page" id="page1">
                <h2 class="page_tit" >CEO MESSAGE</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        안녕하세요. 떼루아 와인아울렛 입니다.<br>
                        20여년간 주류수입업을 해온 경험으로 소비자들께 좀 더 품위있고,
                        저렴한 가격으로 와인을 접하 실 수 있는 장소를 마련하였습니다.
                        20여개국의 3500여종의 와인을 편안하게 방문하시어 시음도 해보시고 정직한 가격으로
                        만나보시기 바랍니다. 또 떼루아 와인 아울렛은 공기좋고 경치 좋으며 야외에
                        놀러오신 기분을 느끼실 수 있는곳에 위치하고 있습니다.
                        영업시간은 오전 10시 30분부터 오후 9시 까지이오니 꼭 한번 방문하시어
                        새로운 경험을 해 보시기 바랍니다.  감사합니다 &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        떼루아 와인아울렛 대표 설준영</p>
                    <section class="grid3">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">CUSTOMER SERVICE</h3>
                                    <p class="grid_com">031-986-0777<br>
                                        평일 : 오전 10:30 ~ 오후 08:30 <br>주말·공휴일 : 오전 10:30 ~ 오후 08:00</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">BANK ACCOUNT</h3>
                                    <p class="grid_com">예금주 : 떼루아 와인아울렛</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">RETURN</h3>
                                    <p class="grid_com">반품주소<br>
                                        경기도 김포시 고촌읍 은행영사정로 87</p>
                                </div>
                            </li>
                        </ul>
                    </section>    
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit" style="color: white;border-bottom: 5px solid white;width: 400px;
                 margin: 0 auto; line-height: 90px;
                 text-shadow: 1px 1px 3px rgb(0, 0, 0),1px -1px 3px black,-1px 1px 3px black,-1px -1px 3px black ; padding-top: 50px;">
                 아울렛 찾아오시는 길</h2>
                <div class="page_wrap">
                    <p class="page_comment" style="text-align: center;border-bottom: 5px solid white;
                     margin: 0 auto; width: 600px; 
                     text-shadow: 1px 1px 3px rgb(0, 0, 0),1px -1px 3px black,-1px 1px 3px black,-1px -1px 3px black ;">
                        ADDRESS : 경기도 김포시 고촌읍 은행영사정로 87 <br>
                        TEL : 031-986-0777<br>
                        FAX : 031-986-0991<br> 
                        E-mail : terroirwine@naver.com</p>
                </div>
<!-- 카카오지도 -->
                <div id="map" style="width: 600px; margin: 0 auto; margin-top: 80px;border: 5px solid#fff;">
                    <div id="r_map">
                <div id="daumRoughmapContainer1599727716461" class="root_daum_roughmap root_daum_roughmap_landing" style="width: 100%;"></div>
                <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp" : "1599727716461",
                        "key" : "2zyk8",
                        "mapHeight" : "450"
                        }).render();
                </script>
                    </div>
                </div>

            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">아울렛 매장 구경하기</h2>
                <div class="page_wrap"></div>
            </section>
        </div>
        

    <!-- 헤더영역 -->
        <%@ include file="footer.jsp" %>
    <!-- /헤더영역 -->
    </div>
    <div class="fix_area">
        <a href="sub6.html" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box toptop">↑<br>TOP</a>
    </div>

</body>
</html>