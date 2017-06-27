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
<body style="background:url(/github/blog/image/2.jpg); background-size: cover;">
	<div class="container">
	  	<div class="row clearfix">
	    	<div class="col-md-12 column">
	      		<nav class="navbar navbar-default" role="navigation">
	        		<div class="navbar-header">
	           			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="/github/blog">Dark Temple</a>
	        		</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			          	<ul class="nav navbar-nav">
			            	<li>
			               		<a href="/github/blog/Little_Tricky/Calculator">Calculator</a>
			            	</li>
			            	<li>
			               		<a href="/github/blog/Little_Tricky/Math_problems">Math problems</a>
			            	</li>
		                    <li>
		                        <a href="/github/blog/Little_Tricky/Inventory_Management">Inventory Management</a>
		                    </li>
			          	</ul>
	        		</div>
	      		</nav>
	    	</div>
	  	</div>
	</div>
    <div>
    	<form role="form" class="form-inline">
				<center>
				<div class = "form-group"> 
					<label><h4>The number of puizes:</h4></label>
					<input type="text" class="form-control" id="number">
			   	</div>
				<button type="button" class="btn btn-primary" onclick="make_pluz(number.value)">
	    			Submit
		    	</button>
		    	<button type="button" class="btn btn-success" onclick="check_pluz()">
		    		Check
		    	</button>
		    	</center>
		</form>
	</div>
	<form class="form-inline" role="form">
  		<div class="form-group">
			<div id="show_pluz">	
			</div>
		</div>
	</form>
</body>
</html>
<script type="text/javascript">
	var num1,num2;
	function make_pluz(x){
		clear_pluz();
		var st=document.getElementById("show_pluz");
		var str1="p",str2,str3="sp",str4="di";
		for(var i=0;i<x;i++){
			var newdiv=document.createElement("div");
			str2=str4+String(i);
			newdiv.id=str2;
			newdiv.className="col-md-3";
			st.appendChild(newdiv);
			num1=Math.floor(Math.random()*100);
			num2=Math.floor(Math.random()*100);
			var newspan=document.createElement("label");
			str2=str3+String(i);
			newspan.innerHTML=String(num1)+"+"+String(num2)+"=";
			newspan.id=str2;
			newspan.className="col-md-pull-1 col-md-2";
			var newinput=document.createElement("input");
			newinput.type="text";
			str2=str1+String(i);
			newinput.id=str2;
			newinput.className="form-control";
			newdiv.appendChild(newspan);
			newdiv.appendChild(newinput);
		}
	}
	function clear_pluz(){
		var str1="p",str2,str3="sp",str4="di";
		var st=document.getElementById("show_pluz");
		for(var i=0;i<10000;i++){
			str2=str4+String(i);
			if(document.getElementById(str2)==undefined) break;
			var temp=document.getElementById(str2);
			st.removeChild(temp);
		}
	}
	function check_pluz(){
		var str1="p",str2,str3="sp";
		var status=-1;
		for(var i=0;i<10000&&status==-1;i++){
			str2=str1+String(i);
			//alert(1);
			if(document.getElementById(str2)==undefined) break;
			var temp1=document.getElementById(str2).value;
			str2=str3+String(i);
			var temp2=document.getElementById(str2).innerHTML;
			if(temp1!=eval(temp2.substring(0,temp2.length-1))){
				status=i;
			}
		}
		if(status==-1){
			alert("Accepted");
		}else{
			str2="Wrong Answer on quiz "+(status+1);
			alert(str2);
		}
	}
</script>