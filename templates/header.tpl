<!-- HEADER START -->
    <header>
      <?php include "navigation.tpl"; ?>
      <form ng-submit="processSubmit()">
      <div class="header_inputs">
          <input type="email" class="form-control" id="email" name="email" placeholder="Email" ng-model="email">
          <input type="password" class="form-control" id="password" name="password" placeholder="Password" ng-model="password">
          <button type="submit" id="submit_button_login" class="btn btn-default">Login</button>
        <a href="index.php?page=7">Press here to register</a>
      </div>
      </form>

    <!-- PLACE FOR LOGO -->
      <a href="#home" class="logo" data-scroll></a>

      <div id="message">{{message_submit}}</div>
    </header>