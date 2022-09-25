<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content ="width=device-width">
<%@ include file="/WEB-INF/jsp/includeCss.jsp"%>

<title>Insert title here</title>
</head>
<body>
<h2>등록하기 화면</h2>
<div class="col-md-12">
    <div id="addEapp" class="col-md-4">
        <form v-on:submit="submitForm">
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
            </div>
            <div class="form-group">
                <label for="author">작성자</label>
                <input type="text" class="form-control" id="author" placeholder="작성자를 입력하세요">
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" placeholder="내용을 입력하세요"></textarea>
            </div>
        
        <a href="/home.do" role="button" class="btn btn-secondary">취소</a>
        <button type="submit" class="btn btn-primary" id="btn-save" >등록</button>
   		</form>
    </div>
</div>
<script src="/resources/js/addInfo.js"></script>

<script>
	vue.add.init();
</script>
</body>
</html>