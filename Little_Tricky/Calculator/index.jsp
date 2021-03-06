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
<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column">
		</div>
		<div class="col-md-4 column">
			<form class="form-horizontal" role="form" name="calc">
				<div class="form-group">
			    	<label for="result">Result:</label>
			    	<input type="text" class="form-control" name="result" value="" />
			    	<br>
				    <button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_1" onclick="cal(1)">CE</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_2" onclick="cal(2)">%</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_3" onclick="cal(3)"><-</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_4" onclick="cal(4)">/</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_5" onclick="cal(5)">7</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_6" onclick="cal(6)">8</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_7" onclick="cal(7)">9</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_8" onclick="cal(8)">*</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_9" onclick="cal(9)">4</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_10" onclick="cal(10)">5</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_11" onclick="cal(11)">6</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_12" onclick="cal(12)">-</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_13" onclick="cal(13)">1</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_14" onclick="cal(14)">2</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_15" onclick="cal(15)">3</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_16" onclick="cal(16)">+</button>
					<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_17" onclick="cal(17)">+/-</button>
				   	<button type="button" class="col-md-3 column btn btn-primary btn-sm" id="b_18" onclick="cal(18)">0</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_19" onclick="cal(19)">.</button>
				   	<button type="button" class="col-md-3 column btn btn-default btn-sm" id="b_20" onclick="cal(20)">=</button>
				</div>
			</form>
		</div>
		<div class="col-md-5 column">
		</div>
	</div>
</div>
</body>
</html>
<script type="text/javascript">
	function cal(x){
		var str=calc.result.value;
		if(str=="0"||str=="undefined") str="";
		switch(x){
			case 1:calc.result.value="";break;
			case 2:calc.result.value=str+'%';break;
			case 3:calc.result.value=str.substring(0,str.length-1);break;
			case 4:calc.result.value=str+'/';break;
			case 5:calc.result.value=str+'7';break;
			case 6:calc.result.value=str+'8';break;
			case 7:calc.result.value=str+'9';break;
			case 8:calc.result.value=str+'*';break;
			case 9:calc.result.value=str+'4';break;
			case 10:calc.result.value=str+'5';break;
			case 11:calc.result.value=str+'6';break;
			case 12:calc.result.value=str+'-';break;
			case 13:calc.result.value=str+'1';break;
			case 14:calc.result.value=str+'2';break;
			case 15:calc.result.value=str+'3';break;
			case 16:calc.result.value=str+'+';break;
			case 17:calc.result.value=str+"*-1";break;
			case 18:calc.result.value=str+'0';break;
			case 19:calc.result.value=str+'.';break;
			case 20:calc.result.value=eval(str);break;
		}
	}
</script>