<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Sameplace</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="css/animation.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/social_buttons.css">
    <link rel="stylesheet" href="css/charts.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/styles.css">
    <script>
        document.cookie="username=John Doe";
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/responsive-nav.js"></script>
    <script src="js/jquery.flot.min.js"></script>
    <script src="js/angular/angular.min.js" type="text/javascript"></script>
    <script src="js/angular/angular-ui-bootstrap.js" type="text/javascript"></script>
    <script src="//code.angularjs.org/1.2.16/angular-cookies.min.js" type="text/javascript"></script>
    <script src="js/model/mainApp.js" type="text/javascript"></script>
    <script src="js/controller/tabsController.js" type="text/javascript"></script>
    <script src="js/controller/adminController.js" type="text/javascript"></script>

    <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>
    
    <link href='http://fonts.googleapis.com/css?family=Arimo' rel='stylesheet' type='text/css'>
    <script>
    var homePage;
    $(function() {

        // We use an inline data source in the example, usually data would
        // be fetched from a server

        var data = [],
            totalPoints = 300;

        function getRandomData() {

            if (data.length > 0)
                data = data.slice(1);

            // Do a random walk

            while (data.length < totalPoints) {

                var prev = data.length > 0 ? data[data.length - 1] : 50,
                    y = prev + Math.random() * 10 - 5;

                if (y < 0) {
                    y = 0;
                } else if (y > 100) {
                    y = 100;
                }

                data.push(y);
            }

            // Zip the generated y values with the x values

            var res = [];
            for (var i = 0; i < data.length; ++i) {
                res.push([i, data[i]])
            }

            return res;
        }

        if(homePage){
          var plot = $.plot("#placeholder", [ getRandomData() ], {
                   series: {
                       shadowSize: 0   // Drawing is faster without shadows
                   },
                   yaxis: {
                       min: 0,
                       max: 100
                   },
                   xaxis: {
                       show: false
                   }
               });

               function update() {

                   plot.setData([getRandomData()]);

                   // Since the axes don't change, we don't need to call plot.setupGrid()

                   plot.draw();
                   setTimeout(update, updateInterval);
               }

               update();

               // Add the Flot version string to the footer

               $("#footer").prepend("Flot " + $.plot.version + " &ndash; ");

        }
        // Set up the control widget

        var updateInterval = 30;
        $("#updateInterval").val(updateInterval).change(function () {
            var v = $(this).val();
            if (v && !isNaN(+v)) {
                updateInterval = +v;
                if (updateInterval < 1) {
                    updateInterval = 1;
                } else if (updateInterval > 2000) {
                    updateInterval = 2000;
                }
                $(this).val("" + updateInterval);
            }
        });
    });
    </script>
  </head>

<!-- applied module and controller -->
  <body ng-app="mainApp" ng-controller="mainController">