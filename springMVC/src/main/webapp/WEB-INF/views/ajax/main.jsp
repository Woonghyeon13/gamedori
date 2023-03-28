<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="<%=request.getContextPath()%>/js/jquery-3.6.3.min.js"></script>
		<script>
			function fn1()
			{
				$.ajax({
					url : "ex01.do",
					type : "get",
					success : function(data){
						$("#result").html(data);
					},
					error : function(){
						alert("예외발생!");
					}
				});
			}

			function fn2()
			{
				$.ajax({
					url : "ex02.do",
					type : "get",
					data : {data1:1},
					success : function(data){
						$("#result").html(data);
					},
					error : function(){
						alert("예외발생!");
					}
				});
			}

			function fn3()
			{
				$.ajax({
					url : "ex03.do",
					success : function(data){
						console.log(data);
						//var jsonData = JSON.parse(data);
						//console.log(jsonData);
					}
				});
			}
			
		</script>
	</head>
	<body>
		<h2>Ajax 샘플 페이지</h2>
		<button onclick="fn1()">1</button>
		<button onclick="fn2()">2</button>
		<button onclick="fn3()">3</button>
		<hr><!-- 검색 버튼 클릭시 입력한 bno와 일치하는 게시글 정보를 ajax로 조회하여 아래 div에 출력
				출력정보 : bno, btitle, bnote, bkind, bwdate -->
		<input type="number" name="bno" id="bno">
		<button onclick="findBoard()">검색</button>
		<div id="result"></div>
		<script>
			function findBoard(){
				var bno = $("#bno").val();
				$.ajax({
					url : "findBoard.do",
					type : "get",
					data : {bno : bno},
					success : function(data){
						var html = "";
						html += "<table>";
						html += "<tr>";
						html += "<th>제목</th>";
						html += "<td>"+data.btitle+"</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<th>종류</th>";
						html += "<td>"+data.bkind+"</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<th>작성일</th>";
						html += "<td>"+data.bwdate+"</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<th>번호</th>";
						html += "<td>"+data.bno+"</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<th>내용</th>";
						html += "<td>"+data.bnote+"</td>";
						html += "</tr>";
						html += "</table>";
						
						$("#result").html(html);
					}
				});
			}
		</script>
	</body>
</html>