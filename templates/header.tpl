<?php if(isset($_GET['page'])) $page = $_GET['page']; else $page=""; ?>
<nav class="navbar navbar-default" role="navigation" id="header">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
   <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
           <span class="sr-only">Toggle navigation</span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="http://bio.goslingmedia.com/welcome/home">Sameplace Logo</a>
       </div>
       <div class="navbar-collapse collapse">
         <div class="navbar-form navbar-right">
            <ul class="list-inline">
               
           <!--      <li><a href="#"></a></li>
                <li><a href="#"></a></li> -->
                <li><a id="toggler" onclick="showme('widget', this.id);" href="#">Log in</a></li>

                          </ul>

          
                       <form id="widget" ng-submit="processLogin()">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control" id="email" name="email" ng-model="email" onblur="if (this.placeholder=='') this.placeholder='Email';" onfocus="if (this.placeholder=='Email') this.placeholder='';">
            </div>
              <div class="form-group">
              <input type="password" placeholder="Password" class="form-control" id="password" name="password" ng-model="password" onblur="if (this.placeholder=='') this.placeholder='Password';" onfocus="if (this.placeholder=='Password') this.placeholder='';">
            </div>
              <button type="submit" class="btn btn-success transition">Sign in</button>
            </form>
         </div>
       </div><!--/.navbar-collapse -->
    {{message_submit}}
     </div>
  </div><!-- /.container-fluid -->
</nav>