/**
 * 
 */
window.vue = window.vue || {};

vue.ui = (function() {
	function read(){
		
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
	}
	
	
	return {
		read : read,
	}
	
})();



	
