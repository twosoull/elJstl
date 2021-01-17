<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.UserVo" %>
<h1>세션값 사용</h1>

<h2>자바</h2>

<%
	UserVo authUser= (UserVo)session.getAttribute("authUser");
%>
		<div id="header">
			<h1><a href="/mysite02/main">MySite</a></h1>
			
			<!-- 로그인 안했을때 -->
			<%if(authUser==null){ %>
			<ul>
				<li><a href="/mysite02/user?action=loginForm">로그인</a></li>
				<li><a href="/mysite02/user?action=joinForm">회원가입</a></li>
			</ul>
			<%} else { %>
			<!-- 로그인했을때 -->
		
			<ul>
				<li><%=authUser.getName() %>님 안녕하세요^^</li>
				<li><a href="/mysite02/user?action=logout">로그아웃</a></li>
				<li><a href="/mysite02/user?action=modifyForm">회원정보수정</a></li>
			</ul>
			<%} %>
		</div>
		<!-- //header -->
<h2>el</h2>
			<div id="header">
			<h1><a href="/mysite02/main">MySite</a></h1>
			
			<!-- 로그인 안했을때 -->
		<%if(authUser==null){ %>
			<ul>
				<li><a href="/mysite02/user?action=loginForm">로그인</a></li>
				<li><a href="/mysite02/user?action=joinForm">회원가입</a></li>
			</ul>
			
			<!-- 로그인했을때 -->
		<%} else { %>
			<ul>
				<li>${sessionScope.authUser.name}님 안녕하세요^^</li>
				<li>${authUser.name}님 안녕하세요^^</li>
				<!-- 생략해도 세션값이 그대로 나온다 -->
				<li><a href="/mysite02/user?action=logout">로그아웃</a></li>
				<li><a href="/mysite02/user?action=modifyForm">회원정보수정</a></li>
			</ul>
			<%} %>
		</div>
		<!-- //header -->
    