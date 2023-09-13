<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pc관리 프로그램</title>
</head>
<style>
#header {
	max-width: 2500px;
	height: 60px;
	border: 1px solid #000;
	background: #100101;
	box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
	color: white;
	font-size: 24px;
	line-height: 60px;
}

.container {
	display: flex;
}

.grid-leftcontainer, .grid-rightcontainer {
	display: grid;
	grid-template-columns: repeat(5, 90px); /* 5개의 열, 각 열은 90px */
	grid-template-rows: repeat(6, 75px); /* 6개의 행, 각 행은 75px */
	grid-gap: 10px; /* 사각형 사이의 간격 조절 */
	margin: 20px; /* 좌우 여백 설정 */
}

.grid-bottomcontainer{
	display: grid;
	grid-template-columns: repeat(1, 90px);
	grid-template-rows: repeat(4, 75px);
	grid-gap: 10px;
	margin: 20px;
	margin-left:100px;
}

.grid-item {
	width: 90px;
	height: 75px;
	background-color: #ccc; /* 사각형 배경색 */
}

/* 좌측1열에 위치할 5개의 사각형 */
.left-Firstrow {
	width: 90px;
	height: 75px;
	margin-top: 120px; /* 위로 120px 떨어집니다. */
	margin-left: 80px; /* 좌측에서 80px 떨어집니다. */
}

/* 좌측2열에 위치할 5개의 사각형 */
.left-Secondrow {
	width: 90px;
	height: 75px;
	margin-left: 80px; /* 좌측에서 80px 떨어집니다. */
	margin-top: 150px; /* 위에서 150px 떨어집니다. */
}

/* 좌측3열에 위치할 5개의 사각형 */
.left-Thirdrow {
	widht: 90px;
	height: 75px;
	margin-left: 80px;
	margin-top: 300px;
}

/* 좌측4열에 위치할 5개의 사각형 */
.left-Fourthrow {
	widht: 90px;
	height: 75px;
	margin-left: 80px;
	margin-top: 330px;
}

/* 좌측5열에 위치할 5개의 사각형 */
.left-Fifthrow {
	widht: 90px;
	height: 75px;
	margin-left: 80px;
	margin-top: 480px;
}

/* 좌측6행에 위치할 5개의 사각형 */
.left-Sixthrow {
	widht: 90px;
	height: 75px;
	margin-left: 80px;
	margin-top: 510px;
}

/* 우측1열에 위치할 5개의 사각형 */
.right-Firstrow {
	width: 90px;
	height: 75px;
	margin-top: 120px; /* 위로 120px 떨어집니다. */
	margin-left: 200px; /* 좌측에서 80px 떨어집니다. */
}

/* 우측2열에 위치할 5개의 사각형 */
.right-Secondrow {
	width: 90px;
	height: 75px;
	margin-left: 200px; /* 좌측에서 80px 떨어집니다. */
	margin-top: 150px; /* 위에서 65px 떨어집니다. */
}

/* 우측3열에 위치할 5개의 사각형 */
.right-Thirdrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 300px;
}

/* 우측4열에 위치할 5개의 사각형 */
.right-Fourthrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 330px;
}

/* 우측5열에 위치할 5개의 사각형 */
.right-Fifthrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 480px;
}

/* 우측6행에 위치할 5개의 사각형 */
.right-Sixthrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 510px;
}

/* 아래에 위치할 4개의 사각형 */
.bottom-Firstrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 510px;
}

.bottom-Secondrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 510px;
}

.bottom-Thirdrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 510px;
}

.bottom-Fourthrow {
	widht: 90px;
	height: 75px;
	margin-left: 200px;
	margin-top: 510px;
}


</style>
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
		<div class="grid-bottomcontainer">
			<div class="grid-item bottom-Firstrow">61</div>
			<div class="grid-item bottom-Secondrow">62</div>
			<div class="grid-item bottom-Thirdrow">63</div>
			<div class="grid-item bottom-Fourthrow">64</div>
		</div>
	</div>
</body>
</html>