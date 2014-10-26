<!-- DEALSPACES -->
<section id="service" class="service" ngController="mainController" data-ng-init="catchData('get_data')">
	<div class="container">
		<input type="text" class="searchInput" ng-model="search">
		<h1>Dealspaces</h1>
		<div class="filterWrap clearfix">
			<div class="whirly"></div>
			<div class="filterBlock col-xs-12 col-sm-6 col-md-4 col-lg-3" ng-repeat="dealspace in result | filter:search">
				<div class="filter" ng-click="sendAndCatchData('get_dealspace', dealspace.oid)">
					<div class="filterTitle lightGrayBorder clearfix" style="border-color: {{dealspace.color}};">
						<h2 class="lightGrayBg"  style="background:{{dealspace.color}};">{{dealspace.name}}</h2>
					</div>
					<div class="filterData">
						<h3><i class="fa fa-user"></i>{{dealspace.owner}}</h3>
						<p>{{dealspace.oid}}</p>
						<p>{{dealspace.cTime}}</p>
						<p>{{dealspace.mTime}}</p>
						<p>{{dealspace.name}}</p>
						<p>{{dealspace.type}}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- SINGLE DEALSPACE -->
<div class="singleDealspace">
	<section class="service">
		<div class="container">
			<div class="clearfix">
				<div class="col-xs-12" ng-repeat="dealspace in single_dealspace">
						<h1>{{dealspace.owner}}</h1>
						<div class="dealspaceBlocks">
							<div class="dealspaceBlock col-xs-12 col-sm-6 col-lg-4">
								<p>Time when this dealspace was created:</p>
								<p>{{dealspace.cTime}}</p>
							</div>
							<div class="dealspaceBlock col-xs-12 col-sm-6 col-lg-4">
								<p>Time when this dealspace was modified:</p>
								<p>{{dealspace.mTime}}</p>
							</div>
							<div class="dealspaceBlock col-xs-12 col-sm-6 col-lg-4">
								<p>Type of this dealspace:</p>
								<p>{{dealspace.type}}</p>
							</div>
							<div class="dealspaceBlock col-xs-12 col-sm-6 col-lg-4">
								<p>Date:</p>
								<p>{{dealspace.Date}}</p>
							</div>
							<p>{{dealspace.oid}}</p>
							<p>{{dealspace.MessageId}}</p>
							<p>{{dealspace.FromAddr}}</p>
							<p>{{dealspace.InReplyTo}}</p>
							<p>{{dealspace.References}}</p>
						</div>
				</div>
			</div>
			<div class="backButton" id="back_button" ng-click="backDealspaces()"><button class="btn btn-primary" type="button">Back</button></div>
		</div>
	</section>
</div>