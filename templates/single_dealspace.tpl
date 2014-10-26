<section id="service" ngController="mainController" data-ng-init="sendAndCatchData('get_dealspace', 'ml.DVGZ7K')">
	<div class="container">
		<h1>Dealspaces</h1>
		<table class="dealTable">
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

			<tr >	
				<td>{{dealspace.oid}}</td>
				<td>{{dealspace.owner}}</td>
				<td>{{dealspace.cTime}}</td>
				<td>{{dealspace.mTime}}</td>
				<td>{{dealspace.name}}</td>
				<td>{{dealspace.type}}</td>
			</tr>
			</tbody>
		</table>

		<div class="filterWrap">
			<div class="filter lightGray">
				<div class="filterBlock" ng-repeat="dealspace in result">
					<p>{{dealspace.oid}}</p>
					<p>{{dealspace.owner}}</p>
					<p>{{dealspace.cTime}}</p>
					<p>{{dealspace.mTime}}</p>
					<p>{{dealspace.name}}</p>
					<p>{{dealspace.type}}</p>
				</div>
			</div>
		</div>
	</div>
</section>