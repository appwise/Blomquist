<cfquery name="qryBlomProperties" datasource="#this.datasource#">
	SELECT MLS_LISTING_ID, Sale_Price, Street_Direction, Street_Number, Street_Name, Street_Type, Unit_Number, CITY, Bedrooms, Baths_Full, Baths_Half, photo_url, 
	STREET_DIRECTION + ' ' + STREET_NUMBER + ' ' + STREET_NAME  + ' ' + STREET_TYPE as combined_address 
	
	FROM Properties_SarasotaManatee
	
	WHERE ( STATUS_CODE = 'A' or STATUS_CODE = 'C' )
	<!---AND MLS_AGENT_ID = <cfqueryparam cfsqltype="cf_sql_varchar" value="#AgentID#" maxlength="10">--->
	ORDER BY LAST_MLS_UPDATE_DATE DESC
</cfquery>

<cfquery name="qry7DaysProperties" datasource="#this.datasource#">
	SELECT TOP 8 MLS_LISTING_ID, Sale_Price, Street_Direction, Street_Number, Street_Name, Street_Type, Unit_Number, CITY, Bedrooms, Baths_Full, Baths_Half, photo_url, 
	STREET_DIRECTION + ' ' + STREET_NUMBER + ' ' + STREET_NAME  + ' ' + STREET_TYPE as combined_address 
	
	FROM Properties_SarasotaManatee
	
	WHERE ( STATUS_CODE = 'A' or STATUS_CODE = 'C' )
	AND last_mls_update_date > getdate() - 7
	ORDER BY LAST_MLS_UPDATE_DATE DESC
</cfquery>

<cfmodule template="/includes/header.cfm" pagetitle="Sarasota and Lakewood Ranch Florida Real Estate Agent"
		  description="Timothy A. Blomquist, Realtor is a real estate agent specializing in the Lakewood Ranch, FL and Sarasota, FL areas."
		  keywords="Timothy A. Blomquist, Realtor, real estate agent, Lakewood Ranch, Florida, Sarasota, FL homes.">

<cfoutput>
	<!---<cfdump var="#qry7DaysProperties#">--->
<section id="main">
	<div class="flexslider loading">
		<ul class="slides">
			<li>
				<img src="images/home-slider/sarasota-golf.jpg" alt="" />
				<div class="info">
					<div class="inner">
						<h2><a href="">Golf Anyone?</a></h2>
						<p>The best golf course properties in the world are found right here in Florida!</p>
					</div>
				</div>
			</li>
			<li>
				<img src="images/home-slider/sarasota-beach.jpg" alt="" />
				<div class="info">
					<div class="inner">
						<h2><a href="">Beach Lifestyle?</a></h2>
						<p>If it's the beach lifestyle you crave, you've come to the right place, home to some of the best beaches in the country.</p>
					</div>
				</div>
			</li>
			<li>
				<img src="images/home-slider/13418-2nd-avenue.jpg" alt="" />
				<div class="info">
					<div class="inner">
						<h2><a href="">13418 2nd Avenue, Bradenton, FL</a></h2>
						<p>Desirable 4 bedroom, 3 bath, Contemporary home with many upgrades.</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="wrapper clearfix">
		<div class="call-to-action clearfix">
			<div class="left">
				<h3>If you're looking for a dedicated real estate agent, look no further!</h3>
				<p>Call Tim at 941-544-4044 for all of your real estate needs.</p>
			</div>
			<a href="#request.basecaller#contact/" class="button right animated bounce">Get in touch with me now</a>
		</div>
		<div class="sep sep-margin-top"><span></span></div>
		<div class="col grid12">
			<h2>My Listings</h2>
			<p class="small">Here are a few listings you will surely like to see! To search for a specific area, try searching above.</p>
		</div>
		<div class="col grid4 alpha">
			<div class="thumb round">
				<a href="#request.basecaller#contact/" class="image-link animated bounce"><img src="images/home-slider/13418-2nd-avenue-listing.jpg" alt="" /><span class="icon-link"></span></a>
				<div class="info">
					<h4><a href="#request.basecaller#contact/" class="button">Property Details</a></h4>
					<em>$399,000</em>
				</div>
			</div>
		</div>
		<div class="col grid4 alpha">
			<div class="thumb round">
				<a href="#request.basecaller#contact/" class="image-link lightbox animated bounce"><img src="images/home-slider/14515-whitemoss.jpg" alt="" /><span class="icon-link"></span></a>
				<div class="info">
					<h4><a href="#request.basecaller#contact/" class="button">Property Details</a></h4>
					<em>$357,900</em>
				</div>
			</div>
		</div>
		<div class="col grid4 alpha">
			<div class="thumb round">
				<a href="#request.basecaller#contact/" class="image-link lightbox animated bounce"><img src="images/home-slider/14547-whitemoss.jpg" alt="" /><span class="icon-link"></span></a>
				<div class="info">
					<h4><a href="#request.basecaller#contact/" class="button">Property Details</a></h4>
					<em>$407,472</em>
				</div>
			</div>
		</div>
		<div class="sep"><span></span></div>
		
		<div class="col grid12">
			<h2>Newest Listings on the Market</h2>
			<cfloop query="qry7DaysProperties">
			<div class="col grid2 alpha">
				<div class="thumb round">
					<a href="#request.basecaller#real-estate/index.cfm?fuseaction=property-detail&MLS=#mls_listing_id#" class="image-link animated bounce"><img src="#photo_url#" alt="" /><span class="icon-link"></span></a>
				</div>
			</div>
			</cfloop>
		</div>
		
		<!---<div class="col grid12">
			<h2>Newest Listings on the Market</h2>
			<p class="small">These Sarasota and Manatee County listings are new on the market over the past 7 days.</p>
			<div class="clients-grid clearfix">
				<cfloop query="qry7DaysProperties">
					<div class="thumb round">
						<a href="#request.basecaller#real-estate/index.cfm?fuseaction=property-detail&MLS=#mls_listing_id#" 
						   class="image-link animated bounce"><img src="#photo_url#" width="130" height="130" alt="" /></a>
					</div>
				</cfloop>
			</div>
		</div>--->
		
	</div>
</section>
</cfoutput>
		  
<cfmodule template="/includes/footer.cfm">