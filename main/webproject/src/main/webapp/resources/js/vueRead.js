/**
 * 
 */
window.vue = window.vue || {};

/* vue 인스턴스 생성 */
vue.ui = (function() {
	
	/* vue 전역 컴포넌트 */	
	function component(){
		
		new Vue ({
			el : '#app',
			mounted : function(){
				console.log("");
			    console.log("[MainComponent] : [mounted] : [start]");
			    console.log("설 명 : DOM 렌더링 완료");
			    console.log("");
		
		    // [axios http 요청 수행 실시]
		    this.$axios.get("http://jsonplaceholder.typicode.com/posts")
		      .then(res => {
		        console.log("");
		        console.log("[MainComponent] : [axios] : [response]");
		        console.log("응답 데이터 : " + JSON.stringify(res.data));
		        console.log("");        
		      })
		      .catch(error => {
		        console.log("");
		        console.log("[MainComponent] : [axios] : [error]");
		        console.log("에러 데이터 : " + error.data);
		        console.log(""); 
		      })
		      .finally(() => {
		        console.log("");
		        console.log("[MainComponent] : [axios] : [complete]");
		        console.log(""); 
		      })
			},
			created : function(){
				console.log('created');
				eventBus.$on('trigger', function(value){
					console.log('값 =='+value);
				});
			}
		
		});
		
		return component;
	} 
	
	
	function init(){
		var app = vue.ui.component();
	/* var app = new Vue ({
			el : '#app',
			data : {
				ida : 10,
				classA : 'contain',
				styleA : 'color:blue',
				message : "test sueccess"
			},
			beforeCreate : function(){
				console.log("beforeCreate");
			},
			created : function(){
				console.log("created");
			},
			mounted : function(){
				console.log("mounted");
			},
			methods : {
				printText : function(){
					alert("test!@!@!@!@ success");
				}
			}
			
		});*/
		
		return app;
	}
	
	function test(){
		 Vue.createApp({
		  data() {
		    return {
		      counter: 0
		    }
		  }
		})
		.mount('#basic-event') 
		
	}
	
	function commonAxious(){
		const app = createApp(App) ; // [앱 생성 실시]
		
		// [앱 글로벌 변수 선언 실시]
		app.config.globalProperties.$axios = axios;  // [axios / http 통신]
		app.mount('#app'); // [main 아이디 : 렌더링 시작점] 
		
		return app;
	}
	
	
	
	
	return {
		init : init,
		component:component,
		test:test,
		commonAxious:commonAxious
	
	}
	
})();



	
