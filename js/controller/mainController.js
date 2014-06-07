function mainController($scope, $http) {

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

	//content for tabs (on click)
		$scope.documentsTab = "If showing Documents, then this is a table of documents, where each row shows a document, and columns show things like type, date, size, etc. Clicking on a document shows it in this space. The document view can be dismissed to return to the table.";
		$scope.peopleTab = "If showing People, then this is a table of people, where each row shows a person, and columns show things like contact informaHon, role in the Clicking on a person’s name shows contact detail in this space. That detail deal, last Hme on-line, etc. can be dismissed to return to the table.";
		$scope.emailTab = "If showing Email messages, then this is a table of messages, organized (perhaps) by thread, where each row is an email message and columnsshow things like Sender, To, CC, date, names of aMachments, etc. Message detail brings up a dismissable window; other items bring up the appropriate data type tab (Documents or People) with the appropriate detail view selected.";
		$scope.tab = "Buyer View";

}