<section id="service" ngController="mainController" data-ng-init="catchData('get_user')">
	<div class="container">
		<h1>User</h1>
		<table>
			<thead>
			<tr>				
				<th>Oid</th>
				<th>Type</th>
				<th>Owner</th>
				<th>cTime</th>
				<th>mTime</th>
				<th>Real name</th>
				<th>Email</th>
				<th>Question</th>
			</tr>
			</thead>
			<tbody>
				<td>{{result.oid}}</td>
				<td>{{result.type}}</td>
				<td>{{result.owner}}</td>
				<td>{{result.cTime}}</td>
				<td>{{result.mTime}}</td>
				<td>{{result.realname}}</td>
				<td>{{result.email}}</td>
				<td>{{result.question}}</td>
			</tbody>
		</table>
	</div>
</section>