<?php //change navigation here, according to successful login 

	$file = $_SERVER['REQUEST_URI'];

	if($file=="/index.php"){
		$home = "home";
		$section1 = "Section 1";
		$section2 = "Section 2";
		$section3 = "<li><a href='#section3' data-scroll>Section 3</a></li>";
		$section4 = "<li><a href='#section4' data-scroll>Section 4</a></li>";
	}
	else{
		$home = "service";
		$section1 = "Buyer View";
		$section2 = "Section 2";
		$section3 = "";
		$section4 = "";
	}

?>
<nav class="nav-collapse">
        <ul>
          <li class="active"><a href="#<?php echo $home; ?>" data-scroll><?php echo $home; ?></a></li>
          <li><a href="#section1" data-scroll><?php echo $section1; ?></a></li>
          <li><a href="#section2" data-scroll><?php echo $section2; ?></a></li>
          <?php echo $section3; ?>
          <?php echo $section4; ?>          
        </ul>
      </nav>