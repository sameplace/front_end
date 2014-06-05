<!-- HEADER START -->
    <header>
      <?php include "nav.php"; ?>
      <div id="login">
        <form ng-submit="processSubmit()">
          <div class="form-group">
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" ng-model="email">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" ng-model="password">
          </div>
         <a href="service.php">service</a> /
         <a href="index.php">website</a>
         <button type="submit" id="submit_button_login" class="btn btn-default">Submit</button>
        </form>
      </div>
      <a href="#home" class="logo" data-scroll>Navigation Bar / Header</a>
    <div id="message">{{message_submit}}</div>

    </header>