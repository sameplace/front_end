    <footer>
    <div class="col-xs-12 footer_content">
    <div class="col-xs-3"></div>
    <div class="col-xs-6">Copyright 2014, Sameplace</div>
    <div class="col-xs-3"></div>
    </div>
    <div class="back_up"><a href="#home" data-scroll>TOP</a></div>
    </footer>

    <script src="js/fastclick.js"></script>
    <script src="js/scroll.js"></script>
    <script src="js/fixed-responsive-nav.js"></script>
    <script>
        $(function() {
            function runEffect() {
              var selectedEffect = "blind";
              $( "#widget" ).toggle( selectedEffect, 500 );
            };
         
            $( "#toggler" ).click(function() {
              runEffect();
              $('#widget').css('display', 'block');
              $('#widget').css('opacity', '1');
            });
          });
    </script>
  </body>
</html>