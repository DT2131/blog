<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="/github/blog/css/bootstrap.min.css">
	<link rel="stylesheet" href="/github/blog/css/ecnuojcss.css">
	<script src="/github/blog/js/jquery.min.js"></script>
	<script src="/github/blog/js/bootstrap.min.js"></script>
	<title>
		Dark Temple
	</title>
</head>
<body>

	<div class="navbar-container container">
	  	<div class="navbar-header">
	    <button aria-controls="bs-navbar" aria-expanded="false" class="collapsed navbar-toggle" data-target="#bs-navbar" data-toggle="collapse" type="button">
	      	<span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></button>
	    	<a href="/github/blog" class="navbar-brand">Dark Temple</a>
	  	</div>
	  	<nav class="collapse navbar-collapse" id="bs-navbar">
		    <ul class="nav navbar-nav">
		      	<li class=""><a href="Article/">Article</a></li>
		      	<li class=""><a href="Photo/">Photo</a></li>
		      	<li class=""><a href="Little_Tricky/">Little Tricky</a></li>
		      	<li class=""><a href="Experience/">Experience</a></li>
		      	<li class=""><a href="Others/">Others</a></li>
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		        <li>
		          	<a data-toggle="modal" data-target="#LoginModal">Login</a>
		        </li>
		        <li>
		          	<a data-toggle="modal" data-target="#myModal">Register</a>
		        </li>
	    	</ul>
		    <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="LoginModalLabel">
								Login
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
							    <label>Username</label>
							    <input type="text" class="form-control" id="name" placeholder="Username..." onblur="check_username()">
							    <div id="namechecker"></div>
							    <label>Password</label>
							    <input type="password" class="form-control" id="password" placeholder="Password..." onblur="check_password()">
							    <div id="passwordchecker"></div>
							    <label>Password Confirm</label>
							    <input type="password" class="form-control" id="password_confirm" placeholder="Password..." onblur="confirm_password()">
							    <div id="passwordconfirmer"></div>
							    <label>Captcha</label>&nbsp&nbsp&nbsp
							    <button type="button" class="btn btn-info btn-xs" onclick="make_checker(0);check_checker();" id="show_checker">checker</button>
							    <input type="text" class="form-control" id="checker" placeholder="请输入验证码..." onfocus="make_checker(1)" onkeyup="check_checker()">
							    <div id="status_checker"></div>
						  	</div>
						</div>
						<div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			                <button type="button" class="btn btn-primary">Submit</button>
			            </div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
	  	</nav>
	</div>
	<div class="masthead" style="background-image: url(image/1.jpg);">
	    <div class="masthead-container">
		    <h1>Dark Temple</h1>
		    <span> Und wenn du lange in einen Abgrund blickst, blickt der Abgrund auch in dich hinein. </span>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	function check_username(){
		var status=0;
		var str=document.getElementById("name").value;
		
		if(str.length<6||str.length>13)  status=1;
		else{
			for(var i=0;i<str.length;i++){
				if(!((str.charAt(i)>='a'&&str.charAt(i)<='z')||(str.charAt(i)>='A'&&str.charAt(i)<='Z')||(str.charAt(i)>='0'&&str.charAt(i)<='9')||str.charAt(i)=='_')){
					status=2;break;
				}
			}
		}
		if(status==1) str="The length of Username between 6 to 12 characters are expected.";
		else if(status==2) str="Username should contain only Latin letters, digits or underscore.";
		else str="";
		document.getElementById("namechecker").innerHTML=str;
	}
	function check_password(){
		var status=0;
		var str=document.getElementById("password").value;
		if(str.length<6||str.length>18)  status=1;
		else{
			for(var i=0;i<str.length;i++){
				if(!((str.charAt(i)>='a'&&str.charAt(i)<='z')||(str.charAt(i)>='A'&&str.charAt(i)<='Z')||(str.charAt(i)>='0'&&str.charAt(i)<='9')||str.charAt(i)=='_')){
					status=2;break;
				}
			}
		}
		if(status==1) str="The length of Password between 6 to 18 characters are expected.";
		else if(status==2) str="Password should contain only Latin letters, digits or underscore.";
		else str="";
		document.getElementById("passwordchecker").innerHTML=str;
	}
	function confirm_password(){
		var str;
		if(document.getElementById("password").value==document.getElementById("password_confirm").value) str="";
		else str="Different Password";
		document.getElementById("passwordconfirmer").innerHTML=str;
	}
	function make_checker(x){
		if(x==0||document.getElementById("show_checker").innerHTML=="checker"){
			var str="";
			for(var i=0;i<4;i++)
				str+=Math.ceil(Math.random()*10)%10;
			document.getElementById("show_checker").innerHTML = str;
		}

	}
	function check_checker(){
		var str1=document.getElementById("show_checker").innerHTML;
		var str2=checker.value;
		var status="";
		if(str1!=str2){
			status="Wrong checker";	
		}
		document.getElementById("status_checker").innerHTML=status;
	}
    setTimeout(function() {
     	$(".masthead-container").css('background', 'rgba(0, 0, 0, 0.5)');
    }, 0);
</script>
