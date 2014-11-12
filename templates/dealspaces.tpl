<!-- DEALSPACES -->
<section id="service" class="service" ngController="mainController" data-ng-init="catchData('get_data')">
	<div class="container">
		<div class="row">
			<div class="col-xs-6 col-xs-push-3">
				<h1>Dealspaces</h1>
			</div>
			<div class="col-xs-3 pull-right">
				<input type="text" class="searchInput" ng-model="search" placeholder="Search...">
			</div>
		</div>
		<div class="filterWrap clearfix">
			<div class="row">
				<div class="whirly"></div>
				<div class="filterBlock col-xs-12 col-sm-6 col-md-4 col-lg-3" ng-repeat="dealspace in result | filter:search">
					<div class="filter" ng-click="sendAndCatchData('get_dealspace', dealspace.oid)">
						<div class="filterTitle lightGrayBorder clearfix" style="border-color: {{dealspace.color}};">
							<h2 class="lightGrayBg"  style="background:{{dealspace.color}};">{{dealspace.name}}</h2>
						</div>
						<div class="filterData">
							<!-- <h3><i class="fa fa-user"></i>{{dealspace.owner}}</h3> -->
							<p>Created: {{dealspace.cTime}}</p>
							<p>Modified: {{dealspace.mTime}}</p>
							<p>Type: {{dealspace.type}}</p>
						</div>
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
				<div class="col-xs-12">
				<div ng-if="single_dealspace.length < 1"><h1>This dealspace is empty</h1></div>
					<div class="message clearfix" ng-repeat="dealspace in single_dealspace">
						<div class="row">
							<div class="messageHeader clearfix">
								<div class="row">
									<div class="col-xs-6 messageFrom">
										<a href="mailto:{{dealspace.FromAddr}}">{{dealspace.FromAddr}}</a>
									</div>
									<div class="col-xs-6 messageCreated">
										{{dealspace.cTime}}
									</div>
								</div>
							</div>
							<h1>Subject</h1>
							<div class="col-xs-12 messageContent">
								{{dealspace.Content}}
							</div>
							<a class="col-xs-12 messageContent threeDots" href="" ng-click="sendAndCatchDataMime('get_mime', dealspace.oid)">...</a>
							<div ng-if="check_oid == dealspace.oid">
								<h1>Attachment</h1>
								<p class="col-xs-12 messageContent">{{attachmentContent}}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="backButton" id="back_button" ng-click="backDealspaces()"><button class="btn btn-primary" type="button">Back</button></div>
		</div>
	</section>
</div>