<?php if(isset($_GET['page'])) $page = $_GET['page']; else $page=""; ?>
<nav class="navbar navbar-default" role="navigation" id="header">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation_header" style="float:left;">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="navigation_header">
      <ul class="nav navbar-nav" id="header_link">
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
    

    </div><!-- /.navbar-collapse -->
    <form ng-submit="processSubmit()">
     <div class="header_inputs">
         <input type="email" class="form-control" id="email" name="email" placeholder="Email" ng-model="email">
         <input type="password" class="form-control" id="password" name="password" placeholder="Password" ng-model="password">
         <button type="submit" id="submit_button_login" class="btn btn-default">Login</button>
       <a href="index.php?page=7">Press here to register</a>
     </form>
     </div>
  </div><!-- /.container-fluid -->
</nav>