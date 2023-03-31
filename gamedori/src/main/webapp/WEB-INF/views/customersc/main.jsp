<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/head.jsp" %>


<main>

	<div class="customer">
		<div id="customer_header">
			<h2>고객센터</h2>
			<ul class="nav nav-tabs">
				<li class="nav-item"><a style="color: black;"
					class="nav-link active" href="<c:url value='/customersc/main.do'/>"> 공지사항</a></li>
				<li class="nav-item"><a style="color: black;" class="nav-link"
					href="<c:url value='/customersc/main.do'/>"> 1:1문의하기</a></li>
				<li class="nav-item"><a style="color: black;" class="nav-link"
					href="<c:url value='/customersc/main.do'/>"> Q&A</a></li>
		</div>
		<div class="customer_main">
			<table class="table table-hover"
				style="width: 70%; border-top: 1px solid black;">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="<c:url value='/customersc/view.do' />">첫번째 공지사항입니다</a></td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
					<tr>
						<td>1</td>
						<td>첫번째 공지사항입니다</td>
						<td>관리자</td>
						<td>1억회</td>
						<td>2023.03.15</td>
					</tr>
				</tbody>
			</table>
			<form id="customer_search">
				<input class="form-control" style="width: 300px;" type="text"
					aria-label="default input example">
				<button type="button" class="btn btn-dark">검색</button>
			</form>
		</div>


	</div>
	<!---------customer 끝-------------------------------------------------------------->


</main>



<%@ include file="../include/foot.jsp" %>