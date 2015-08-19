

<head>
	<link href="css/skitter.styles.css" type="text/css" media="all" rel="stylesheet" />
		<link href="css/change.css" type="text/css" media="all" rel="stylesheet" />
	<!-- Homepage Specific Elements -->
	<script src="js/jquery-1.6.3.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.animate-colors-min.js"></script>
	<script src="js/jquery.skitter.min.js"></script>
<!--script -->
	<script>
	$(document).ready(function(){
		
		$('.box_skitter_large').skitter({label: false, numbers: false});
		$('.box_skitter_small').skitter({label: false, numbers: false, interval: 1000});
		$('.box_skitter_medium').css({width: 500, height: 200}).skitter({show_randomly: true, navigation: false, dots: true, interval: 4000});
		$('.box_skitter_normal').css({width: 400, height: 300}).skitter({animation: 'blind', interval: 2000, hideTools: true});
		$('pre.code').highlight({source:1, zebra:1, indent:'space', list:'ol'});
		
	});
	</script>
</head>
<body>
 <div class="change">
    <div class="border_box">
			<div class="box_skitter box_skitter_large">
				<ul>
					<li><a href="#cubeRandom"><img src="images/1.jpg" class="cubeRandom" /></a><div class="label_text"><p>cubeRandom</p></div></li>
					<li><a href="#block"><img src="images/2.jpg" class="block" /></a><div class="label_text"><p>block</p></div></li>
					<li><a href="#cubeStop"><img src="images/3.jpg" class="cubeStop" /></a><div class="label_text"><p>cubeStop</p></div></li>
					<li><a href="#cubeHide"><img src="images/4.jpg" class="cubeHide" /></a><div class="label_text"><p>cubeHide</p></div></li>
					<li><a href="#cubeHide"><img src="images/5.jpg" class="cubeHide" /></a><div class="label_text"><p>cubeHide</p></div></li>
				</ul>
			</div>
		</div>  
    </div> 		
    
</body>
</html>