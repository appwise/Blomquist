<cfmodule template="../includes/header.cfm" pagetitle="Esplanade - Siesta Key"
		  description="Esplanade in Siesta Key, FL 34231."
		  keywords="Esplanade, Lakewood Ranch, FL, 34231">

<cfoutput>
<section id="main">
	<div class="wrapper clearfix">
		<div class="col grid12">
			<h1 class="page-title left">Esplanade - Siesta Key</h1>
			<div class="subtitle">
				<p class="navigation">
					<script>
					    document.write('<a href="' + document.referrer + '" class="all">Go Back<span></span></a>');
					</script>
				</p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="col grid8 alpha">
			<div class="grid12 alpha flexslider loading">
				<ul class="slides">
					<li><img src="#request.basecaller#images/communities/esplanade-siesta-key.jpg" alt="" /></li>
				</ul>
			</div>
			<br /><br />
			<div class="tab-container">
				<ul class="tabs clearfix">
					<li class="active">
						<a href="##description">Description</a>
					</li>
					<li>
						<a href="##amenities">Amenities</a>
					</li>
					<li>
						<a href="##financing">Financing</a>
					</li>
					<li>
						<a href="##schools">Schools</a>
					</li>
				</ul>
				<div id="description" class="tab_content" style="display: block; ">
					<h4>Community Description</h4>
					<p class="small">
					Esplanade by Siesta Key is envisioned to provide South Sarasota an active lifestyle community notable for its resort-style 
					amenities & intimate setting. Located only 2 miles from the world famous Siesta Key beach in the Gulf Gate area, this community 
					encompasses approx. 77 acres and when completed, is expected to include up to approximately 247 homes.
					</p>
					<p class="small">
					Our new community is located near the area's best shopping, fine dining, arts scene, w/ close proximity to Sarasota's 
					award winning beaches & features miles of nature trails, w/ peaceful gazebos & pristine open spaces. Within minutes, 
					homeowners can visit Siesta Key which features boutique shops, locally-owned restaurants, entertainment & of course miles 
					of white sand & crystal blue Gulf waters.
					</p>
				</div>
				<div id="amenities" class="tab_content" style="display: none; ">
					<h4>Amenities</h4>
					<ul class="small square">
						<li>Heated lagoon-style pool and spa</li>
						<li>Sport courts</li>
						<li>Beautifully appointed clubhouse, inclusive of a planned fitness center, gathering room, catering kitchen, and library.</li>
					</ul>
				</div>
				<div id="financing" class="tab_content" style="display: none; ">
					<h4>Financing</h4>
					<p class="small">
					Call to get more information about financing in this great community. We'll work with your individual situation to come up with the best plan of action 
					to get you the home of your dreams.
					</p>
				</div>
				<div id="schools" class="tab_content" style="display: none; ">
					<h4>Schools</h4>
					<ul class="small square">
					    <li>Phillippi Shores Elementary
							<ul class="circle" style="margin-left: 20px;">
							    <li>Grades: K-5</li>
							</ul>
						</li>
					    <li>Brookside Middle School
							<ul class="circle" style="margin-left: 20px;">
								<li>Grades: 6-8</li>
							</ul>
						</li>
					    <li>Riverview High School
							<ul class="circle" style="margin-left: 20px;">
							    <li>Grades: 9-12</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="portfolio-overview col grid4">
			<h4>Starting around $270,000</h4>
			<p class="small">Quick Information:</p>
			<ul class="small square">
				<li>Location: Siesta Key, Florida</li>
				<li>County: Sarasota</li>
			</ul>
			<div class="sep"><span></span></div>
			<h4>Get More Information</h4>
			<p class="small"><a href="#request.basecaller#contact/" class="button animated bounce">Contact</a></p>
			<div class="sep"><span></span></div>
			<h4>Builder</h4>
			<p class="small">Taylor Morrison</p>
			<div class="sep"><span></span></div>
			<h4>Share Community</h4>
			<p class="small"><img src="#request.basecaller#tmp/share.jpg" alt="" class="tooltip" title="Replace this with a real sharing widget" /></p>
		</div>
	</div>
</section>
</cfoutput>
		  
<cfmodule template="../includes/footer.cfm">