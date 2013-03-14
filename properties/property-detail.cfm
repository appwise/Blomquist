<!---
		<style type="text/css">
			html {
				overflow:hidden;
			}
			#mapContainer {
				width: 100%;
				height: 100%;
				position:relative;
			}
		</style>
	</head>
	<body>--->
		
<cfset propertyLong = application.properties.display(url.mls_id)>

<cfoutput query="propertyLong">

<cfif propertyLong.street_name NEQ ''>
<cfmodule template="../includes/header.cfm" pagetitle="#propertyLong.combined_address#, #propertyLong.city#, FL #propertyLong.zip_code# - #mls_listing_id#"
		  description="Property details for #propertyLong.combined_address#, #propertyLong.city#, FL #propertyLong.zip_code# (#mls_listing_id#)."
		  keywords="#propertyLong.combined_address#, #propertyLong.city#, FL, #propertyLong.zip_code#, #mls_listing_id#">
<cfelse>
<cfmodule template="../includes/header.cfm" pagetitle="Real Estate Listing in #propertyLong.city#, FL #propertyLong.zip_code# - #mls_listing_id#"
		  description="Property details for real estate listing in #propertyLong.city#, FL #propertyLong.zip_code# (#mls_listing_id#)."
		  keywords="Real Estate, Listing, #propertyLong.city#, FL, #propertyLong.zip_code#, #mls_listing_id#">
</cfif>

<section id="main">
	<div class="wrapper clearfix">
		<div class="col grid12">
			<cfif propertyLong.street_name NEQ ''>
			<h1 class="page-title left">#propertyLong.combined_address#, #propertyLong.city#, FL #propertyLong.zip_code#</h1>
			<cfelse>
			<h1 class="page-title left">#propertyLong.city#, FL #propertyLong.zip_code#</h1>
			</cfif>
			<!---<div class="subtitle">
				<p class="navigation">
					<script>
					    document.write('<a href="' + document.referrer + '" class="all">Go Back<span></span></a>');
					</script>
				</p>
			</div>--->
			<div class="clear"></div>
		</div>
		<div class="col grid8 alpha">
			<div class="grid8 alpha flexslider loading">
				<ul class="slides">
                <li><img src="#PHOTO_URL#" /></li>
                <cfset extensionPoint = '.' & Listlast(PHOTO_URL,'.')>
                
                <cfloop index="pics" from="2" to="#PHOTO_QUANTITY#">
                <cfset pixure = '#replace(PHOTO_URL,extensionPoint,'')#' & '_' & '#pics#' & '#extensionPoint#'>
					<li><img src="#pixure#" alt="#extensionPoint#" /></li>
                </cfloop>
				</ul>
			</div>
            <br /><br />
			<div class="tab-container">
				<ul class="tabs clearfix">
					<li class="active">
						<a href="##description">Description</a>
					</li>
					<li>
						<a href="##details">Details</a>
					</li>
					<li>
						<a href="##rooms">Rooms</a>
					</li>
					<li>
						<a href="##schools">Schools</a>
					</li>
					<!---<li>
						<a href="##map">Map</a>
					</li>--->
				</ul>
				<div id="description" class="tab_content" style="display: block; ">
					<h4>Property Description</h4>
					<cfif remarks NEQ ''>
					<p class="small">#Remarks#</p>
					<cfelse>
					<p class="small">This property does not have a property description. Please contact us for more information.</p>
					</cfif>
				</div>
				<div id="details" class="tab_content" style="display: none; ">
					<h4>Property Details</h4>
					<ul class="small square">
						<li>Status: <cfif (STATUS_CODE EQ 'A')>Active<cfelse>Inactive</cfif></li>
						<li>MLS Number: #MLS_LISTING_ID#</li>
						<cfif county NEQ ''>
						<li>County: #COUNTY#</li>
						</cfif>
						<cfif year_built NEQ ''>
						<li>Year Built: #YEAR_BUILT#</li>
						</cfif>
						<cfif acres NEQ ''>
						<li>Acres: #ACRES#</li>
						</cfif>
						<cfif lot_dimensions NEQ ''>
						<li>Lot Size: #LOT_DIMENSIONS#</li>
						</cfif>
						<cfif building_square_footage NEQ ''>
						<li>Square Feet: #BUILDING_SQUARE_FOOTAGE#</li>
						</cfif>
						<cfif taxes NEQ ''>
						<li>Taxes: #TAXES#</li>
						</cfif>
					</ul>
				</div>
				<div id="rooms" class="tab_content" style="display: none; ">
					<h4>Room Sizes</h4>
					<ul class="small square">
						<cfif master_bed NEQ ''>
						<li>Master: #MASTER_BED#</li>
						</cfif>
						<cfif dining NEQ ''>
						<li>Dining Room: #DINING#</li>
						</cfif>
						<cfif kitchen NEQ ''>
						<li>Kitchen: #KITCHEN#</li>
						</cfif>
						<cfif breakfast NEQ ''>
                        <li>Breakfast: #BREAKFAST#</li>
						</cfif>
						<cfif laundry NEQ ''>
                        <li>Laundry: #LAUNDRY#</li>
						</cfif>
						<cfif living NEQ ''>
						<li>Living Room: #LIVING#</li>
						</cfif>
						<cfif great NEQ ''>
                        <li>Great Room: #GREAT#</li>
						</cfif>
						<cfif family NEQ ''>
                        <li>Family Room: #FAMILY#</li>
						</cfif>
						<cfif den NEQ ''>
                        <li>Den: #DEN#</li>
						</cfif>
						<cfif bed2 NEQ ''>
						<li>Bedroom 2: #BED2#</li>
						</cfif>
						<cfif bed3 NEQ ''>
						<li>Bedroom 3: #BED3#</li>
						</cfif>
						<cfif bed4 NEQ ''>
						<li>Bedroom 4: #BED4#</li>
						</cfif>
						<cfif extra NEQ ''>
						<li>Extra: #EXTRA#</li>
						</cfif>
					</ul>
				</div>
				<div id="schools" class="tab_content" style="display: none; ">
					<h4>Area Schools</h4>
					<ul class="small square">
						<cfif school_district EQ '' AND school_elementary EQ '' AND school_middle EQ '' AND school_junior_high EQ '' AND school_high EQ ''>
							<p class="small">Please contact us for more information on the schools in this area.</p>
						<cfelse>
							<cfif school_district NEQ ''>
	                    	<li>District: #SCHOOL_DISTRICT#</li>
							</cfif>
							<cfif school_elementary NEQ ''>
						    <li>Elementary: #SCHOOL_ELEMENTARY#</li>
							</cfif>
							<cfif school_middle NEQ ''>
						    <li>Middle: #SCHOOL_MIDDLE#</li>
						    </cfif>
							<cfif school_junior_high NEQ ''>
	                        <li>Junior High: #SCHOOL_JUNIOR_HIGH#</li>
	                        </cfif>
							<cfif school_high NEQ ''>
						    <li>High: #SCHOOL_HIGH#</li>
							</cfif>
						</cfif>
					</ul>
				</div>
				<!---<div id="map" class="tab_content" style="display: none; ">
					<h4>Property Location</h4>
					<p class="small">Map goes here. (http://developer.here.com/plans)</p>
                    <div id="mapContainer"></div>
					<div id="uiContainer"></div>
				</div>--->
			</div>
		</div>
		<div class="portfolio-overview col grid4">
			<h4>$#NumberFormat(sALE_PRICE)#</h4>
			<p class="small">Quick Information:</p>
			<ul class="small square">
				<cfif bedrooms NEQ '' AND bedrooms NEQ "0">
				<li>Bedrooms: #BEDROOMS#</li>
				</cfif>
				<cfif baths_total NEQ '' AND baths_total NEQ '0'>
				<li>Bathrooms: #BATHS_TOTAL#</li>
				</cfif>
				<li>MLS: #MLS_LISTING_ID#</li>
				<li>Status: <cfif(status_code EQ 'A')>Active<cfelse>Inactive</cfif></li>
				<li>County: #COUNTY#</li>
			</ul>
			<cfif virtual_tour_url NEQ ''>
			<p class="small"><a href="#virtual_tour_url#" target="_blank" class="button animated bounce">Virtual Tour</a></p>
			</cfif>
			<div class="sep"><span></span></div>
			<h4>Get More Information</h4>
			<p class="small"><a href="#request.basecaller#contact/" class="button animated bounce">Contact</a></p>
			<div class="sep"><span></span></div>
			<h4>Last Updated</h4>
			<p class="small icon-date">#LAST_MLS_UPDATE_DATE#</p>
			<div class="sep"><span></span></div>
			<h4>Listing Company</h4>
			<p class="small">#mls_office_name#</p>
			<div class="sep"><span></span></div>
			<h4>Disclaimer</h4>
			<p class="small" style="color: ##808080;font-size: 1.1rem;"> All listing information is deemed reliable but not guaranteed and should be independently verified through personal inspection by appropriate professionals. Listings displayed on this website may be subject to prior sale or removal from sale; availability of any listing should always be independently verified. Listing information is provided for consumer personal, non-commercial use, solely to identify potential properties for potential purchase; all other use is strictly prohibited and may violate relevant federal and state law. Copyright 2013, My Florida Regional MLS.</p>
			<!---<div class="sep"><span></span></div>
			<h4>Share Property</h4>
			<p class="small"><img src="#request.basecaller#tmp/share.jpg" alt="" class="tooltip" title="Replace this with a real sharing widget" /></p>--->
		</div>
	</div>
</section>
</cfoutput>
		  
<cfmodule template="../includes/footer.cfm">
<!---		<script type="text/javascript" id="exampleJsSource">
/*	Set authentication token and appid 
*	WARNING: this is a demo-only key
*	please register on http://developer.here.net/ by clicking 
*	he 'Sign In' link on the top right corner of the page 
*	and obtain your own developer's API key 
*/
nokia.Settings.set("appId", "<cfoutput>#application.NokiaAppID#</cfoutput>"); 
nokia.Settings.set("authenticationToken", "<cfoutput>#application.NokiaAppToken#</cfoutput>");

// Get the DOM node to which we will append the map
var mapContainer = document.getElementById("mapContainer");
// Create a map inside the map container DOM node
var map = new nokia.maps.map.Display(mapContainer, {
	// initial center and zoom level of the map
	center: [<cfoutput>#propertyLong.LATITUDE#</cfoutput>, <cfoutput>#propertyLong.LONGITUDE#</cfoutput>],
	zoomLevel: 4
});

/* We create a UI notecontainer for example description
 * NoteContainer is a UI helper function and not part of the Nokia Maps API
 * See exampleHelpers.js for implementation details 
 */
 var noteContainer = new NoteContainer({
	id: "basicMapUi",
	parent: document.getElementById("uiContainer"),
	title: "<cfoutput>#propertyLong.combined_address#</cfoutput>",
	content:
});


		</script>--->