function mainController($scope, $http) {

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

		//function processSubmit takes text inputs from login, and send all information to php file, for now it responds in message_submit div
		$scope.formSubmitData = {};
		$scope.processSubmit = function() {
			$scope.formSubmitData.email = $scope.email;
			$scope.formSubmitData.password = $scope.password;

			$http.post('libs/test.php', $scope.formSubmitData)
			.success(function(json) {
				$scope.message_submit = json;

			});
		};

	//function ChangeColor changes the color of active tab, and stays that way until another tab is clicked.
	$scope.tabs = [];
		$scope.ChangeColor = function(nr) {
			$scope.tabs = [];
			$scope.tabs[nr] = '#FAAC58';

		}

	//content for tabs (on click)
		var path = "templates/";

		$scope.documentsTab = path + "documents.tpl";
		$scope.peopleTab = path + "people.tpl";
		$scope.emailTab = path + "email.tpl";

		if($scope.tab==null)
			$scope.tab = $scope.documentsTab;

		$scope.tabs[0] = '#FAAC58';
}