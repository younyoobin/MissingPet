<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainPage</title>
</head>
	<!-- reset.css.로 초기화 -->
	<link rel="stylesheet" href="/css/reset.css">
	
	<!-- auto=가운데정렬, !important=reset.css에 적용된 색상때문에 사용, padding-top=padding값을 위에만 적용, .menu.selected=, wrap이 1000px로 한정되어있기때문에 header와 banner에 따로 padding값을 적용, background-size: cover=이미지가 중복되지않도록 늘림, box-sizing= border를 박스 안에다가 넣어줌, line-height=,-->
	<style>
		.dropmenu{ position: fixed; left: 50%; margin-left: -500px; top: 0; width: 64px; height: 64px; background: #ff6375; z-index: 10; }
		.dropmenu img{ transition:  all 0.3s ease; transform: rotate(0deg); }
		.dropmenu:hover img{ transform: rotate(180deg); }
		.dropmenu:hover .dropdown{ height: 200px; }
		
		.dropdown{ overflow: hidden; text-align: center; color: #fff; font-size: 16px; line-height: 200px; top: 64px;
					width: 100%; left: 0; height: 0; position: fixed; background: #ff6375; transition: all 300ms; z-index: 9; }
		
		.header{ background: #fff; border-bottom: 1px solid #e0e0e0; overflow: hidden; position: fixed; width: 100%; left: 0; top: 0; }

		.logo{ display: block; float: left; padding: 19px 0 10px 79px;}
		.logo img{ height: 31px; }

		body .menu{ display: block; float: right; color: #888; font-size: 16px; padding-top: 38px; margin-right: 25px;}

		.wrap{ width: 1000px; margin: 0 auto; overflow: hidden;} 

		.banner2{ background-color: #efefef; padding: 30px 0; margin-top: 64px;}
		.banner2 .rect{ cursor: pointer; transition: all 300ms; position: relative; background: #fff; padding: 20px 20px 15px; overflow: hidden;}
		.banner2 .title { transition: all 300ms; color: #777; font-size: 16px; float: left; width: 30%;}
		.banner2 .graph { float: left; width: 40%; height: 5px; margin-top: 4px; background: #d4d5d6;}
		.banner2 .graph .fill{ transition: all 300ms; width: 45%; height: 100%; background: #ff6375; }
		.banner2 .text { color: #fff; transition: all 300ms; position: absolute; top: 35px; opacity: 0; right: 0; width: 30%; text-align: center;}
		.banner2:hover .text{top:22px; opacity:1;}	
		.banner2:hover .rect{background:#ff6375;}
		.banner2:hover .title{color:#fff;}
		.banner2:hover .graph{background: #ccc}
		.banner2:hover .fill{background: #fff;}
		
		.article.wrap{padding: 30px 0;}

		.one{ width: 30%; margin: 0 1.5% 20px; border: 1px solid #e0e0e0; box-sizing: border-box; float: left;}
		.one .top{ height: 200px; background-size: cover; border-bottom: 1px solid #e0e0e0; transition: 300ms;}
		.one .top:hover { transform: scale(1.05); }
		.one .bottom{ padding:20px; }
		.one .bottom .title{ font-size: 16px; font-weight: bold; padding-bottom: 15px; color: #333; }
		.one .bottom .context{ font-size: 12px; line-height: 1.5; height: 45px; color: #777; }

		.two{ width: 30%; margin: 0 1.5% 20px; border: 1px solid #e0e0e0; box-sizing: border-box; float: left;}
		.two .top{ height: 200px; background-size: cover; border-bottom: 1px solid #e0e0e0; transition: 300ms; }
		.two .top:hover { transform: scale(1.05); }
		.two .bottom{ padding:20px; }
		.two .bottom .title{ font-size: 16px; font-weight: bold; padding-bottom: 15px; color: #333; }
		.two .bottom .context{ font-size: 12px; line-height: 1.5; height: 45px; color: #777; }

		.three{ width: 30%; margin: 0 1.5% 20px; border: 1px solid #e0e0e0; box-sizing: border-box; float: left;}
		.three .top{ height: 200px; background-size: cover; border-bottom: 1px solid #e0e0e0; transition: 300ms; }
		.three .top:hover { transform: scale(1.05); }
		.three .bottom{ padding:20px; }
		.three .bottom .title{ font-size: 16px; font-weight: bold; padding-bottom: 15px; color: #333; }
		.three .bottom .context{ font-size: 12px; line-height: 1.5; height: 45px; color: #777; }

		.four{ width: 30%; margin: 0 1.5% 20px; border: 1px solid #e0e0e0; box-sizing: border-box; float: left;}
		.four .top{ height: 200px; background-size: cover; border-bottom: 1px solid #e0e0e0; transition: 300ms; }
		.four .top:hover { transform: scale(1.05); }
		.four .bottom{ padding:20px; }
		.four .bottom .title{ font-size: 16px; font-weight: bold; padding-bottom: 15px; color: #333; }
		.four .bottom .context{ font-size: 12px; line-height: 1.5; height: 45px; color: #777;}

		.five{ width: 30%; margin: 0 1.5% 20px; border: 1px solid #e0e0e0; box-sizing: border-box; float: left;}
		.five .top{ height: 200px; background-size: cover; border-bottom: 1px solid #e0e0e0; transition: 300ms; }
		.five .top:hover { transform: scale(1.05); }
		.five .bottom{ padding:20px; }
		.five .bottom .title{ font-size: 16px; font-weight: bold; padding-bottom: 15px; color: #333; }
		.five .bottom .context{ font-size: 12px; line-height: 1.5; height: 45px; color: #777;}

		.six{ width: 30%; margin: 0 1.5% 20px; border: 1px solid #e0e0e0; box-sizing: border-box; float: left;}
		.six .top{ height: 200px; background-size: cover; border-bottom: 1px solid #e0e0e0; transition: 300ms; }
		.six .top:hover { transform: scale(1.05); }
		.six .bottom{ padding:20px; }
		.six .bottom .title{ font-size: 16px; font-weight: bold; padding-bottom: 15px; color: #333; }
		.six .bottom .context{ font-size: 12spx; line-height: 1.5; height: 45px; color: #777;}

		.footer{ padding: 15px 0 30px; border-top: 2px solid #efefef; margin-top: 40px; overflow: hidden;}
		.footer .left{ float: left; }
		.footer .right{ float: right; overflow: hidden; margin-top: 15px; }

		.left .title{ font-size: 13px; font-weight: bold; color: #444; margin: 20px 0; }
		.left .context{ font-size: 12px; color: #777; margin: 20px 0;}
		.footer .right a{color: #777; font-size: 12px; }
		
		
		@media(max-width:1000px){.wrap{width:auto;}
								.dropmenu{left:0; margin:0;}
								.article .one{width:auto;float:none;margin:20px;}
								.banner2{display:none;}
								.footer{padding:20px;}
								.article .two{width:auto;float:none;margin:20px;}
								.article .three{width:auto;float:none;margin:20px;}
								.article .four{width:auto;float:none;margin:20px;}
								.article .five{width:auto;float:none;margin:20px;}
								.article .six{width:auto;float:none;margin:20px;}}
		

	</style>
<body>
	<div class="dropmenu">
		<img src="/images/bottom.png"/>
		<div class="dropdown">여기를 자유롭게 채워보세요.</div>
	</div>

	<div class="header">
		<div class="wrap">
			<a href="http://incoding.kr" class="logo">
				<img src="/images/incoding.png"/>
			</a>
		</div>
	</div>

	<div class="banner2">
		<div class="wrap">
			<div class="rect">
				<div class="title">누구나 할 수 있는 웹사이트 만들기</div>
				<div class="graph">
					<div class="fill"></div> 
				</div>
				<div class="text">클릭해보세요.</div>
			</div>
		</div>
	</div>

	<div class="article wrap">
		<div class="one">
			<div class="top" style="background-image:url('/images/1.jpg')"></div>
			<div class="bottom">
				<div class="title">자이언트</div>
				<div class="context">대각선 디자인으로 역동성을 강조한 리디자인 웹페이지</div>
			</div>
		</div>

		<div class="two">
			<div class="top" style="background-image:url('/images/2.jpg')"></div>
			<div class="bottom">
				<div class="title">POLYGON</div>
				<div class="context">캔버스를 활용한 디자인 웹</div>
			</div>
		</div>

		<div class="three">
			<div class="top" style="background-image:url('/images/3.jpg')"></div>
			<div class="bottom">
				<div class="title">오버워치 차트</div>
				<div class="context">Chart.js를 활용한 재치있는 디자인 웹</div>
			</div>
		</div>

		<div class="four">
				<div class="top" style="background-image:url('/images/4.jpg')"></div>
				<div class="bottom">
					<div class="title">옥타곤</div>
					<div class="context">스크롤.js을 이용한 클럽 소개 랜딩페이지</div>
				</div>
		</div>

		<div class="five">
				<div class="top" style="background-image:url('/images/5.jpg')"></div>
				<div class="bottom">
					<div class="title">치킨 게임</div>
					<div class="context">jquery를 이용한 간단한 웹 게임</div>
				</div>
		</div>

		<div class="six">
				<div class="top" style="background-image:url('/images/6.png')"></div>
				<div class="bottom">
					<div class="title">유니티 게임</div>
					<div class="context">유니티 강의도 들어보실래요? 오홍홍</div>
				</div>
		</div>
	</div>

	<div class="footer wrap">
		<div class="left">
			<div class="title">인코딩 - incoding</div>
			<div class="context">누구나 할 수 있는 웹사이트 만들기</div>
		</div>
		<div class="right">
			<a href="http://blog.naver.com/inceleb" target="_blank">블로그</a>
			<a href="https://www.facebook.com/incoding2015" target="_blank">페이스북</a>
		</div>
	</div>
</body>
</html>