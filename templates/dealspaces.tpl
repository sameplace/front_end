<section id="service" ngController="mainController" data-ng-init="catchData('get_data')">
	<div class="container">
		<h1>Dealspaces</h1>
		<table>
			<thead>
			<tr>				
				<th>Oid</th>
				<th>Owner</th>
				<th>cTime</th>
				<th>mTime</th>
				<th>Name</th>
				<th>Type</th>
			</tr>
			</thead>
			<tbody>

			<tr ng-repeat="dealspace in result">	
				<td ng-click="sendAndCatchData('get_dealspace', dealspace.oid)">{{dealspace.oid}}</td>
				<td>{{dealspace.owner}}</td>
				<td>{{dealspace.cTime}}</td>
				<td>{{dealspace.mTime}}</td>
				<td>{{dealspace.name}}</td>
				<td>{{dealspace.type}}</td>
			</tr>
			<div class="backButton" id="back_button" ng-click="catchData('get_data')"><button>Back</button></div>
			</tbody>
		</table>
	</div>
</section>