<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="ko">
	<head>
			<title>겜도리</title>
	
			<!--파비콘-->
			<link href="<%=request.getContextPath()%>/resources/images/f.png" rel="shortcut icon">
	
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
		
			<!--xeicon-->
			<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

			
	
		</head>
		
<body>
	<header class="pt-4 pb-3 border-bottom border-2 mb-5">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="home.do" id="logo" class="d-flex align-items-center mb-2 mb-lg-0 text-decoration-none">
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
						<li> <button type="button" onclick="location.href='user/join.do'" class="btn btn-outline-dark ">회원가입</button></li>
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
										<p style="text-align: center; font-size: 18px;"><a href="user/join.do">계정이 없으신가요? 회원가입</a></p>
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
						
					 <form action="util/searchPw.do" method="get">
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
											<input style="margin-top: 20px;"type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력하세요">
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<button class="btn btn-outline-light login" style="width: 460px; margin-top: 15px; font-weight: bold; font-size: 20px;">이메일 보내기</button>
											<p>'@'포함한 이메일주소를 정확히 입력해주세요.</p>
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

	</header>


	<main>		

		<!--메인뷰-->
		<div id="carouselExampleDark" class="carousel slide shadow-drop-center" data-bs-ride="carousel">
			<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>

			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="10000">
					<img src="images/mainview_H.png" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<div id="MainView_Title" class="position-absolute bottom-0 start-50 translate-middle mb-4"></div>
						<h5 class="mt-4">새로운 이야기를 써 내려가세요</h5>
						<p>지금 PS5로 출시된 신규 오픈 월드 액션 RPG에서 마법사 세계의 운명을 결정하세요</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="images/mainview_2.webp" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<div id="MainView_Title2" class="position-absolute bottom-0 start-50 translate-middle mb-4"></div>
						<h5>정예 유닛으로 운영하세요</h5>
						<p>Battlefield 2042 시즌 4가 출시되었습니다. 신규 전장에서 싸우고, 새로운 스페셜리스트를 배치하고, 새로운 무기 등을 사용하며, 새로운 콘텐츠를 잠금 해제하세요.</p>
						
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/mainview_3.webp" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<div id="MainView_Title3" class="position-absolute bottom-0 start-50 translate-middle mb-4"></div>
						<h5>No limits, all drift!</h5>
						<p>지금 PS4 및 PS5에서 플레이 가능한 무료 플레이 카트 레이싱을 경험하세요.</p>
					</div>
				</div>
			</div>

			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
			</button>

		</div>

		<!--광고영역-->
		<section id="AD">
			
			<div id="index_1" class="container">
				<div id="back"></div>
				<img id="index_1_img" src="./images/index_img.png" class="mt-4"/>
				<img id="index_1_img2" src="./images/index_img2.webp" />
				<div id="index_1_text" class="fade-in">
					<h3>갓 오브 워 라그나로크</h3>
					<p>Santa Monica Studios가 호평을 받은 God of War(2018)의 후속작을 소개합니다. 핌불의 겨울이 다가옵니다. 크레토스와 아트레우스는 아홉영역을 탐험하며 답을 구하고, 아스가르드의 군세는 세상을 종말로 이끌 것이라 예언된 전쟁에 대비합니다.</p>
					<button type="button" class="btn btn-outline-dark btn-sm MC">자세히 보기</button>
				</div>
			</div>

			<div id="index_2">
				<div id="back"></div>
				<p id="index_2_title"><img src="./images/New_title.png"></p>
				
				<p id="index_2_img1" class="fade-in4"><img src="./images/New_1.png"></p>
				<p id="index_2_img2" class="fade-in1"><img src="./images/New_2.png"></p>
				<p id="index_2_img3" class="fade-in2"><img src="./images/New_3.png"></p>
				<p id="index_2_img4" class="fade-in3"><img src="./images/New_4.png"></p>
			</div>

			<div id="index_3"class="container">
				<h3 class="text-left">HOT</h3>
				<div class="row row-cols-5" >
				<div class="col"><a href="#"><img src="./images/HOT1.jpg"></a></div>
				<div class="col"><a href="#"><img src="./images/HOT2.jpg"></a></div>
				<div class="col"><a href="#"><img src="./images/HOT3.webp"></a></div>
				<div class="col"><a href="#"><img src="./images/HOT4.webp"></a></div>
				<div class="col"><a href="#"><img src="./images/HOT5.webp"></a></div>
				</div>
				<a href="#"><p class="text-white">더보기</p></a>

				<h3>예약</h3>
				<div class="row row-cols-5">
					<div class="col"><a href="#"><img src="./images/Res1.webp"></a></div>
					<div class="col"><a href="#"><img src="./images/Res2.webp"></a></div>
					<div class="col"><a href="#"><img src="./images/Res3.jpg"></a></div>
					<div class="col"><a href="#"><img src="./images/Res4.webp"></a></div>
					<div class="col"><a href="#"><img src="./images/Res5.webp"></a></div>
				</div>
				<a href="#"><p class="text-white">더보기</p></a>
				
				<section>
					<h3 id="h3_1" class="text-center">하드웨어</h3>
					<div id="index_3_C" class="row row-cols-4 mx-auto text-center">
						<div class="col"><a href="#"><img src="./images/C_1.png"></a><br/>Nintendo Switch</div>
						<div class="col"><a href="#"><img src="./images/C_2.png"></a><br/>PlayStation5</div>
						<div class="col"><a href="#"><img src="./images/C_3.png"></a><br/>PlayStation4</div>
						<div class="col"><a href="#"><img src="./images/C_4.png"></a><br/>XBOX</div>
					</div>
				</section>
			</div>

			<div id="Award" >
				<img src="images/aw_bg.png">
				<div id="index_4_Content" ><img src="images/aw_fg.png"></div>
			</div>

		</section><!-- END:AD -->

	</main>

	<footer class="border-top border-2 mt-5">
		<div class="container d-flex flex-wrap justify-content-between align-items-center py-3 my-4">
			<div class="col-md-4">
				<p class="fs-5">겜도리 고객센터</p>
				<br>
				<p class="fs-3 fw-bold">010-9354-3755</p>
			</div>
			<div class="col-md-6 text-end border-start border-1">
				<p class="fs-5">겜도리도리</p>
				<br>
				<p class="fs-3 fw-bold">전북 전주시 덕진구 떡전4길 20-1</p>
			</div>
		</div>
		<div class="container d-flex flex-wrap justify-content-between align-items-center py-3 my-4">
			<div class="col-md-4 d-flex align-items-center">
				<span class="mb-3 mb-md-0 text-muted">Copyright &copy; 2023 GAMEDORI. All rights reserved</span>
			</div>
		
			<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
				<li class="ms-3"><a class="text-muted" href="#"><i class="xi-twitter xi-2x"></i></a></li>
				<li class="ms-3"><a class="text-muted" href="#"><i class="xi-facebook-official xi-2x"></i></a></li>
				<li class="ms-3"><a class="text-muted" href="#"><i class="xi-instagram xi-2x"></i></a></li>
			</ul>
		</div>
	</footer>


</body>
</html>