
  <?php include "libs/head.php"; ?>

  <?php include "libs/header.php"; ?>

<!-- HOME START -->
    <section id="home">
    <div class="container">
        <h1 class="expandOpen">Service Page</h1>
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
            <div id="tab_above"><img width="130" src="images/fm.jpeg" />Sue Smith<a href=""><div id="tab_available" class="label label-success">Available now <br /><br />Click to contact</div></a></div>
            <div ng-controller="TabsDemoCtrl" id="tab_container">
            <div id="tab_button_container">
                <button class="btn btn-default btn-sm" ng-click="tabs[0].active = true" id="tab_button">Documents</button><br />
                <button class="btn btn-default btn-sm" ng-click="tabs[1].active = true" id="tab_button">People</button><br />
                <button class="btn btn-default btn-sm" ng-click="tabs[2].active = true" id="tab_button">Email</button>
            </div>
            <div id="tab_content">
              <tabset justified="true">
                <tab ng-repeat="tab in tabs" heading="{{tab.title}}" active="tab.active">
                  {{tab.content}}
                </tab>
              </tabset>
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

<!-- SECTION 3 START -->
    <section id="section3">
    <div class="container">
      <h1>Section 3</h1>
      <p id="section3_p">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec iaculis mi. Fusce ac volutpat ante, nec lacinia lectus. Duis non nisl felis. Phasellus in lacinia lacus. Suspendisse ac vulputate risus. Integer quis sem elit. Sed pretium mauris ac rhoncus porttitor. Quisque pharetra dolor non sodales feugiat. Duis sollicitudin leo ut molestie ornare. Nunc sed purus egestas, molestie metus tincidunt, lobortis mi. In hac habitasse platea dictumst. Suspendisse id est blandit, volutpat turpis a, dictum dolor. Praesent aliquet sapien non luctus varius. Integer lacus neque, vestibulum at fermentum vitae, iaculis sit amet elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec iaculis mi. Fusce ac volutpat ante, nec lacinia lectus. Duis non nisl felis. Phasellus in lacinia lacus. Suspendisse ac vulputate risus. Integer quis sem elit. Sed pretium mauris ac rhoncus porttitor. Quisque pharetra dolor non sodales feugiat. Duis sollicitudin leo ut molestie ornare. Nunc sed purus egestas, molestie metus tincidunt, lobortis mi. In hac habitasse platea dictumst. Suspendisse id est blandit, volutpat turpis a, dictum dolor. Praesent aliquet sapien non luctus varius. Integer lacus neque, vestibulum at fermentum vitae, iaculis sit amet elit.
      </p>
    </div>
    </section>

<!-- SECTION 4 START -->
    <section id="section4">
    <div id="section4_p">
    <div class="container">
      <h1>Section 4</h1>   

<!-- processing the form with controller function -->
      <form ng-submit="processForm()">
        <div id="input_100" class="input-group input-group-lg">
          <input type="text" class="form-control" placeholder="e-mail address">
        </div>
        <textarea id="input_100" class="form-control" rows="7" placeholder="Text"></textarea>
        <button id="send_mail" type="submit" class="btn btn-default btn-lg">
          <span class="glyphicon glyphicon-envelope"></span> Send
        </button>
      </form>

        <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec iaculis mi. Fusce ac volutpat ante, nec lacinia lectus. Duis non nisl felis. Phasellus in lacinia lacus. Suspendisse ac vulputate risus. Integer quis sem elit. Sed pretium mauris ac rhoncus porttitor. Quisque pharetra dolor non sodales feugiat. Duis sollicitudin leo ut molestie ornare. Nunc sed purus egestas, molestie metus tincidunt, lobortis mi. In hac habitasse platea dictumst. Suspendisse id est blandit, volutpat turpis a, dictum dolor. Praesent aliquet sapien non luctus varius. Integer lacus neque, vestibulum at fermentum vitae, iaculis sit amet elit.
        </p>
      </div>
    </div>
    </section>

<!-- FOOTER START -->
  <?php include "libs/footer.php"; ?>