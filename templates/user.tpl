	<section class="service" ngController="mainController" data-ng-init="catchDataUser('get_user')">
	<div class="whirly"></div>
	<div class="userPage">
		<div class="container">
			<div class="clearfix">
				<div class="col-xs-12">
					<div class="message clearfix">
						<div class="row">
							<div class="messageHeader clearfix">
								<div class="row">
									<div class="col-xs-6 messageFrom">
										<a href="mailto:{{result.FromAddr}}">{{result.email}}</a>
									</div>
									<div class="col-xs-6 messageCreated">
										{{result.cTime}}
									</div>
								</div>
							</div>
							<h1>{{result.realname}}</h1>
							<div class="col-xs-12 messageContent">
								Type: {{result.type}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
