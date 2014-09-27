<!-- HOME START -->
    <section id="home">
      <div class="container">
      <div class="col-xs-8">
          <h1 class="expandOpen" id="headline_home"><strong>A real-time deal-engagement dashboard in the palm of your hand</strong></h1>
            <p id="main_paragraph">
            Sameplace uses the email exchanges you and 
            your sales team are already having with pipeline 
            opportunities to extract and inform you of key deal 
            engagement metrics you want to know.
            </p>
      </div>
      <div class="col-xs-4">
      </div> 
      <br clear="all">
      <div class="col-xs-4"></div>
      <div class="col-xs-8" id="home_content">
        <h1 class="expandOpen" id="headline_home"><strong>Examples</strong></h1>
        <ul style="padding-left:30px;">
          <li>How responsive are buyers to my sales team’s emails? </li>
          <li>Are buyers becoming more or less engaged? </li>
          <li>What sales content have we shared with an opportunity? </li>
          <li>How long is it taking my team to respond to buyer questions?</li>
        </ul>
      </div> 
    </section>

<!-- Profile Page START -->
    <section id="section1">
    <div class="container">
      <div id="section1_p">
        <div class="col-xs-8" id="headline_home">
         <h1 id="big_h_elem"><strong>ALL GAIN WITH NO PAIN</strong></h1>

         <h2><strong>No data entry required. No IT setup. No Kidding.</strong></h2>
         <p id="main_paragraph">Sameplace is a mobile app and service that you can be 
         beneﬁting from in less than 5 minutes. </p> 
         </div>
        <div class="col-xs-4">
        </div>  
      </div>      
    </div>
    </section>

    <div ng-controller="catchData"></div>

<!-- SECTION 2 START -->
    <section id="section2">
    <div class="container">
      <div id="section2_p">
      <div class="col-xs-8" id="headline_home">

       <h4>STAY UP TO DATE WITH PRODUCT ANNOUNCEMENTS</h4>
       <p id="main_paragraph">
        <form class="form-inline" role="form" ng-submit="processSubmit()">
          <input type="email" class="form-control" placeholder="Email" id="email_input" ng-model="email_subscribe">
          <button type="submit" class="btn btn-success">Subscribe</button>
        </form>
        <br clear="all">
        <button class="btn btn-lg btn-facebook" id="social_button"><i class="fa fa-facebook"></i></button>
        <button class="btn btn-lg btn-twitter" id="social_button"><i class="fa fa-twitter"></i></button>
        <button class="btn btn-lg btn-linkedin" id="social_button"><i class="fa fa-linkedin"></i></button>
        {{subscribe_message}}
       </p> 
       </div>
      <div class="col-xs-4">
      </div>    
      </div>
    </div>
    </section>
