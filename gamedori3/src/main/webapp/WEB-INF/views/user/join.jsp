<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- 부트스트랩 -->
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
	
			<!-- 스타일 시트 연결 -->
			<link href="<%=request.getContextPath()%>/resources/css/reset.css" rel="stylesheet">
			<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
		
			 <!--자바스크립트-->
			<script src="<%=request.getContextPath()%>/resources/js/script.js"></script>
			
			<!-- 부트스트랩 -->
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
			
			<!-- 폰트 -->
			<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@900&display=swap" rel="stylesheet">
			<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
		
			<!--jquery-->
			<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
		
		
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
		
		
		
		function checkPhone()
		{
	 		
	 		var contextPath = '<%=request.getContextPath()%>';
	 		const phone = $('#MEMBER_PHONE').val() ; // 이메일 주소값 얻어오기!
			console.log('휴대폰 번호 : ' + phone); // 이메일 오는지 확인
			const checkInput = $('.phone-check-input') // 인증번호 입력하는곳 
			
			$.ajax({
				type : 'get',
				url : contextPath+"/util/phoneCheck.do", // GET방식이라 Url 뒤에 email을 뭍힐수있다.
				success : function (data) {
					console.log("data : " +  data);
					checkInput.attr('disabled',false);
					code =data;
					alert('인증번호가 전송되었습니다.')
				}			
			}); // end ajax
			
	 		
		}
		
		
		$('.phone-check-input').blur(function () {
			const inputCode = $(this).val();
			const $resultMsg = $('#phone-check-warn');
			
			if(inputCode === code){
				$resultMsg.html('인증번호가 일치합니다.');
				$resultMsg.css('color','green');
				$('#phone-Check-Btn').attr('disabled',true);
				$('#MEMBER_PHONE').attr('readonly',true);
				
			}else{
				$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
				$resultMsg.css('color','red');
			}
		});
	 	
	 
			
	</script>
	
	
	</head>
	<body>
<header class="pt-4 pb-3 border-bottom border-2 mb-5">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="../home.do" id="logo" class="d-flex align-items-center mb-2 mb-lg-0 text-decoration-none">
					GAMEDORI
				</a>
				
				<div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
				</div>
		
				<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 text-end" role="search">
					<input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
				</form>
		
				<div class="text-end">
					<ul class="d-flex flex-row mb-0 ps-0">
						<li><button type="button" class="btn btn-outline-light login me-2" data-bs-toggle="modal" data-bs-target="#login">로그인</button></li>
						<li> <button type="button" onclick="location.href='join.do'" class="btn btn-outline-dark ">회원가입</button></li>
						<li><a href="#" class="nav-link me-2 mt-1 text-muted" title="장바구니"><i class="xi-cart-o xi-2x"></i></a></li>
						<li><a href="#" class="nav-link mt-1 text-muted" title="찜 목록"><i class="xi-heart-o xi-2x jjim"></i></a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="d-flex justify-content-center py-3">
				<ul class="nav nav-pills">
					<li class="nav-item"><a href="#" class="nav-link" style="color: black;">새로운상품</a></li>
					<li class="nav-item"><a href="#" class="nav-link" style="color: black;">예약판매</a></li>
					<li class="nav-item dropdown"><a href="#" class="nav-link" style="color: black;">닌텐도 Switch</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" type="button">하드웨어</a></li>
							<li><a class="dropdown-item mt-1" type="button">타이틀</a></li>
							<li><a class="dropdown-item mt-1" type="button">주변기기</a></li>
							<li><a class="dropdown-item mt-1" type="button">아미보</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown"><a href="#" class="nav-link" style="color: black;">PlayStation 5</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" type="button">하드웨어</a></li>
							<li><a class="dropdown-item mt-1" type="button">타이틀</a></li>
							<li><a class="dropdown-item mt-1" type="button">주변기기</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown"><a href="#" class="nav-link" style="color: black;">PlayStation 4</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" type="button">하드웨어</a></li>
							<li><a class="dropdown-item mt-1" type="button">타이틀</a></li>
							<li><a class="dropdown-item mt-1" type="button">주변기기</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown"><a href="#" class="nav-link" style="color: black;">XBOX Series</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" type="button">하드웨어</a></li>
							<li><a class="dropdown-item mt-1" type="button">타이틀</a></li>
							<li><a class="dropdown-item mt-1" type="button">주변기기</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown"><a href="#" class="nav-link" style="color: black;">GOODS</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" type="button">피규어</a></li>
						</ul>
					</li>
					<li class="nav-item"><a href="#" class="nav-link" style="color: black;">고객지원</a></li>
				</ul>
			</div>
		</div>

		<!--모달 로그인--------------------------------------------------------------------------------------->
		<div class="modal" tabindex="-1" id="login">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="d-flex justify-content-end mt-3 me-3">
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="">
						<p class="text-center" id="logo">GAMEDORI</p>
					</div>
					<div class="modal-body">
						<form>
							<table>
								<tr>
									<td style="width: 500px;">
										<h5 style="margin-left: 200px; margin-top: 20px; font-weight: bold;">로그인</h5>
									</td>
								</tr>
								<tr>
									<td>
										<div class="mb-3">
											<input style="margin-top: 20px;"type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력하세요">
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요">
									</td>
								</tr>
								<tr>
									<td>
										<button class="btn btn-outline-light login" style="width: 460px; margin-top: 30px; font-weight: bold; font-size: 20px;">로그인</button>
									</td>
								</tr>
								<tr>
									<td>
										<p style="text-align: center; margin-top: 20px; font-size: 18px; cursor:pointer;" data-bs-toggle="modal" data-bs-target="#findPW">비밀번호를 잊어버리셨나요?</p>
									</td>
								</tr>
								<tr>
									<td>
										<p style="text-align: center; font-size: 18px;"><a href="join.do">계정이 없으신가요? 회원가입</a></p>
									</td>
								</tr>
							</table>
						</form>
					</div>
				  </div>
			</div>
		</div>

		<!--모달 비밀번호 찾기 ------------------------------------------------------------------------------------->
		<div class="modal" tabindex="-1" id="findPW">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="d-flex justify-content-end mt-3 me-3">
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="">
						<p class="text-center" id="logo">GAMEDORI</p>
					</div>
					<div class="modal-body">
						<form>
							<table>
								<tr>
									<td style="width: 500px;">
										<h5 style="margin-left: 170px; margin-top: 20px; font-weight: bold;">비밀번호 찾기</h5>
									</td>
								</tr>
								<tr>
									<td>
										<p style="text-align: center;">가입했던 이메일을 적어주세요. <br>입력하신 이메일 주소로 비밀번호 변경 메일을 보내드릴게요.</p>
									</td>
								</tr>
								<tr>	
									<td >
										<div class="mb-3">
											<input style="margin-top: 20px;"type="email" class="form-control" id="email" placeholder="이메일을 입력하세요">
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<button class="btn btn-outline-light login" style="width: 460px; margin-top: 15px; font-weight: bold; font-size: 20px;">이메일 보내기</button>
									</td>
								</tr>
								<tr>
									<td>
										<p style="text-align: center; margin-top: 20px; font-size: 18px; cursor:pointer;" data-bs-toggle="modal" data-bs-target="#login">로그인하러 가기</p>
									</td>		
								</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
		
			</header>  


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
								<button type="button" onclick="checkEamil()" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
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

					 <div class="mb-4">
							<label for="MEMBER_PHONE" class="form-label fw-bold fs-6">휴대전화</label>
								<div class="input-group mb-3">
								<input type="text" class="form-control" name="MEMBER_PHONE" id="MEMBER_PHONE" placeholder="휴대폰" >
							
								<button onclick="checkPhone()" class="btn btn-outline-secondary"  type="button" id="phone1">휴대폰 본인인증</button>
								<div class="invalid-feedback">
									휴대 번호를 입력해주세요.
								</div>
							</div>
							
							<div class="mail-check-box">
								<input class="form-control phone-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
								</div>
								<span id="phone-check-warn"></span>
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