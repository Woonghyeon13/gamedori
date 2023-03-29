<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!--파비콘-->
		<link href="/images/f.png" rel="shortcut icon">

		<!-- 부트스트랩 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

		<!-- 스타일 시트 연결 -->
		<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
	
		<!-- 폰트 -->
		<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@900&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
		
		
		<!--제이쿼리-->
		<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.1.min.js"></script>
	
		
		<script>
	 	function checkID()
		{	
				var contextPath = '<%=request.getContextPath()%>';
				
				$.ajax({
					url:contextPath+"/user/checkID.do",
					type:"get",
					data:{id : $("#userEmail1").val()},
					success:function(data)
					{
						if(data == '0')
						{
							alert("사용할 수 없는 아이디입니다.");	
							$("#userEmail1").val("");
						}
						else if(data == '1')
						{
							alert("사용할 수 있는 아이디입니다.");	
						}
					},
					error:function(){
						alert("에러입니다!");
					}
				});
			}
	 	function checkEamil()
		{
	 		
	 		var contextPath = '<%=request.getContextPath()%>';
	 		const eamil = $('#userEmail1').val() ; // 이메일 주소값 얻어오기!
			console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
			const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
			
			$.ajax({
				type : 'get',
				url : contextPath+"/user/registerEmail.do?member_email="+eamil, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
				success : function (data) {
					console.log("data : " +  data);
					checkInput.attr('disabled',false);
					code =data;
					alert('인증번호가 전송되었습니다.')
				}			
			}); // end ajax
			
	 		
		}
	 // 인증번호 비교 
		// blur -> focus가 벗어나는 경우 발생
		$('.mail-check-input').blur(function () {
			const inputCode = $(this).val();
			const $resultMsg = $('#mail-check-warn');
			
			if(inputCode === code){
				$resultMsg.html('인증번호가 일치합니다.');
				$resultMsg.css('color','green');
				$('#mail-Check-Btn').attr('disabled',true);
				$('#userEamil1').attr('readonly',true);
				
			}else{
				$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
				$resultMsg.css('color','red');
			}
		});
	 	
	 
			
	</script>
	
	
	</head>
	<body>

		<div id="top"></div>
		<header class="p-3">
			<div class="container">
			  <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="../home.do" id="logo" class="d-flex align-items-center mb-2 mb-lg-0 text-decoration-none">
					GAMEDORI
				  <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
				</a>
		
				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
				</ul>
		
				<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
				  <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
				</form>
		
				<div class="text-end">
				  <button type="button" class="btn btn-outline-light login">Login</button>
				  <button type="button" class="btn btn-outline-dark ">Sign-up</button>
				</div>
	
		  </header><!--End:header-->
		  
		  <div class="px-2 py-1">
			<div class="container">
			  <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-decoration-none">
				  <svg class="bi me-2" width="40" height="32" role="img" aria-label="부트스트랩" _mstaria-label="138918" _mstHash="63"><use xlink:href="#bootstrap"></use></svg>
				</a>
	  
				<ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
				  <li class="me-2">
					<button type="button" class="btn btn-primary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"></path>
							<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"></path>
						</svg>
						마이페이지
					  </button>
				  </li>
				  <li class="me-2">
					<button type="button" class="btn btn-primary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
							<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"></path>
						</svg>
						장바구니
					</button>
				  </li>
				  <li>
					<button type="button" class="btn btn-primary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-seam-fill" viewBox="0 0 16 16">
							<path fill-rule="evenodd" d="M15.528 2.973a.75.75 0 0 1 .472.696v8.662a.75.75 0 0 1-.472.696l-7.25 2.9a.75.75 0 0 1-.557 0l-7.25-2.9A.75.75 0 0 1 0 12.331V3.669a.75.75 0 0 1 .471-.696L7.443.184l.01-.003.268-.108a.75.75 0 0 1 .558 0l.269.108.01.003 6.97 2.789ZM10.404 2 4.25 4.461 1.846 3.5 1 3.839v.4l6.5 2.6v7.922l.5.2.5-.2V6.84l6.5-2.6v-.4l-.846-.339L8 5.961 5.596 5l6.154-2.461L10.404 2Z"></path>
						</svg>
						주문배송
					  </button>
				  </li>
				</ul>
			  </div>
			</div>
		  </div>

		<main>
			
			
			<div class="container">
				<div class="d-flex justify-content-center py-3">
					<ul class="nav nav-pills">
						<li class="nav-item"><a href="#" class="nav-link active" aria-current="page">새로운상품</a></li>
						<li class="nav-item"><a href="#" class="nav-link">예약판매</a></li>
						<li class="nav-item"><a href="#" class="nav-link">닌텐도 Switch</a></li>
						<li class="nav-item"><a href="#" class="nav-link">PlayStation 5</a></li>
						<li class="nav-item"><a href="#" class="nav-link">PlayStation 4</a></li>
						<li class="nav-item"><a href="#" class="nav-link">Xbox</a></li>
						<li class="nav-item"><a href="#" class="nav-link">GOODS</a></li>
						<li class="nav-item"><a href="#" class="nav-link">고객지원</a></li>
					</ul>
				</div>
			</div>


		<!--            CUT            -->

			<section id="join_Main" class="d-flex p-2 " >
			<div id="join_box" class="container" >
				<div class="input-form-backgroud row">
				  <div class="input-form col-md-12">

					<h4 class="mb-3">회원가입</h4><hr/>
					<form class="validation-form" novalidate>
					  <div class="row">
				
						<div class="col-md-12 mb-3">
							<label for="MEMBER_EMAIL">*이메일</label>
							<div class="input-group mb-3">
								<input type="text" class="form-control" name="userEmail1" id="userEmail1" placeholder="이메일" >
							
								<button onclick="checkID()" class="btn btn-outline-secondary"  type="button" id="MEMBER_EMAIL">중복체크</button>
								<div class="invalid-feedback">
									이메일을 입력해주세요.
								</div>
							</div>
						
						<div class="input-group-addon">
							<button type="button" onclick="checkEamil()" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
						</div>
						<div class="mail-check-box">
						<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
						</div>
							<span id="mail-check-warn"></span>
						</div>
						</div>

						<hr/>

						<div class="col-md-6 mb-3">
							<label for="MEMBER_NAME">*비밀번호</label>
							<input type="password" class="form-control input_s" id="MEMBER_PW" required>
							<div class="invalid-feedback">
							  비밀번호를 입력해주세요
							</div><br/>
							<label for="MEMBER_NAME" class="mt-3 ">*비밀번호 확인</label>
							<input type="password" class="form-control input_s" id="MEMBER_PWCheck" required>
							<div class="invalid-feedback">
							  비밀번호를 입력해주세요
							</div>
						</div>

						<hr/>

						<div class="col-md-6 mb-3">
							<label for="MEMBER_NAME">*이름</label>
							<input type="text" class="form-control input_s" id="MEMBER_NAME" required>
							<div class="invalid-feedback">
							  이름을 입력해주세요.
							</div>
						</div>

						<hr/>

					  </div>

					  <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label">휴대전화</label>
                        <div class="input-group">
                            <input type="text"  name="phone" id="phone"  class="form-control"aria-label="Recipient's username" aria-describedby="button-addon2" required>
                         
                          </div>
                        
						</div> 


						<!-- 주소검색 api -->
						<label for="ADDR_1">*우편번호</label>
					 	<input type="text" class="form-control col-md-6 input_s" id="ADDR_1" placeholder="우편번호" required>
						 <input type="button" class="btn btn-outline-secondary btn-sm" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
						 <div class="invalid-feedback mb-3">
							우편번호를 입력해주세요
						  </div><br/>
						<label for="ADDR_2" class="mt-3">*주소</label>
						<input type="text" class="form-control col-md-6 input_s" id="ADDR_2" placeholder="주소" required>
						<div class="invalid-feedback mt-3">
							주소를 입력해주세요
						</div>
						<br>
						<input type="text" class="form-control col-md-6 mb-3 input_s" id="ADDR_3" placeholder="상세주소">
						
						
						<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
							function sample6_execDaumPostcode() 
							{
								new daum.Postcode(
									{
									oncomplete: function(data) 
									{
										// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

										// 각 주소의 노출 규칙에 따라 주소를 조합한다.
										// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else { // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
										if(data.userSelectedType === 'R')
										{
											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if(data.bname !== '' && /[동|로|가]$/g.test(data.bname))
											{
												extraAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if(data.buildingName !== '' && data.apartment === 'Y')
											{
												extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
											}
										}

										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document.getElementById('ADDR_1').value = data.zonecode;
										document.getElementById("ADDR_2").value = addr;
										// 커서를 상세주소 필드로 이동한다.
										document.getElementById("ADDR_3").focus();
									}
								}).open();
							}
						</script>
						
					
			
					<br/>
					  <button class="btn btn-primary btn-block mt-4" type="submit">가입 완료</button>
					  <div class="mb-4"></div>

				</form>
				  </div>
				</div>
			</div>
		


			  <script>
				window.addEventListener('load', () => {
				  const forms = document.getElementsByClassName('validation-form');
			
				  Array.prototype.filter.call(forms, (form) => {
					form.addEventListener('submit', function (event) {
					  if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					  }
			
					  form.classList.add('was-validated');
					}, false);
				  });
				}, false);
			  </script>



			</section>

	
		



		</main>


		<!--            CUT            -->
		<footer></footer>

		<!-- 부트스트랩 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
		<!-- 페이드인-->
		<script> 
			$(window).on('scroll', function() {
			$('.fade-in').each(function() {
				const scrollPos = $(this).offset().top;
				const windowHeight = $(window).height();
				const scrollTop = $(window).scrollTop();

				if (scrollPos < scrollTop + windowHeight * 0.8) {
				$(this).css('opacity', 1);
				}
			});
			});

			$(window).on('scroll', function() {
			$('.fade-in1').each(function() {
				const scrollPos = $(this).offset().top;
				const windowHeight = $(window).height();
				const scrollTop = $(window).scrollTop();

				if (scrollPos < scrollTop + windowHeight * 0.8) {
				$(this).css('opacity', 1);
				}
			});
			});

			$(window).on('scroll', function() {
			$('.fade-in2').each(function() {
				const scrollPos = $(this).offset().top;
				const windowHeight = $(window).height();
				const scrollTop = $(window).scrollTop();

				if (scrollPos < scrollTop + windowHeight * 3.2) {
				$(this).css('opacity', 1);
				}
			});
			});

			$(window).on('scroll', function() {
			$('.fade-in3').each(function() {
				const scrollPos = $(this).offset().top;
				const windowHeight = $(window).height();
				const scrollTop = $(window).scrollTop();

				if (scrollPos < scrollTop + windowHeight * 4.4) {
				$(this).css('opacity', 1);
				}
			});
			});

			$(window).on('scroll', function() {
			$('.fade-in4').each(function() {
				const scrollPos = $(this).offset().top;
				const windowHeight = $(window).height();
				const scrollTop = $(window).scrollTop();

				if (scrollPos < scrollTop + windowHeight * 8.6) {
				$(this).css('opacity', 1);
				}
			});
			});
		</script>
	


	</body>
</html>

	</body>
</html>