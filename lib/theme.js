(function(module) {
	"use strict";

	var theme = {},
		meta = module.parent.require('./meta');

	theme.defineWidgetAreas = function(areas, callback) {
		areas = areas.concat([
			{
				name: "Categories Sidebar",
				template: "categories.tpl",
				location: "sidebar"
			},
			{
				name: "Category Sidebar",
				template: "category.tpl",
				location: "sidebar"
			},
			{
				name: "Topic Sidebar",
				template: "topic.tpl",
				location: "sidebar"
			}
		]);

		callback(null, areas);
	};


	theme.init = function(params, callback) {
		var app = params.router,
			middleware = params.middleware;

		app.get('/admin/plugins/schreibnacht2', middleware.admin.buildHeader, renderAdmin);
		app.get('/api/admin/plugins/schreibnacht2', renderAdmin);

		callback();
	};

	theme.addAdminNavigation = function(header, callback) {
		header.plugins.push({
			route: '/plugins/schreibnacht2',
			icon: 'fa-paint-brush',
			name: 'Schreibnacht2 Theme'
		});

		callback(null, header);
	};

	theme.getConfig = function(config, callback) {
		config.disableMasonry = !!parseInt(meta.config.disableMasonry, 10);
		callback(false, config);
	};

	function renderAdmin(req, res, next) {
		res.render('admin/plugins/schreibnacht2', {});
	}

	module.exports = theme;

}(module));