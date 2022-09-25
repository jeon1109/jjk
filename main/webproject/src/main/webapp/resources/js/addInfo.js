/**
 * 
 */
window.vue = window.vue || {};

/* vue 인스턴스 생성 */
vue.add = (function() {
	
	
	/* vue 전역 컴포넌트 */	
	function init(){
		new Vue ({
			el : '#addEapp',
			data : {
				title : document.querySelector("#title"),
				author : document.querySelector("#author"),
				content : document.querySelector("#content"),
			},
			 methods: { // 메서드 구현
				submitForm: function(event) {
					var form = new FormData();
					form.append("title", this.title);
					form.append("author", this.author);
					form.append("content", this.content);
					console.log(form);
					
					const config = {
						 method: 'POST', // 또는 'PUT'
						  headers: {
						    'Content-Type': 'application/json',
						  }
					};
		
					const url = "/insert.do";
					console.log(url);
					fetch("/insert.do", config).then(function(){
						alert("성공");
					});
				}
			}
		
		});
		
		
	} 
	
	function component(){
		var compo = {
			title : document.querySelector("#title"),
			author : document.querySelector("#author"),
			content : document.querySelector("#content")
		}
		alert(compo);
		return compo;
	}
	
	function test(){
		let form = new FormData();
		alert("타이틀 =="+ vue.add.component.compo.title);
		form.append("title", vue.add.component.compo.title);
		form.append("author", vue.add.component.compo.author);
		form.append("content", vue.add.component.compo.content);
		
		console.log(form);
		alert("서브밋");
	}
	
	function click() {
		alert("클릭");
	}
	
	
	return {
		test : test,
		click: click,
		init:init,
	}
	
})();