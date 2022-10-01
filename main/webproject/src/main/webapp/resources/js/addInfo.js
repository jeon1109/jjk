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
				title : document.querySelector("#title").value,
				author : document.querySelector("#author").value,
				age : document.querySelector("#age").value,
				context : document.querySelector("#context").value,
			},
			 methods: { // 메서드 구현
				submitForm: function() {
					
					var form = new FormData(formSub);
					form.append("title", title.value);
					form.append("author", author.value);
					form.append("context", context.value);
					form.append("age", age.value);
										
					const config = {
						method: 'POST', // 또는 'PUT'
						body: form,
					    processData: false,
            			contentType: false,
						headers: {
					          'Content-Type': 'application/x-www-form-urlencoded'
					    }
					};
					
		
					fetch("/insert.do", config).then(function(res){
						alert("성공");
						window.location.href = "/addInfo.do";
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