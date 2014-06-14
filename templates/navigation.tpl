<?php if(isset($_GET['page'])) $page = $_GET['page']; else $page=""; ?>
<form ng-submit="processSubmit()">
<nav class="header_link">
        <ul>
          <li<?php if($page==1 || $page==null) echo " class='active'"; ?> >
          	<a href="index.php" data-scroll>Welcome</a></li>

          <li<?php if($page==2) echo " class='active'"; ?>>
          	<a href="index.php?page=2" data-scroll>Technology</a></li>   

          <li<?php if($page==3) echo " class='active'"; ?>>
          	<a href="index.php?page=3" data-scroll>Company</a></li>   

          <li<?php if($page==4) echo " class='active'"; ?>>
          	<a href="index.php?page=4" data-scroll>News</a></li>    

          <li<?php if($page==5) echo " class='active'"; ?>>
          	<a href="index.php?page=5" data-scroll>Contact</a></li>  
          	    
          <li<?php if($page==6) echo " class='active'"; ?>>
          	<a href="index.php?page=6" data-scroll>Service</a></li>      
        </ul>
      </nav>
</form>  
