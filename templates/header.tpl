<!-- HEADER START -->
    <header>
      <?php include "navigation.tpl"; ?>
      <form ng-submit="processSubmit()">
      <div class="header_link_inputs">
      <ul>
        <li>
           <input type="email" class="form-control" id="email" name="email" placeholder="Email" ng-model="email">
        </li>
        <li>
           <input type="password" class="form-control" id="password" name="password" placeholder="Password" ng-model="password">
        </li>
        <li><button type="submit" id="submit_button_login" class="btn btn-default">Submit</button></li>
        </ul><br />
        <div class="register_link"><a href="index.php?page=7">Not registered yet? Click here to register</a></div>
      </div>
    </form>

    <!-- PLACE FOR LOGO -->
      <a href="#home" class="logo" data-scroll></a>

      <div id="message">{{message_submit}}</div>
        </header>