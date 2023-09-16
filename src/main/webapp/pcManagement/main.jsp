<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/main.css" rel="stylesheet">
<title>pc관리 프로그램</title>
</head>
<script>
 document.addEventListener('DOMContentLoaded', function() {
     // 클릭 이벤트 핸들러 등록
     const memberDiv = document.querySelector('.member');
     const nonMembersDiv = document.querySelector('.nonMembers');
     const loginModal = document.getElementById('loginModal');
     const signupModal = document.getElementById('signupModal');
     
     memberDiv.addEventListener('click', () => {
    	 loginModal.style.display = 'block'; // 로그인 모달 표시
    	 document.body.classList.add('modal-open'); // 스크롤 막기
     });

     nonMembersDiv.addEventListener('click', () => {
    	 signupModal.style.display = 'block'; // 회원가입 모달 표시
    	 document.body.classList.add('modal-open'); // 스크롤 막기
     });
     
  	 // 모달 창 닫기
     const closeModalButtons = document.querySelectorAll('.close');
     closeModalButtons.forEach((button) => {
         button.addEventListener('click', () => {
             loginModal.style.display = 'none'; // 로그인 모달 숨기기
             signupModal.style.display = 'none'; // 회원가입 모달 숨기기
             document.body.classList.remove('modal-open'); // 스크롤 허용
         });
     });

     // 모달 외부 클릭 시 모달 닫기
     window.addEventListener('click', (event) => {
         if (event.target === loginModal || event.target === signupModal) {
             loginModal.style.display = 'none'; // 로그인 모달 숨기기
             signupModal.style.display = 'none'; // 회원가입 모달 숨기기
             document.body.classList.remove('modal-open'); // 스크롤 허용
         }
     });
  	 // 로그인 양식 제출 시 처리
     const loginForm = document.getElementById('loginForm');
     loginForm.addEventListener('submit', (event) => {
         event.preventDefault(); // 기본 동작 방지 (페이지 새로고침 방지)
         
         // 로그인 폼 데이터 가져오기
         const username = document.getElementById('username').value;
         const password = document.getElementById('password').value;
         
         // AJAX 요청 보내기 (jQuery 사용)
         $.ajax({
             type: 'POST', // HTTP 요청 메서드 (POST로 변경할 수 있음)
             url: '/userLogin', // 컨트롤러 엔드포인트 URL
             data: { username: username, password: password }, // 전송할 데이터
             success: function(response) {
                 // 성공적으로 응답을 받았을 때 처리
                 alert('로그인 성공: ' + response);
             },
             error: function(error) {
                 // 오류 발생 시 처리
                 alert('로그인 실패: ' + error.responseText);
             }
         });
     });

     // 회원가입 양식 제출 시 처리
     const signupForm = document.getElementById('signupForm');
     const signupNameInput = document.getElementById('signupName');
     const signupUsernameInput = document.getElementById('signupUsername');
     const signupPasswordInput = document.getElementById('signupPassword');
     const signupPhoneInput = document.getElementById('signupPhone');
     
     signupForm.addEventListener('submit', (event) => {
     event.preventDefault(); // 기본 동작 방지 (페이지 새로고침 방지)
         
     // 입력 필드의 값을 가져오기
     const name = document.getElementById('signupName').value;
     const username = document.getElementById('signupUsername').value;
     const password = document.getElementById('signupPassword').value;
     const phone = document.getElementById('signupPhone').value;
		
     	 // 유효성 검사
         if (!validateUsername(username)) {
             signupUsernameInput.placeholder = '아이디는 6~12글자의 알파벳과 숫자로 이루어져야 합니다.';
             return;
         }

         if (!validatePassword(password)) {
             signupPasswordInput.placeholder = '비밀번호는 8~20글자의 숫자와 알파벳 조합이어야 합니다.';
             return;
         }

         if (!validatePhone(phone)) {
             signupPhoneInput.placeholder = '전화번호 형식이 올바르지 않습니다. (예: 010-1234-5678)';
             return;
         }
         
         // 유효성 검사 확인
         if (!validateUsername(username) || !validatePassword(password) || !validatePhone(phone)) {
             alert('입력된 정보가 올바르지 않습니다.');
             return;
         }

         // AJAX 요청 보내기 (jQuery 사용)
         var form = $("#signupForm").serialize();
         
         $.ajax({
             type: "POST", // HTTP 요청 메서드 (POST로 변경할 수 있음)
             url: "/userSignup", // 컨트롤러 엔드포인트 URL
             data: "form", // 전송할 데이터
             dataType:"text",
             success: function(data) {
                 // 성공적으로 응답을 받았을 때 처리
                 if(data == "OK"){
	                 alert("회원가입 성공: " + data);
	                 location="/main.do";
                 } else {
                	 alert("회원가입 실패 ㅠㅠ");
                 } 
             },
             error: function(error) {
                 // 오류 발생 시 처리
                 alert('회원가입 실패: ' + error.responseText);
             }
         });
     });

     // 아이디 유효성 검사 함수
     function validateUsername(username) {
         // 아이디는 6~12글자
         return /^[a-zA-Z0-9]{6,12}$/.test(username);
     }

     // 비밀번호 유효성 검사 함수
     function validatePassword(password) {
         // 비밀번호는 8~20글자, 숫자와 알파벳 1개 이상 포함
         return /^(?=.*\d)(?=.*[a-zA-Z]).{8,20}$/.test(password);
     }

     // 전화번호 유효성 검사 함수
     function validatePhone(phone) {
         // 전화번호는 010으로 시작해서 4자리 숫자, 4자리 숫자
         return /^010-\d{4}-\d{4}$/.test(phone);
     }
});
 
</script>
<body>
	<div id="header">
		<span style="font-size: 30px;">★</span> 오른쪽 메뉴에서 구매품목을 선택해주세요. <span
			style="font-size: 30px;">★</span>
	</div>
	<div class="container">
		<div class="grid-leftcontainer">
			<!-- 좌측1열 위치할 5개의 사각형 -->
			<div class="grid-item left-Firstrow">1</div>
			<div class="grid-item left-Firstrow">2</div>
			<div class="grid-item left-Firstrow">3</div>
			<div class="grid-item left-Firstrow">4</div>
			<div class="grid-item left-Firstrow">5</div>

			<!-- 좌측2열 위치할 5개의 사각형 -->
			<div class="grid-item left-Secondrow">6</div>
			<div class="grid-item left-Secondrow">7</div>
			<div class="grid-item left-Secondrow">8</div>
			<div class="grid-item left-Secondrow">9</div>
			<div class="grid-item left-Secondrow">10</div>

			<!-- 좌측3열 위치할 5개의 사각형 -->
			<div class="grid-item left-Thirdrow">11</div>
			<div class="grid-item left-Thirdrow">12</div>
			<div class="grid-item left-Thirdrow">13</div>
			<div class="grid-item left-Thirdrow">14</div>
			<div class="grid-item left-Thirdrow">15</div>

			<!-- 좌측4열 위치할 5개의 사각형 -->
			<div class="grid-item left-Fourthrow">16</div>
			<div class="grid-item left-Fourthrow">17</div>
			<div class="grid-item left-Fourthrow">18</div>
			<div class="grid-item left-Fourthrow">19</div>
			<div class="grid-item left-Fourthrow">20</div>

			<!-- 좌측5열 위치할 5개의 사각형 -->
			<div class="grid-item left-Fifthrow">21</div>
			<div class="grid-item left-Fifthrow">22</div>
			<div class="grid-item left-Fifthrow">23</div>
			<div class="grid-item left-Fifthrow">24</div>
			<div class="grid-item left-Fifthrow">25</div>

			<!-- 좌측6열 위치할 5개의 사각형 -->
			<div class="grid-item left-Sixthrow">26</div>
			<div class="grid-item left-Sixthrow">27</div>
			<div class="grid-item left-Sixthrow">28</div>
			<div class="grid-item left-Sixthrow">29</div>
			<div class="grid-item left-Sixthrow">30</div>
		</div>

		<div class="grid-rightcontainer">
			<!-- 우측1열 위치할 5개의 사각형 -->
			<div class="grid-item right-Firstrow">31</div>
			<div class="grid-item right-Firstrow">32</div>
			<div class="grid-item right-Firstrow">33</div>
			<div class="grid-item right-Firstrow">34</div>
			<div class="grid-item right-Firstrow">35</div>

			<!-- 우측2열 위치할 5개의 사각형 -->
			<div class="grid-item right-Secondrow">36</div>
			<div class="grid-item right-Secondrow">37</div>
			<div class="grid-item right-Secondrow">38</div>
			<div class="grid-item right-Secondrow">39</div>
			<div class="grid-item right-Secondrow">40</div>

			<!-- 우측3열 위치할 5개의 사각형 -->
			<div class="grid-item right-Thirdrow">41</div>
			<div class="grid-item right-Thirdrow">42</div>
			<div class="grid-item right-Thirdrow">43</div>
			<div class="grid-item right-Thirdrow">44</div>
			<div class="grid-item right-Thirdrow">45</div>

			<!-- 우측4열 위치할 5개의 사각형 -->
			<div class="grid-item right-Fourthrow">46</div>
			<div class="grid-item right-Fourthrow">47</div>
			<div class="grid-item right-Fourthrow">48</div>
			<div class="grid-item right-Fourthrow">49</div>
			<div class="grid-item right-Fourthrow">50</div>

			<!-- 우측5열 위치할 5개의 사각형 -->
			<div class="grid-item right-Fifthrow">51</div>
			<div class="grid-item right-Fifthrow">52</div>
			<div class="grid-item right-Fifthrow">53</div>
			<div class="grid-item right-Fifthrow">54</div>
			<div class="grid-item right-Fifthrow">55</div>

			<!-- 우측6열 위치할 5개의 사각형 -->
			<div class="grid-item right-Sixthrow">56</div>
			<div class="grid-item right-Sixthrow">57</div>
			<div class="grid-item right-Sixthrow">58</div>
			<div class="grid-item right-Sixthrow">59</div>
			<div class="grid-item right-Sixthrow">60</div>
		</div>
		<!-- 우측 회원,비회원 로고,현위치 -->
		<div class="grid-bottomcontainer">
			<div class="member">
				<img src="images/member-icon.jpg">회원
			</div>
			<div class="nonMembers">
				<img src="images/nonMember-icon.jpg">비회원
			</div>
			<div class="myLocation">
				<img src="images/myLocation.jpg">현위치
			</div>
		</div>

		<!-- 로그인 모달 -->
		<div id="loginModal" class="modal">
			<div class="modal-LoginContent">
				<span class="close">&times;</span>
				<!-- 로그인 모달 내용을 추가하세요 -->
				<h2>로그인</h2>
				<form id="loginForm" action="/userLogin" method="post">
					<label for="username">사용자 아이디</label> <input type="text"
						id="username" name="username" required><br> <label
						for="password">비밀번호</label> <input type="password" id="password"
						name="password" required><br> <input type="submit"
						value="로그인">
				</form>
			</div>
		</div>

		<!-- 회원가입 모달 -->
		<div id="signupModal" class="modal">
			<div class="modal-SignUpContent">
				<span class="close">&times;</span>
				<h2>회원가입</h2>
				<form name="frm" id="signupForm">
					<label for="signupName">이름:</label> <input type="text"
						id="signupName" name="signupName" placeholder="이름을 입력하세요" required><br>

					<label for="signupUsername">아이디:</label> <input type="text"
						id="signupUsername" name="signupUsername"
						placeholder="6~12글자의 알파벳과 숫자로 이루어진 아이디" required><br>

					<label for="signupPassword">비밀번호:</label> <input type="password"
						id="signupPassword" name="signupPassword"
						placeholder="8~20글자의 숫자와 알파벳 조합" required><br> <label
						for="signupPhone">전화번호:</label> <input type="text"
						id="signupPhone" name="signupPhone"
						placeholder="전화번호를 입력하세요 (예: 010-1234-5678)" required><br>

					<button type="submit" id="signUpButton" onclick="return false;">회원가입</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>