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
        <form v-on:submit="submitForm" name ="formSub" method="post" action="/insert.do">
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
            </div>
            <div class="form-group">
                <label for="author">작성자</label>
                <input type="text" class="form-control" id="author" name="author" placeholder="작성자를 입력하세요">
            </div>
             <div class="form-group">
                <label for="age">나이</label>
                <input type="text" class="form-control" id="age" name ="age" maxlength="3" placeholder="나이를 입력하세요" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
            </div>
            <div class="form-group">
                <label for="context">내용</label>
                <textarea class="form-control" id="context" name="context" placeholder="내용을 입력하세요"></textarea>
            </div>
        
        <a href="/home.do" role="button" class="btn btn-secondary">취소</a>
        <input type="submit" class="btn btn-primary" id="btn-save" value="등록"/>
   		</form>
    </div>
</div>
<script src="/resources/js/addInfo.js"></script>

<script>
	vue.add.init();
</script>
</body>
</html>