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
		$scope.ChangeColor = function(nr) {
			$scope.tabs = [];
			$scope.tabs[nr] = '#FAAC58';

		}

	//content for tabs (on click)
		$scope.documentsTab = "If showing Documents, then this is a table of documents, where each row shows a document, and columns show things like type, date, size, etc. Clicking on a document shows it in this space. The document view can be dismissed to return to the table.";
		$scope.peopleTab = "If showing People, then this is a table of people, where each row shows a person, and columns show things like contact informaHon, role in the Clicking on a person’s name shows contact detail in this space. That detail deal, last Hme on-line, etc. can be dismissed to return to the table.";
		$scope.emailTab = "If showing Email messages, then this is a table of messages, organized (perhaps) by thread, where each row is an email message and columnsshow things like Sender, To, CC, date, names of aMachments, etc. Message detail brings up a dismissable window; other items bring up the appropriate data type tab (Documents or People) with the appropriate detail view selected.";
		$scope.tab = "Buyer View";

}