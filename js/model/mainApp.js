angular.module('mainApp', ['ngCookies']).controller('mainController', ['$scope', '$http', '$cookies', '$element', function($scope, $http, $cookies, $element) {
	//function processForm takes text inputs from profile area, and send all information to php file, for now it responds in message_box div
	$scope.formData = {};
		$scope.processForm = function() {
			$scope.formData.username = $scope.username;
			$scope.formData.realname = $scope.realname;
			$scope.formData.email = $scope.email;
			$scope.formData.question = $scope.question;
			$scope.formData.answer = $scope.answer;

			$http.post('libs/test.php', $scope.formData)
			.success(function(json) {
				$scope.message_box = json;
			});
		};

		$scope.processRegistration = function() {
			$scope.formData.username = $scope.username;
			$scope.formData.email = $scope.email;
			$scope.formData.password = $scope.password;
			$scope.formData.password_repeat = $scope.password_repeat;


			$http.post('libs/test.php', $scope.formData)
			.success(function(json) {
				$scope.message_box = json;
			});
		};

		function showme(id, linkid) {
                    var divid = document.getElementById(id);
                    var toggleLink = document.getElementById(linkid);
                    if (divid.style.visibility == 'visible') {
                        toggleLink.innerHTML = 'Log in';
                        divid.style.visibility = 'hidden';
                        divid.style.opacity = '0';
                    }
                    else {
                        toggleLink.innerHTML = 'Close';
                        divid.style.visibility = 'visible';
                        divid.style.opacity = '1';
                    }
                }

		//function processSubmit takes text inputs from login, and send all information to php file on web server, returning message, if user is logged in, or not
		$scope.formSubmitData = {};
		$scope.processLogin = function() {

			$scope.formData = {'email' : $scope.email, 'pass' : $scope.password};

			$http({
			method  :'POST',
			url:'libs/login.php',
			data: $.param($scope.formData),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				$scope.login_message = data;
				if(data=="Success"){
					$scope.message_class = 'alert alert-success';
					var ulElement = $element.find('.list-inline');
					showme('widget', 'toggler');
					$element.find('#toggler').remove();
					ulElement.append('<li><a ng-click="logout()" href="#">Log out</a></li><li><a href="?page=2">Dealspaces</a></li><li><a href="?page=3">Profile</a></li></ul>');

					// setTimeout(function(){location.reload();}, 3000);
				}
				else {
					$scope.message_class = 'alert alert-danger';
				}
			});
		};

		function whirlyOn() {
			angular.element(".whirly").css('display','block');
		}

		function whirlyOff() {
			angular.element(".whirly").fadeOut('slow');
		}

		function randomColor() {
			var colors = ['#E87A1C', '#D7D67F', '#EF799D' , '#976BE4', '#09CFCF', '#C84D4D', '#CD3E3E'];
			var random = Math.floor((Math.random()*colors.length));
			return colors[random];
		}

		//get all deaspaces
		$scope.catchData = function(file) {
			whirlyOn();
			$http({ 
			method  :'GET',
			url:'libs/'+file+'.php',
			data: $.param($scope.formData),
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				$scope.result = angular.fromJson(data);
				angular.forEach($scope.result, function(value) {
					value['color'] = randomColor();
				});

				whirlyOff();
			});
		};

		$scope.catchDataUser = function(file) {
			whirlyOn();
			$http({ 
			method  :'GET',
			url:'libs/'+file+'.php',
			data: $.param($scope.formData),
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				$scope.result = angular.fromJson(data);
				whirlyOff();
				angular.element('.userPage').css('display', 'block');
			});
		};

		$scope.backDealspaces = function() {
			angular.element('#service').css('display', 'block');
			angular.element('.singleDealspace').css('display', 'none');
			$scope.selection = 'default';
		}

		//get dealspace
		$scope.sendAndCatchData = function(file, oid, name, parts) {
			whirlyOn();
			$scope.parties = parts;
			$scope.selected_dealspace_oid = oid;

			//get participants
				var final_participants = '';
				var counter = 0;
				angular.forEach($scope.parties, function(value) {
					if(counter==0){
						final_participants = value;
					} else {
						final_participants = final_participants + ',' + value;
					}
					counter++;
					
				});
				sendAndCatchDataParticipants('get_participants', $scope.selected_dealspace_oid, final_participants);
				
			$scope.oid = {'oid' : oid};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			data: $.param($scope.oid),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				$scope.single_dealspace = angular.fromJson(data);
				$scope.dealspace_name = name;
				if($scope.dealspace_name=='_____defaultDealSpace_____'){
					$scope.default_dealspace = true;
				} else {
					$scope.default_dealspace = false;
				}
				$scope.dealspace_id = oid;
				angular.element('#service').css('display', 'none');
				angular.element('.singleDealspace').css('display', 'block');
				whirlyOff();


			});
		};

		//get participants
		var sendAndCatchDataParticipants = function(file, oid, p) {
			whirlyOn();
			$scope.oid = {'oid' : oid, 'participants' : p};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			data: $.param($scope.oid),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				$scope.participants = angular.fromJson(data);
			});
		};

		//rename dealspace
		$scope.renameDealspace = function(file, oid) {
			var input = document.getElementById('new_name');
			var rename = input.value;
			$scope.oid = {'oid' : oid, 'rename' : rename};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			data: $.param($scope.oid),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data) {
				$scope.selection = 'default';
			});
		};

		//change password
		$scope.changePassword = function(file, oid) {
			var old_pass = document.getElementById('old_pass').value;
			var new_pass = document.getElementById('new_pass').value;
			$scope.post_data = {'oid' : oid, 'old_pass' : old_pass, 'new_pass' : new_pass};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			data: $.param($scope.post_data),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data) {
			});
		};

		//get mime
		$scope.sendAndCatchDataMime = function(file, oid) {
			whirlyOn();
			$scope.dealspace_oid = oid;
			$scope.oid = {'oid' : oid};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			data: $.param($scope.oid),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				$scope.mime = angular.fromJson(data);
				$scope.mimeObject = $scope.mime[0];
				$scope.check_oid = $scope.mime[0].oid;
				$scope.mime = $scope.mime[1];
					if(angular.isDefined($scope.mime)){
						var type = $scope.mime.MimeType;
						//condition if attachment is an image TODO yet
						if(type.substring(0, 5)=='image'){
							$scope.imageAttach = true;
						} else {
							$scope.imageAttach = false;
						}
						sendAndCatchDataAttachment('get_attachment', $scope.mime.oid);

					} else { 
						$scope.attachmentContent = '';
					}
			});
		};

		//get attachment
		$scope.createNewDealspace = function(file, oid) {
			alert(oid);
			var name = document.getElementById('new_dealspace_name').value;
			alert(name);
			$scope.oid = {'oid' : oid, 'name' : name};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			dataType:'image/gif',
			data: $.param($scope.oid),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				// $scope.attachmentContent = data;
				$scope.imagebase = data;
				// $("#target").attr("src", data);
				console.log(data);
			});
		};

		//get attachment
		var sendAndCatchDataAttachment = function(file, oid) {
			whirlyOn();
			$scope.dealspace_oid = oid;
			$scope.oid = {'oid' : oid};
			$http({
			method  :'POST',
			url:'libs/'+file+'.php',
			dataType:'image/gif',
			data: $.param($scope.oid),
			withCredentials: true,
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				// $scope.attachmentContent = data;
				$scope.imagebase = data;
				// $("#target").attr("src", data);
				console.log(data);
			});
		};


		$scope.logout = function() {

			$http({
			method  :'GET',
			url:'libs/logout.php',
			data: $.param($scope.formData),
			transformResponse: function(d, h) { return d;},
			headers :{'Content-Type':'application/x-www-form-urlencoded'}
			}).success(function(data, status, headers, config) {
				location.reload();
			});
		};

		$scope.formSubmitData = {};
		$scope.processSubmit = function() {
			$scope.formSubmitData.email = $scope.email_subscribe;

			$http.post('libs/subscribe.php', $scope.formSubmitData)
			.success(function(json) {

			});
		};

		$scope.getInput = function() {
			$scope.selection = 'change';
		};
}]);