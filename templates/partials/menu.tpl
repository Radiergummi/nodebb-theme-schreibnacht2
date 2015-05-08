			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div>
					<a href="{relative_path}/">
						<img class="{brand:logo:display} forum-logo" src="{brand:logo}" />
					</a>
					<!-- IF showSiteTitle -->
					<a href="{relative_path}/">
						<h1 class="navbar-brand forum-title">{title}</h1>
					</a>
					<!-- ENDIF showSiteTitle -->

					<div component="navbar/title" class="visible-xs">
						<span></span>
					</div>
				</div>
			</div>

			<div class="navbar-collapse collapse navbar-ex1-collapse" id="nav-dropdown">
				<!-- IF !maintenanceHeader -->
				<ul id="main-nav" class="nav navbar-nav pull-left">
					<li class="">
						<a href="/unread" title="" id="unread-count" target="" data-original-title="[[global:header.unread]]">
							<i class="fa fa-fw fa-inbox unread-count"></i>
							<span class="visible-xs-inline">[[global:header.unread]]</span>
						</a>
					</li>
					
					<li class="community dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="community_dropdown">
							<i class="fa fa-angle-down fa-fw"></i> <span class="">Community</span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="community_dropdown">
							<li class="">
								<a href="/recent" title="" id="" target="">
									<i class="fa fa-fw fa-clock-o"></i> <span class="">[[global:header.recent]]</span>
								</a>
							</li>
							<li class="">
								<a href="/tags" title="" id="" target="">
									<i class="fa fa-fw fa-tags"></i> <span class="">[[global:header.tags]]</span>
								</a>
							</li>
							<li class="">
								<a href="/popular" title="" id="" target="">
									<i class="fa fa-fw fa-fire"></i> <span class="">[[global:header.popular]]</span>
								</a>
							</li>
							<li class="">
								<a href="/users" title="" id="" target="">
									<i class="fa fa-fw fa-user"></i> <span class="">[[global:header.users]]</span>
								</a>
							</li>
							<li class="">
								<a href="/groups" title="" id="" target="">
									<i class="fa fa-fw fa-group"></i> <span class="">Team</span>
								</a>
							</li>
							<li class="">
								<a href="/search" title="" id="" target="">
									<i class="fa fa-fw fa-search"></i> <span class="">[[global:header.search]]</span>
								</a>
							</li>
						</ul>
					</li>
				<!-- IF isAdmin -->
					<li class="">
						<a href="/admin" title="" id="" target="_top" data-original-title="[[global:header.admin]]">
							<i class="fa fa-fw fa-cogs"></i> <span class="">[[global:header.admin]]</span>
						</a>
					</li>
				<!-- ENDIF isAdmin -->
				<!-- IF loggedIn -->					
					<li class="">
						<a href="/shoutbox" title="" id="" target="" data-original-title="Chat">
							<i class="fa fa-fw fa fa-fw fa-comments"></i> <span class="">Chat</span>
						</a>
					</li>
				</ul>

				<ul id="logged-in-menu" class="nav navbar-nav navbar-right pull-right">
					<li class="notifications dropdown text-center hidden-xs">
						<a href="#" title="[[global:header.notifications]]" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
							<i class="notification-icon fa fa-fw fa-bell-o" data-content="0"></i>
						</a>
						<ul class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li id="notif-header"  class="clearfix">
								<div class="pull-left">
						    	<span>Benachrichtigungen</span>
						  	</div>
							  <div class="pull-right">
							    <a href="#" class="mark-all-read">Alle als gelesen markieren</a>
							  </div>
						  </li>
							<li>
								<ul id="notif-list">
									<li>
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></li>
						</ul>
					</li>

					<li class="visible-xs">
						<a href="{relative_path}/notifications" title="[[notifications:title]]">
							<i class="notification-icon fa fa-bell-o fa-fw" data-content="0"></i> [[notifications:title]]
						</a>
					</li>

					<!-- IF !disableChat -->
					<li class="chats dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="[[global:header.chats]]" id="chat_dropdown">
							<i id="chat-count" class="fa fa-comment-o fa-fw"></i> <span class="visible-xs-inline">[[global:header.chats]]</span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<ul id="chat-list">
									<li>
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="{relative_path}/chats">[[modules:chat.see_all]]</a></li>
						</ul>
					</li>
					<!-- ENDIF !disableChat -->

					<li id="user_label" class="dropdown">
						<div clas="caret"></div>
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
							<img id="user-header-picture" src="{user.picture}"/>
						</a>
						<ul id="user-control-list" class="dropdown-menu" aria-labelledby="user_dropdown">
							<li>
								<a id="user-profile-link" href="{relative_path}/user/{user.userslug}">
									<i class="fa fa-fw fa-circle status {user.status}"></i> <span id="user-header-name">{user.username}</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="#" class="user-status" data-status="online">
									<i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="away">
									<i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="dnd">
									<i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="offline">
									<i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li id="logout-link">
								<a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- ELSE -->
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right pull-right">
					<!-- IF allowRegistration -->
					<li>
						<a href="{relative_path}/register">
							<i class="fa fa-pencil visible-xs-inline"></i>
							<span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF loggedIn -->
				<!-- IF searchEnabled -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET" action="">
							<div class="hide" id="search-fields">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
							<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
						</form>
					</li>
				</ul>
				<!-- ENDIF searchEnabled -->

				<ul class="nav navbar-nav navbar-right pull-right">
					<li>
						<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right pagination-block invisible visible-lg visible-md">
					<li class="dropdown">
						<i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
						<i class="fa fa-angle-up pointer fa-fw pageup"></i>

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span id="pagination"></span>
						</a>

						<i class="fa fa-angle-down pointer fa-fw pagedown"></i>
						<i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

						<div class="progress-container">
							<div class="progress-bar"></div>
						</div>

						<ul class="dropdown-menu" role="menu">
  							<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
  						</ul>
					</li>
				</ul>

				<div class="header-topic-title hidden-xs">
					<span></span>
				</div>
				<!-- ELSE -->
				<ul class="nav navbar-nav navbar-right pull-right">
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF !maintenanceHeader -->
			</div>