<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content ="width=device-width">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<title>vue로 게시판 만들기</title>

</head>
<body>
<div id="app">
	<nav class ="navbar navbar-default">
		 <div class="navbar-header"> <!-- 홈페이지의 로고 -->
	  		<button type="button" class="navbar-toggle collapsed"
	               data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
	               aria-expand="false">
	               
	               <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
	               <span class ="icon-bar"></span>
	               <span class ="icon-bar"></span>
	               
	        </button>
	         <a class ="navbar-brand">vue로 게시판 만들기</a>
		 </div>
		 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		 	 <ul class="nav navbar-nav">
	                <li><a href="">게시판</a></li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
	                <li class="dropdown">
	                <a href="#" class = "dropdown-toggle"
	                    data-toggle="dropdown" role ="button" 
	                    aria-haspopup="true"
	                    aria-expanded="false">접속하기<span class="caret"></span></a>
	                    <ul class="dropdown-menu">
	                        <li class="active"><a href="">로그인</a></li>
	                        <li><a href="">회원가입</a></li>                    
	                    </ul>
	                </li>
	            </ul>
		 </div>
	</nav>	 
	<div style="color: grey; position: relative; height: 80px; padding: 20px; margin-bottom: 20px;">
	
	</div>
	<div class="container">
		 <div class="row">
		 	<table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
	                <thead>
	                    <tr>
	                        <th style="background-color:#eeeeee; text-align:center;">번호</th>
	                        <th style="background-color:#eeeeee; text-align:center;">제목</th>
	                        <th style="background-color:#eeeeee; text-align:center;">작성자</th>
	                        <th style="background-color:#eeeeee; text-align:center;">작성일</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <tr>
	                    <td>1</td>
	                    <td>안녕하세요</td>
	                    <td>홍길동</td>
	                    <td>2017-05-04</td>
	                    </tr>
	                </tbody>
	            
	            </table>
		 </div>
		 <a id="addVw" class="btn btn-primary pull-right" href="addInfo.do">등록하기</a>
	</div>
	{{ message }}
</div>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.0"></script> 
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="/resources/js/vueRead.js"></script>

 <script>
 
 new Vue ({
		el : '#app',
		data : {
			message : 'test'
		},
		beforeCreate : function(){
			console.log("beforeCreate");
		},
		created : function(){
			console.log("created");
		}
		
	});

 </script>
</body>
</html>