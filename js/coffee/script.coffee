$(document).ready ->

	nav = $ '.main-nav li a[href^="#"]'
	offsetHeight = 147
	currentClass = 'current'
	body = $ 'body'

	# build an object of page positions
	pages = $ '.content'
	pagePos = {}
	$.each pages, (i, el) ->
		el = $ el
		id = el.attr 'id'
		pagePos[id] =
			pos: el.offset().top - offsetHeight

	# $(window).scroll (e) ->
	# 	pos = body.scrollTop()
	# 	result = ''
	# 	for id, attr of pagePos
	# 		if pos >= attr.pos
	# 			result = id

	# 	updateNav result


	nav.on 'click', (e) ->
		e.preventDefault()
		page = $(this).attr 'href'
		changePage page

	changePage = (page) ->
		# get the page to show
		newPage = $ "#{page}"
		# work out it's position
		offset 	= newPage.offset().top - offsetHeight

		updateNav page

		# animate the page
		props =
			scrollTop: offset

		$('html,body').animate props, 1000

	updateNav = (page) ->
		nav.removeClass currentClass
		$('a[href="'+page+'"]').addClass currentClass