
  <?php include "libs/head.php"; ?>

  <?php include "libs/header.php"; ?>

<!-- HOME START -->
    <section id="service">
    <div class="container">
      <div id="home_l">
      <div id="home_left">
      <div id="profile_container">
        <form ng-submit="processForm()">
          <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Username:</span> 
                <input type="text" class="form-control" placeholder="username" id="username" ng-model="username">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Real Name:</span> 
                <input type="text" class="form-control" placeholder="realname" id="realname" ng-model="realname">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Email:</span> 
                <input type="text" class="form-control" placeholder="email" id="email" ng-model="email">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Question:</span> 
                <input type="text" class="form-control" placeholder="question" id="question" ng-model="question">
              </div>
              <div id="input_100" class="input-group input-group-lg">
                <span id="profile_misc">Answer:</span> 
                <input type="text" class="form-control" placeholder="answer" id="answer" ng-model="answer">
              </div>
             <button id="confirm_profile" type="submit" class="btn btn-default btn-lg">
                 Change
              </button>
              </div><br clear="all">
           </div>
              <div id="message">{{message_box}}</div>

        </form>            
      </div>
      </div>
      </div>

    </section>

<!-- Profile Page START -->
    <section id="section1">
    <div class="container">
      <div id="section1_p">
      <!-- Profile page -->
      <div id="tab_above"><img width="130" src="images/fm.jpeg" />Sue Smith<a href="">
      <div id="tab_available" class="label label-success">Available now <br /><br />Click to contact</div></a></div>
          <div id="tab_container">
            <div id="tab_button_container">
                <button class="btn btn-default btn-sm" ng-click="tab = documentsTab" id="tab_button">Documents</button><br />
                <button class="btn btn-default btn-sm" ng-click="tab = peopleTab" id="tab_button">People</button><br />
                <button class="btn btn-default btn-sm" ng-click="tab = emailTab" id="tab_button">Email</button>
            </div>
            <div id="tab_content">
                {{tab}}
            </div>
          </div> 
      </div>      
    </div>
              <div id="message">{{message_box}}</div>

    </section>

<!-- SECTION 2 START -->
    <section id="section2">
    <div class="container">
      <h1>Section 2</h1>
      <div id="section2_p">
         
     
      </div>
    </div>
    </section>

<!-- FOOTER START -->
  <?php include "libs/footer.php"; ?>