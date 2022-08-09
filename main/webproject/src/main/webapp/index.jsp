<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<title>vue로 게시판 만들기</title>
</head>
<body>
<nav class ="navbar navbar-default">
	 <div class="navbar-header"> <!-- 홈페이지의 로고 -->
  		<button type="button" class="navbar-toggle collapsed"
               data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
               aria-expand="false">
               
               <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
               <span class ="icon-bar"></span>
               <span class ="icon-bar"></span>
               
        </button>
         <a class ="navbar-brand">JSP 게시판 웹 사이트</a>
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
	 <a style="float: right; cursor: pointer;" class="btn btn-primary pull-right" href="">등록하기</a>
</div>
<div id="app">
	<h1>hello {{name}}</h1>
	<input type="text" v-model="name">
	<ul>
		<li v-for="framework in framework">{{framework}}</li>
	</ul>
	<div>{{framework}}</div>
	<p>{{myText * 1.08}}</p>
	<p>{{"안녕하세요~ "+myName + "님"}}</p>
	<p>{{myName.substr(0,1)}}</p>
</div>
<script>
	const app = new Vue({
		el : "#app",
		data : {
			name : "scalper",
			framework: ["john", "vue", "gil"],
			myText : 500,
			myName : '홍길동'
		}
	})
</script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    
</body>
</html>