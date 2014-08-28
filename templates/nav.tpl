<?php //change navigation here, according to successful login 

	$file = $_SERVER['REQUEST_URI'];

	if($file=="/index.php" || $file=="/") {
		$home = "<a href='#home' data-scroll></a>";
		$section1 = "<a href='#section1' data-scroll></a>";
		$section2 = "<a href='#section2' data-scroll></a>";
	}
	else{
		$home = "";
		$section1 = "";
		$section2 = "";
	}
?>
<div class="nav-collapse">
<ul>
        <li class="active"><?php echo $home; ?></li>
        <li><?php echo $section1; ?></li>
        <li><?php echo $section2; ?></li>
</ul>    
</div>