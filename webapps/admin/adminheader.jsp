<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path_hd = request.getContextPath();
%>
<header class="hd">
            <nav class="tnb">
                <div class="tnb_wrap">
                    <ul class="right_tnb">
                        <li><a href="<%=path_hd%>/search.jsp" class="sns1" >A23</a></li>
						<li><a href="<%=path_hd%>/admin/adminpage.jsp" style="color:black;display:inline" >관리자모드</a></li>
						<li><a href="<%=path_hd%>/login/logout.jsp" style="color:black;display:inline" >나가기</a></li>
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
                                <a href="<%=path_hd%>/index.jsp">홈으로</a>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/admin/adminUsers.jsp">회원관리</a>
                            </li>
                            <li>
                                <a href="<%=path_hd%>/sub3.jsp">게시판 관리</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>