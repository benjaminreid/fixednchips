$(document).ready ->

	nav = $ '.main-nav li a'
	offsetHeight = 147
	currentClass = 'current'

	nav.on 'click', (e) ->
		e.preventDefault()
		page = $(this).data 'page'
		changePage page

	changePage = (page) ->
		# get the page to show
		newPage = $ "##{page}"
		# work out it's position
		offset 	= newPage.offset().top - offsetHeight

		nav.removeClass currentClass
		$('a[data-page="'+page+'"]').addClass currentClass 

		# animate the page
		props =
			scrollTop: offset

		$('html,body').animate props, 1000