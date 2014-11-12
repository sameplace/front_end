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
         <a class="navbar-brand" href="/">Sameplace</a>
       </div>
       <div class="navbar-collapse collapse">
         <div class="navbar-form navbar-right">
            <ul class="list-inline">
               
           <!--      <li><a href="#"></a></li>
                <li><a href="#"></a></li> -->
            <?php if(isset($_SESSION['logged']) && $_SESSION['logged']==1 && isset($_COOKIE['PHPSESSID'])): ?>
                <li><a ng-click="logout()" href="#">Log out</a></li>
                <li><a href="?page=2">Dealspaces</a></li>
                <li><a href="?page=3">Profile</a></li>
              </ul>
            <?php else: ?>
                <li><a id="toggler" onclick="showme('widget', this.id);" href="#">Log in</a></li>
              </ul>

            
             <form id="widget" ng-submit="processLogin()">
              <div class="form-group">
                <input type="text" placeholder="Email" class="form-control" id="email" name="email" ng-model="email" onblur="if (this.placeholder=='') this.placeholder='Email';" onfocus="if (this.placeholder=='Email') this.placeholder='';">
              </div>
                <div class="form-group">
                <input type="password" placeholder="Password" class="form-control" id="password" name="password" ng-model="password" onblur="if (this.placeholder=='') this.placeholder='Password';" onfocus="if (this.placeholder=='Password') this.placeholder='';">
              </div>
                <button type="submit" data-toggle="modal" data-target="#myModal" class="btn btn-success transition">Go</button>
              </form>
            <?php endif; ?>

         </div>
       </div><!--/.navbar-collapse -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                          </div>
                          <div class="modal-body {{message_class}}">
                            {{login_message}}
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          </div>
                        </div>
                      </div>
                    </div>
     </div>
  </div><!-- /.container-fluid -->
</nav>