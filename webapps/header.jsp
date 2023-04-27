<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
	}
	String path_hd = request.getContextPath();
%>
<header class="hd">
            <nav class="tnb">
                <div class="tnb_wrap">
                    <ul class="right_tnb">
                        <li><a href="<%=path_hd%>/search.jsp" class="sns1" >A23</a></li>
                        			<%
										if(id.equals("admin") && id != "") {
									%>
						<li><a href="<%=path_hd%>/login/admin.jsp" style="color:black;display:inline" >관리자모드</a></li>
						<li><a href="<%=path_hd%>/login/logout.jsp" style="color:black;display:inline" >나가기</a></li>
									<%
										}
									%>
									<% if(id != "" && !(id.equals("admin"))) { %>
						<li><a href="<%=path_hd%>/login/mypage.jsp" class="sns2">로그아웃</a></li>
									<% } else if(!(id.equals("admin"))){ %> <!-- 로그아웃상태면 null이나 공백이 아닌 변수자체가 존재하지 않는상황임 -->
                        <li><a href="<%=path_hd%>/login/login.jsp" class="sns2">A2</a></li>
									<% } %>

                        <li><a href="<%=path_hd%>/cart.jsp" class="sns3">A3</a></li>
                    </ul>
                </div>
            </nav>
            <div class="main">
                <div class="main_wrap">
                    <a href="<%=path_hd%>/index.jsp" class="logo">
                        <img src="<%=path_hd %>/img/logo_img.png" alt="떼루아 와인아울렛">
                    </a>
                    <nav class="gnb">
                        <ul class="gnb_fr">
                            <li>
                                <a href="sub1.jsp">아울렛 소개</a>
                                <div class="sub">
                                    <ul class="dp1">
                                        <li><a href="<%=path_hd%>/sub1.jsp#page1" >와인아울렛 소개</a></li>
                                        <li><a href="<%=path_hd%>/sub1.jsp#page2" >아울렛 매장 구경하기</a></li>
                                        <li><a href="<%=path_hd%>/sub1.jsp#page3">아울렛 찾아오시는 길</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/sub2.jsp">공지사항</a>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/sub3.jsp">한정수량 초특가</a>
                                    <div class="sub">
                                        <ul class="dp2">
                                            <li><a href="<%=path_hd%>/sub3.jsp#page1">진행중인 초특가</a></li>
                                            <li><a href="<%=path_hd%>/sub3.jsp#page2">지난 와인 다시보기</a></li>
                                        </ul>
                                    </div>
                            </li>
                            <li>
                                <a href="sub4.jsp">이달의 특가</a>
                                    <div class="sub">
                                        <ul class="dp3">
                                            <li><a href="<%=path_hd%>/sub4.jsp#page1">진행중인 특가</a></li>
                                            <li><a href="<%=path_hd%>/sub4.jsp#page2">지난 와인 다시보기</a></li>
                                        </ul>
                                    </div>
                            </li>
                            <li>
                                <a href="sub5.jsp">이달의 와인</a>
                                    <div class="sub">
                                        <ul class="dp4">
                                            <li><a href="<%=path_hd%>/sub5.jsp#page1">이달의 와인</a></li>
                                            <li><a href="<%=path_hd%>/sub5.jsp#page2">지난 와인 다시보기</a></li>
                                        </ul>
                                    </div>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/sub6.jsp">고객지원</a>
                            </li>
                        </ul>
                    </nav>
                    <label for="sitemap_ck" class="sitemap_btn">사이트맵</label>
                </div>
            </div>
            <input type="checkbox" id="sitemap_ck">
            <div class="sitemap">
                <div class="sitemap_fr">
                    <label for="sitemap_ck" class="close_btn">닫기</label>
                    <div id="realtedSites">
                        <ul class="selectul">
                            <li class="group">떼루아 와인아울렛
                                <ul>
                                   <li><a href="<%=path_hd%>/sub1.jsp#page1" >와인아울렛 소개</a></li>
                                    <li><a href="<%=path_hd%>/sub1.jsp#page2" >아울렛 매장 구경하기</a></li>
                                    <li><a href="<%=path_hd%>/sub1.jsp#page3" >아울렛 찾아오시는 길</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/sub2.jsp" class="group_b">공지사항</a>
                            </li>
                            <li class="group">한정수량 초특가
                                <ul>
                                    <li><a href="<%=path_hd%>/sub3.jsp#page1" >진행중인 초특가</a></li>
                                    <li><a href="<%=path_hd%>/sub3.jsp#page2" >지난 와인 다시보기</a></li>
                                </ul>
                            </li>
                            <li class="group">이달의 특가
                                <ul>
                                    <li><a href="<%=path_hd%>/sub4.jsp#page1" >진행중인 특가</a></li>
                                    <li><a href="<%=path_hd%>/sub4.jsp#page2" >지난 와인 다시보기</a></li>
                                </ul>
                            </li>
                            <li class="group">이달의 와인
                                <ul>
                                    <li><a href="<%=path_hd%>/sub5.jsp#page1" >이달의 와인</a></li>
                                    <li><a href="<%=path_hd%>/sub5.jsp#page2" >지난 와인 다시보기</a></li>
                                    
                                </ul>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/sub6.jsp" class="group_b">고객지원</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>