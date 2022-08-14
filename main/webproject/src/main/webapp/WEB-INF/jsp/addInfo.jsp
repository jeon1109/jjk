<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<title>Insert title here</title>
</head>
<body>
<h2>등록하기 화면</h2>
<div id="app">
	<li>이름 :</li><input v-model="input_model" placeholder="이름">
	<input v-model.lazy="input_model" placeholder="이름">
	<textarea v-model.lazy="textarea_model" placeholder="이름">
	</textarea>
</div>
</body>
</html>