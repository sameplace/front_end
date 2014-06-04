function mainController($scope, $http) {

//ajax call
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

		$scope.formSubmitData = {};
		$scope.processSubmit = function() {
			$scope.formSubmitData.email = $scope.email;
			$scope.formSubmitData.password = $scope.password;

			$http.post('libs/test.php', $scope.formSubmitData)
			.success(function(json) {
				$scope.message_submit = json;
			});
		};
}