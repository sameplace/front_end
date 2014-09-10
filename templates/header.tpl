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
   <!--  <div class="collapse navbar-collapse" id="navigation_header">
      <ul class="nav navbar-nav" id="header_link">
        <li<?php //if($page==1 || $page==null) echo " class='active'"; ?> >
                    <a href="index.php" data-scroll>Welcome</a></li>

                  <li<?php //if($page==2) echo " class='active'"; ?>>
                    <a href="index.php?page=2" data-scroll>Technology</a></li>   

                  <li<?php //if($page==3) echo " class='active'"; ?>>
                    <a href="index.php?page=3" data-scroll>Company</a></li>   

                  <li<?php //if($page==4) echo " class='active'"; ?>>
                    <a href="index.php?page=4" data-scroll>News</a></li>    

                  <li<?php //if($page==5) echo " class='active'"; ?>>
                    <a href="index.php?page=5" data-scroll>Contact</a></li>  
                        
                  <li<?php //if($page==6) echo " class='active'"; ?>>
                    <a href="index.php?page=6" data-scroll>Service</a></li> 
      </ul> 
    

    </div> -->
    <!-- /.navbar-collapse -->
    <div class="navbar-collapse collapse">
     <div class="navbar-form navbar-right">
      <ul class="list-inline">
        <li><a id="toggler" onclick="showme('widget', this.id);" href="#">Log in</a></li>
      </ul>
      <form id="widget" ng-submit="processLogin()">
        <div class="form-group">
          <input type="email" placeholder="Email" class="form-control" id="email" name="email" ng-model="email" onblur="if (this.placeholder=='') this.placeholder='Email';" onfocus="if (this.placeholder=='Email') this.placeholder='';">
        </div>
        <div class="form-group">
          <input type="password" placeholder="Password" class="form-control" id="password" name="password" ng-model="password" onblur="if (this.placeholder=='') this.placeholder='Password';" onfocus="if (this.placeholder=='Password') this.placeholder='';">
        </div>
        <button type="submit" class="btn btn-success_head transition">Sign in</button>
      </form>
    {{message_submit}}
     </div>
  </div><!-- /.container-fluid -->
</nav>