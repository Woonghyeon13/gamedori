<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script type="text/javascript" src="css/bootstrap/js/bootstrap.js"></script>
	
	
	<link href="<%=request.getContextPath()%>/resources/css/mypage/mypage_style.css" rel="stylesheet">
  	
	
    <!-- 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">

    <!--제이쿼리-->
    <script src="/js/jquery-3.6.1.js"></script>


  	
  	
  	
</head>
<body>
    <header>

    </header>

    <main>
        <div id="mypage_inner" class="container">
            <h2>마이페이지</h2>
            <div id="mypage_1" class="col">
                <ul>
                    <li>
                        <h3>등급</h3>
                        <p>브론즈,실버,골드 등등..</p>
                    </li>
                    <li>
                        <h3>적립금</h3>
                        <p>적립금 표시 ex) 2500원</p>
                        <a href="#">적립금 확인 > </a>
                    </li>
                    <li>
                        <h3>쿠폰</h3>
                        <p>쿠폰 개수 표시</p>
                        <a href="#">쿠폰 확인 > </a>
                    </li>
                    <li>
                        <h3>나의 후기</h3>
                        <p>후기 개수 표시</p>
                        <a href="#">후기 확인 > </a>
                    </li>
                </ul>
            </div>
            <div id="mypage_inner2" class="container">
                <div id="mypage_list" class="col-3">
                    <p id="nickname"><span>닉네임</span>님 환영합니다.</p>

                    <ol id="ol_li" class="list-group list-group-numbered">
                        <li class="list-group-item"><a href="#">장바구니</a></li>
                        <li class="list-group-item"><a href="#">상품문의</a></li>
                        <li class="list-group-item"><a href="#">1 : 1문의</a></li>
                        <li class="list-group-item"><a href="#">나의 후기</a></li>
                        <li class="list-group-item"><a href="#">회원정보수정</a></li>
                        <li class="list-group-item"><a href="#">탈퇴하기</a></li>
                    </ol>
                </div>
                <div id="detail_inner" class="col-8">
                    <ul>
                        <li>
                            <div id="product_page" class="container">
                                <p>최근 주문 내역</p>
                                <p><a href="#">주문상품 전체보기</a></p>
                            </div>
                            <div id="product" class="container">
                                <table class="table table-hover" class="container">
                                    <thead>
                                        <tr> 
                                          <th scope="col">번호</th>
                                          <th scope="col">상품 정보</th>
                                          <th scope="col">주문 일자</th>
                                          <th scope="col">주문 번호</th>
                                          <th scope="col">주문 금액</th>
                                          <th scope="col">주문 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>1</th>
                                            <td>게임 1</td>
                                            <td>2023-03-08</td>
                                            <td>12345678</td>
                                            <td>10000원</td>
                                            <td>주문 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>2</th>
                                            <td>게임 2</td>
                                            <td>2023-03-08</td>
                                            <td>22345678</td>
                                            <td>10000원</td>
                                            <td>주문 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>3</th>
                                            <td>게임 3</td>
                                            <td>2023-03-08</td>
                                            <td>32345678</td>
                                            <td>10000원</td>
                                            <td>주문 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>4</th>
                                            <td>게임 4</td>
                                            <td>2023-03-08</td>
                                            <td>42345678</td>
                                            <td>10000원</td>
                                            <td>주문 준비중</td>
                                        </tr> 
                                        <tr>
                                            <th>5</th>
                                            <td>게임 5</td>
                                            <td>2023-03-08</td>
                                            <td>52345678</td>
                                            <td>10000원</td>
                                            <td>주문 준비중</td>
                                        </tr> 
                                    </tbody>
                                  </table>
                                <p id="breakdown1">....</p>
                            </div>
                        </li>

                        <li>
                            <div id="enquiry_page" class="container">
                                <p>상품 문의</p>
                                <p><a href="#">문의내용 전체보기</a></p>
                            </div>
                            <div id="enquiry" class="container">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                          <th scope="col">번호</th>
                                          <th scope="col">상품 정보</th>
                                          <th scope="col">문의 제목</th>
                                          <th scope="col">주문 번호</th>
                                          <th scope="col">작성 일자</th>
                                          <th scope="col">처리 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>1</th>
                                            <td>게임 1</td>
                                            <td>문의 제목입니다.</td>
                                            <td>12345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>2</th>
                                            <td>게임 2</td>
                                            <td>문의 제목입니다.</td>
                                            <td>22345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>3</th>
                                            <td>게임 3</td>
                                            <td>문의 제목입니다.</td>
                                            <td>32345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>4</th>
                                            <td>게임 4</td>
                                            <td>문의 제목입니다.</td>
                                            <td>42345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 처리중</td>
                                        </tr> 
                                        <tr>
                                            <th>5</th>
                                            <td>게임 5</td>
                                            <td>문의 제목입니다.</td>
                                            <td>52345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 처리중</td>
                                        </tr> 
                                    </tbody>
                                  </table>
                                <p id="breakdown1">....</p>
                            </div>

                        </li>

                        <li>
                            <div id="one_to_one_page" class="container">
                                <p>1 : 1 문의</p>
                                <p><a href="#">문의내용 전체보기</a></p>
                            </div>
                            <div id="one_to_one" class="container">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                          <th scope="col">번호</th>
                                          <th scope="col">문의 유형</th>
                                          <th scope="col">문의 제목</th>
                                          <th scope="col">주문 번호</th>
                                          <th scope="col">작성 일자</th>
                                          <th scope="col">처리 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>1</th>
                                            <td>회원가입</td>
                                            <td>문의 제목입니다.</td>
                                            <td>12345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>2</th>
                                            <td>결제 및 배송</td>
                                            <td>문의 제목입니다.</td>
                                            <td>22345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>3</th>
                                            <td>교환 및 환불</td>
                                            <td>문의 제목입니다.</td>
                                            <td>32345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 완료</td>
                                        </tr> 
                                        <tr>
                                            <th>4</th>
                                            <td>적립금</td>
                                            <td>문의 제목입니다.</td>
                                            <td>42345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 처리중</td>
                                        </tr> 
                                        <tr>
                                            <th>5</th>
                                            <td>기타</td>
                                            <td>문의 제목입니다.</td>
                                            <td>52345678</td>
                                            <td>2023-03-08</td>
                                            <td>답변 처리중</td>
                                        </tr> 
                                    </tbody>
                                  </table>
                                <p id="breakdown1">....</p>
                            </div>
                        </li>

                        <li>
                            <div id="review_page" class="container">
                                <p>나의 후기</p>
                                <p><a href="#">후기 전체보기</a></p>
                            </div>
                            <div id="review" class="container">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                          <th scope="col">번호</th>
                                          <th scope="col">상품 정보</th>
                                          <th scope="col">후기 제목</th>
                                          <th scope="col">작성자 명</th>
                                          <th scope="col">작성 일자</th>
                                          <th scope="col">별 점</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>1</th>
                                            <td>게임 1</td>
                                            <td>후기 제목입니다.</td>
                                            <td>abc1234</td>
                                            <td>2023-03-08</td>
                                            <td>★★★★★</td>
                                        </tr> 
                                        <tr>
                                            <th>2</th>
                                            <td>게임 2</td>
                                            <td>후기 제목입니다.</td>
                                            <td>def1234</td>
                                            <td>2023-03-08</td>
                                            <td>★★★★★</td>
                                        </tr> 
                                        <tr>
                                            <th>3</th>
                                            <td>게임 3</td>
                                            <td>후기 제목입니다.</td>
                                            <td>ghi1234</td>
                                            <td>2023-03-08</td>
                                            <td>★★★★★</td>
                                        </tr> 
                                        <tr>
                                            <th>4</th>
                                            <td>게임 4</td>
                                            <td>후기 제목입니다.</td>
                                            <td>jkl1234</td>
                                            <td>2023-03-08</td>
                                            <td>★★★★★</td>
                                        </tr> 
                                        <tr>
                                            <th>5</th>
                                            <td>게임 5</td>
                                            <td>후기 제목입니다.</td>
                                            <td>mno1234</td>
                                            <td>2023-03-08</td>
                                            <td>★★★★★</td>
                                        </tr> 

                                    </tbody>
                                  </table>
                                <p id="breakdown1">....</p>
                            </div>
                        </li>

                    </ul>
                </div>
            </div> <!-- end:#mypage_inner2 -->
        </div> <!-- end:#mypage_inner -->
            

  
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>