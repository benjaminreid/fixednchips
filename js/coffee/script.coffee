$(document).ready ->

	nav = $ '.main-nav li a'

	# stop the links from going anywhere
	nav.on 'click', (e) -> e.preventDefault()

	# turn on tooltips
	nav.tooltip()