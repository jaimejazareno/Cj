$ ->
	$("#btn_login").click ->
		 username=$("#account_username").val()
		 password=$("#account_password").val()
			$.ajax(
 		 	method: "POST",
  			url: "checkLogin",
  			data: { username: username, password: password }
			)
  			.done (msg) ->
		   		 alert( "Data Saved: " + msg["username"] )

 	

  
