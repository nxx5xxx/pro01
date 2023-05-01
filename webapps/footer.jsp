<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String path_ft = request.getContextPath();
%>
        <footer class="ft">
            <!-- article[class="row row1"]>div.ft_wrap>((nav[class="fnb left"]>ul.fnb_box>li*4>a[href=""])+select[name="fav"][id="favo"][class="favo right"][onchange="favo(this)"]>option[value=""]*5) -->
            <article class="row row1">
                <div class="ft_wrap">
                    <nav class="fnb left">
                        <ul class="fnb_box">
                            <li><a href="">ABOUT COMPANY</a></li>
                            <li><a href="">서비스이용약관</a></li>
                            <li><a href="">개인정보처리방침</a></li>
                            <li><a href="">공지사항</a></li>
                        </ul>
                    </nav>
                    <select name="fav" id="favo" class="favo right" onchange="favo(this)">
                        <option value="">Related Sites</option>
                        <option value="https://www.instagram.com/Terroir_Wineoutlet/">Instagram</option>
                        <option value="https://www.facebook.com/TerroirWineDC">Facebook</option>
                        <option value="https://naver.me/xw6928e0">네이버지도</option>
                        <option value="https://goo.gl/maps/3MMHhBkeHUSfoBhu9">구글지도</option>
                    </select>
                    <script>
                        function favo(x){
                            var hs = x.value;
                            if(hs!=""){
                                window.open(hs,"팝업");
                            }
                        }
                    </script>
                </div>
            </article>
            <!-- article[class="row row2"]>div.ft_wrap>((div[class="slogan left"]{1234})+(nav[class="ft_link_fr right"]>dl[class="ft_link item$"]*6>(dt+dd*3>a[href=""]))) -->
            <article class="row row2">
                <div class="ft_wrap">
                    <div class="slogan left">CEO MESSAGE<br>
                        Hello, We're Terroir Familly<br>
                        I don't know who you are<br>
                        But, <br>
                        Good Luck.</div>
                    <nav class="ft_link_fr right">
                        <dl class="ft_link item1">
                            <dt>아울렛 소개</dt>
                            <dd><a href="<%=path_ft%>/sub1.jsp#page1">와인아울렛 소개</a></dd>
                            <dd><a href="<%=path_ft%>/sub1.jsp#page2">아울렛 찾아오시는 길</a></dd>
                            <dd><a href="<%=path_ft%>/sub1.jsp#page3">아울렛 매장 구경하기 </a></dd>
                        </dl>
                        <dl class="ft_link item2">
                            <dt><a href="<%=path_ft%>/board/sub2.jsp">공지사항</a></dt>
                        </dl>
                        <dl class="ft_link item3">
                            <dt>한정수량 초특가</dt>
                            <dd><a href="<%=path_ft%>/sub3.jsp#page1">진행중인 초특가</a></dd>
                            <dd><a href="<%=path_ft%>/sub3.jsp#page2">지난 와인 다시보기</a></dd>
                        </dl>
                        <dl class="ft_link item4">
                            <dt>이달의 특가</dt>
                            <dd><a href="<%=path_ft%>/sub4.jsp#page1">진행중인 초특가</a></dd>
                            <dd><a href="<%=path_ft%>/sub4.jsp#page2">지난 와인 다시보기</a></dd>
                        </dl>
                        <dl class="ft_link item5">
                            <dt>이달의 와인</dt>
                            <dd><a href="<%=path_ft%>/sub5.jsp#page1">이달의 와인</a></dd>
                            <dd><a href="<%=path_ft%>/sub5.jsp#page2">지난 와인 다시보기</a></dd>
                        </dl>
                        <dl class="ft_link item6">
                            <dt><a href="<%=path_ft%>/sub6.jsp">고객지원</a></dt>
                        </dl>
                    </nav>
                </div>
            </article>
            <article class="row row3">
                <div class="ft_wrap">
                    <div class="ft_logo left"></div>
                    <address class="copyright right">회사명. 떼루아 와인아울렛 주소. 경기도 김포시 고촌읍 은행영사정로 87 사업자 등록번호. 137-86-36779 대표. 설준영 개인정보 보호책임자. 설준영<br>
                        전화. 031-986-0777 팩스. 031-986-0991 통신판매업신고번호 제 OO구 - 123호 부가통신사업신고번호 12345호<br>
                        Copyright © 2020 떼루아 와인아울렛. All Rights Reserved.</address>
                </div>
            </article>
        </footer>
    
    <div class="fix_area">
        <a href="<%=path_ft%>/sub6.jsp" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box toptop">↑<br>TOP</a>
    </div>