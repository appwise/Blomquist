<!doctype html>
<!--[if lte IE 7 ]><html class="ie7 oldie" dir="ltr" lang="en-US"><![endif]-->
<!--[if IE 8 ]>    <html class="ie8 oldie" dir="ltr" lang="en-US"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html dir="ltr" lang="en-US"><!--<![endif]-->
<cfoutput>
<head>
	<meta charset="utf-8" />
	<title>#attributes.pagetitle# - Timothy A. Blomquist, Realtor</title>
	<meta name="description" content="#attributes.description#" />
	<meta name="keywords" content="#attributes.keywords#" />
	<meta name=viewport content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
		
	<!---<link rel="shortcut icon" href="favicon.png" />
	<link rel="apple-touch-icon" href="images/touch-icon.png" />
	<link rel="image_src" href="images/touch-icon.png" />--->
    <!-- Styling for example container (NoteContainer & Logger)  -->
    <link rel="stylesheet" type="text/css" href="http://developer.here.com/apiexplorer/examples/templates/js/exampleHelpers.css"/>
    <!-- By default we add ?with=all to load every package available, it's better to change this parameter to your use case. Options ?with=maps|positioning|places|placesdata|directions|datarendering|all -->

	<link rel="stylesheet" href="#request.basecaller#css/style.css" />
	<!--- <link rel="stylesheet" href="less/style.less" type="text/less" media="screen" />
	<script src="js/less.min.js" type="text/javascript"></script> --->
		<script type="text/javascript" charset="UTF-8" src="http://api.maps.nokia.com/2.2.3/jsl.js?with=all"></script>
		<!-- JavaScript for example container (NoteContainer & Logger)  -->
		<script type="text/javascript" charset="UTF-8" src="http://developer.here.com/apiexplorer/examples/templates/js/exampleHelpers.js"></script>
	<!--[if IE]>
	<script type="text/javascript" src="#request.basecaller#js/ie.js"></script>
	<script type="text/javascript" src="#request.basecaller#js/respond.min.js"></script>
	<![endif]-->
</head>
<body class="no-js">
	<header id="header" class="normal-size clearfix">
		<hgroup id="logo">
			<h1><a href="#request.basecaller#"><img src="#request.basecaller#tmp/blomquist-website-logo.png" alt="Timothy A. Blomquist Logo" /></a></h1>
		</hgroup>
		
		<cfinclude template="menu.cfm">
		
		<span id="menu-switch" class="button">Menu</span>
		<div class="social-links">
			<a href="http://www.facebook.com/tablomquistrealtor" target="_blank" class="facebook tooltip animated bounce" title="Facebook"></a>
			<a href="https://twitter.com/TABlomquist" target="_blank" class="twitter tooltip animated bounce" title="Twitter"></a>
			<a href="http://www.linkedin.com/pub/timothy-a-blomquist/56/652/682" target="_blank" class="linkedin tooltip animated bounce" title="Linked In"></a>
		</div>
		<div class="sep sep-no-margin"><span></span></div>
	</header>
</cfoutput>