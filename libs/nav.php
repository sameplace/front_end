<?php //change navigation here, according to successful login 

	$file = $_SERVER['REQUEST_URI'];

	if($file=="/index.php" || $file=="/"){
		$home = "home";
		$section1 = "o";
		$section2 = "o";
		$section3 = "<a href='#section3' data-scroll></a>";
		$section4 = "<a href='#section4' data-scroll></a>";
	}
	else{
		$home = "service";
		$section1 = "Buyer View";
		$section2 = "Section 2";
		$section3 = "";
		$section4 = "";
	}

?>
<div class="nav-collapse">
<ul>
        <li class="active"><a href="#<?php echo $home; ?>" data-scroll></a></li>
        <li><a href="#section1" data-scroll></a></li>
        <li><a href="#section2" data-scroll></a></li>
        <li><?php echo $section3; ?></li>
        <li><?php echo $section4; ?></li>
</ul>    
</div>