<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>전자기기기능사</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style>
		body{
			margin : 0;
			font-family: 'Noto Sans KR', sans-serif;
		
		}
		#title{
			overflow:hidden;
			text-align:center;
			font-size:55px;
			padding:18px;
			margin-bottom:10px;
			border-bottom:0.1px solid #c5c5c5;
		}	
		#select-problem{
			width:76%;
		
			display:inline-block;
		}
		#problem-list{
			text-align:center;
			max-height:135.9px;
		}
		.problem{
			display:inline-block;
			width:10%;
			font-size:10px;
			margin:8px;
			padding:2% 1% 2% 1%;
			border:0.1px solid #c5c5c5;
			min-width:159px;	
			min-height:80px;
			text-align:center;
			transition:0.4s;
		}
		.problem:hover{
			cursor:pointer;
			background-color:#eeeeee;
		}
		.problem-num{
			font-size:20px;	
			margin-bottom:10px;
		}
	</style>
	
	<script>
	$(document).ready(function() {    
		$('.problem').click(function(){
			var num = $(this).data("num");
			var i,j;
			for(i=1;i<=28;i++){
				for(j=1;j<=62;j++)
					$('#board').append("<span style='margin:1.7px; '>○</span>");
				$('#board').append("<br>");
			}
		});
	});
	</script>
</head>
<body>
	<div id = "title">
		전자기기능사 패턴도 외우기
	</div>
	<div style="text-align:center;">
		<div id = "select-problem">
			<div style="text-align:center">문제를 선택하세요.</div>
			<div id = "problem-list">
				<span class="problem" id="problem1" data-num="1">
					<span class="problem-num">1번</span>
				 	<br> 비동기식 8진 카운터 + NE555 <br>비안정 멀티바이브레이터
				</span>
				
				<span class="problem" id="problem2" data-num="2">
					<span class="problem-num">2번</span> 
					<br> 비동기식 8진 카운터 + NE555 <br>비안정 멀티바이브레이터
				</span>
	
				<span class="problem" id="problem3" data-num="3">
					<span class="problem-num">3번</span> 
					<br> 존슨 카운터 + NE555 <br>비안정 멀티바이브레이터
				</span>		
				
				<span class="problem" id="problem4" data-num="4">
					<span class="problem-num">4번</span> 
					<br> 링카운터 + NE555 <br>비안정 멀티바이브레이터   
				</span>
				
				<span class="problem" id="problem5" data-num="5">
					<span class="problem-num">5번</span> 
					<br> 링카운터 + LF356 <br>비안정 멀티바이브레이터    
				</span>
				
				<span class="problem" id="problem6" data-num="6">
					<span class="problem-num">6번</span>
					<br> 링카운터 + NAND게이트 <br>비안정 멀티바이브레이터
				</span> 
			</div>
		</div>
	</div>
		
	<div id="board">

	
	</div>
	
	
</body>

</html>
