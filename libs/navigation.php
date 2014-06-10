<form ng-submit="processSubmit()">
<nav class="header_link">
        <ul>
          <li class="active"><a href="index.php" data-scroll>Welcome</a></li>
          <li><a href="technology.php" data-scroll>Technology</a></li>        
          <li><a href="company.php" data-scroll>Company</a></li>        
          <li><a href="news.php" data-scroll>News</a></li>        
          <li><a href="contact.php" data-scroll>Contact</a></li>      
          <li><a href="service.php" data-scroll>Service</a></li>      
          <li>
              <input type="email" class="form-control" id="email" name="email" placeholder="Email" ng-model="email">
           </li>
           <li>
              <input type="password" class="form-control" id="password" name="password" placeholder="Password" ng-model="password">
           </li>
         <!--   <a href="service.php">service</a> /
           <a href="index.php">website</a> -->
           <li><button type="submit" id="submit_button_login" class="btn btn-default">Submit</button></li>
        </ul>
      </nav>
</form>  
