 <section id="service">
    <div class="container">

      <!-- Profile page -->
      <div id="profile_container">
        <form ng-submit="processRegistration()">
          <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Username:</span> 
                <input type="text" class="form-control" placeholder="Username" id="username" ng-model="username">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Email:</span> 
                <input type="text" class="form-control" placeholder="Email" id="email" ng-model="email">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Password:</span> 
                <input type="password" class="form-control" placeholder="Password" id="password" ng-model="password">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Password:</span> 
                <input type="password" class="form-control" placeholder="Repeat Password" id="password" ng-model="password_repeat">
              </div>
             <button id="confirm_profile" type="submit" class="btn btn-default btn-lg">
                 Register
              </button>
              </div><br clear="all">
           </div>
              <div id="message">{{message_box}}</div>
        </form>            
      </div>

    </section>