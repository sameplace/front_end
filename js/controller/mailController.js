function mailController($scope, $http) {

	$scope.formData = {};
		$scope.processForm = function() {
			$http.post('libs/test.php', $scope.formData)
			.success(function(json) {
				var test = document.getElementById('message');
				test.innerHTML = test.innerHTML + json;
			});
		};
}