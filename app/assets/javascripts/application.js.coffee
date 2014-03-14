//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require twitter/bootstrap/carousel
//= require turbolinks
//= require_self


Turbolinks.enableTransitionCache();

startSpinner = ->
	$('.loading-overlay').fadeIn('fast')

stopSpinner = ->
	$('.loading-overlay').fadeOut()

$(document).on 'page:fetch', startSpinner
$(document).on 'page:receive', stopSpinner

window.initializeMap= ->
	center = new google.maps.LatLng(-35.423238,-71.668324)
	mapOptions =
		zoom:14,
		center:center
	map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);

	marker = new google.maps.Marker
		map: map
		position: center

loadGoogleMapsScript = ->
	script = document.createElement('script');
	script.type = 'text/javascript';
	script.src = '//maps.google.com/maps/api/js?v=3.9&sensor=false&callback=initializeMap';
	script.async = true
	script.id    = 'google_maps_scripts'

	document.body.appendChild(script);

$(document).ready  ->
	$("a[href*=#]:not([href=#])").click ->
		if location.pathname.replace(/^\//, "") is @pathname.replace(/^\//, "") and location.hostname is @hostname
			target = $(@hash)
			target = (if target.length then target else $("[name=" + @hash.slice(1) + "]"))
			if target.length
				$("html,body").animate
					scrollTop: target.offset().top - 150
				, 1000
				false

	#For navigation links
	path = window.location.pathname.toLowerCase().split('/')[1]
	switch path
		when "" then active = "home"
		else active = path
	$('#navbar li').removeClass('active')
	$("#navbar li.#{active}").addClass('active')

	# #For Home
	if $('#map-canvas').length > 0

		try
			if typeof google != 'object' and typeof google.maps != 'object'
				loadGoogleMapsScript()
			else
				initializeMap()
		catch
			loadGoogleMapsScript()


		$('#servicios .background').on 'mouseenter', ->
			$('.overlay',this).fadeIn(500)

		$('#servicios .background').on 'mouseleave', ->
			$('.overlay',this).fadeOut(500)

	else
		#Fix navigation bar links, swap href with data-href
		$('#navbar a').each (i,a) ->
			href = $(a).attr('href')
			data = $(a).attr('data-href')
			if data?
				$(a).attr('href',data).attr('data-href',href)

	# For Services
	if window.location.pathname.indexOf('service') >= 1
		active = window.location.pathname.replace('service','').replace(/\//gi,'')
		$('#salida li').removeClass('active')
		$('#'+active).addClass('active')



