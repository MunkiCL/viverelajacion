//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_self


Turbolinks.enableTransitionCache();

startSpinner = ->
	$('.loading-overlay').fadeIn('fast')

stopSpinner = ->
	$('.loading-overlay').fadeOut()

$(document).on 'page:fetch', startSpinner
$(document).on 'page:receive', stopSpinner


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

	# #For Home
	if $('#map-canvas').length > 0
		script = document.createElement('script');
		script.type = 'text/javascript';
		script.src = '//maps.google.com/maps/api/js?v=3.9&sensor=false';
		document.body.appendChild(script);

		mapOptions =
			zoom:14,
			center:new google.maps.LatLng(-35.423238,-71.668324),
		map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);
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



