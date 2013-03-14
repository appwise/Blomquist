<cfmodule template="../includes/header.cfm" pagetitle="Esplanade - Lakewood Ranch"
		  description="Esplanade in Lakewood Ranch, FL 34211."
		  keywords="Esplanade, Lakewood Ranch, FL, 34211">

<cfoutput>
<section id="main">
	<div class="wrapper clearfix">
		<div class="col grid12">
			<h1 class="page-title left">Esplanade - Lakewood Ranch</h1>
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
					<li><img src="#request.basecaller#images/communities/esplanade-lakewood-ranch.jpg" alt="" /></li>
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
					As the newest and only active lifestyle village in Lakewood Ranch, Esplanade offers maintenance-free living at an amazing value. 
					Nestled on 207 acres just north of State Road 70, this gated enclave of 450 detached villas and single family homes brings a touch 
					of the Mediterranean to Southwest Florida with its regional-inspired architecture, lush landscaping, serene lakes, and fabulous 
					resort-style amenities including a full time Lifestyle Director located on site.
					</p>
					<p class="small">
					As part of Lakewood Ranch, the largest green certified community in 
					America and second best selling master-planned community in Florida, Esplanade residents will also enjoy the many commercial, 
					recreational and cultural opportunities that are so much a part of this nationally recognized, award-winning and eco-friendly 
					master-planned community.
					</p>
					<p class="small">
					In addition, Esplanade has been designed to ensure each homeowner and their guests enjoy premium views of meandering lakes, 
					Florida-friendly landscaping and unmatched sunset vistas. 
					</p>
				</div>
				<div id="amenities" class="tab_content" style="display: none; ">
					<h4>Amenities</h4>
					<ul class="small square">
						<li>Heated lagoon-style pool and spa with resistance pool</li>
						<li>Outdoor barbeque space and fire pit</li>
						<li>Beautifully appointed clubhouse, complete with fitness and aerobics center, grand ballroom, card and craft room, catering 
						kitchen, billiard room and library</li>
						<li>Miles of walking trails with gazebos</li>
						<li>Events lawn, fitness lawn, canoe and kayak launch, fenced bark park and adventure playground</li>
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
					    <li>Gullett Elementary School
							<ul class="circle" style="margin-left: 20px;">
							    <li>Grades: K-5</li>
								<li>Five-star School Award</li>
							</ul>
						</li>
					    <li>Nolan Middle School
							<ul class="circle" style="margin-left: 20px;">
								<li>Grades: 6-8</li>
							    <li>Earned an "A" School Grade for the 2009-2010 school year by the Florida Department of Education</li>
							    <li>In 2008, the school had almost 30 students advance to the Health Occupations Students of America State Leadership Conference</li>
							</ul>
						</li>
					    <li>Lakewood Ranch High School
							<ul class="circle" style="margin-left: 20px;">
							    <li>Grades: 9-12</li>
								<li>Earned a "A" School Grade for the 2009-2010 school year by the Florida Department of Education</li>
							    <li>School Renaissance Program</li>
							    <li>For most classes, students are able to have two books, one for home and one for school</li>
							    <li>Mustang Marching Band has been invited to perform at the Local, State, and National level</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="portfolio-overview col grid4">
			<h4>Starting around $230,000</h4>
			<p class="small">Quick Information:</p>
			<ul class="small square">
				<li>Location: Lakewood Ranch, Florida</li>
				<li>County: Manatee</li>
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