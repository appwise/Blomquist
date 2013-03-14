<!--- Query --->
<cfset propertyShort = application.properties.search(FORM.BEDS,FORM.BATHS,FORM.MINPRICE,FORM.MAXPRICE,FORM.ADDRESS,FORM.PROPERTYTYPE,'',FORM.CITY,FORM.ZIPCODE,FORM.MLSNUMBER,'','','')>
<cfquery datasource="#this.datasource#" name="qryCities">
	SELECT     cityCode, cityName
	FROM       tCitycodes
	ORDER BY   cityName
</cfquery>

<cfquery datasource="#this.datasource#" name="qryPropertyTypes">
	SELECT  	typeCode, CodeDescription
	FROM 		tPropertyTypeCodes
	ORDER BY 	CodeDescription
</cfquery>

<cfscript>
    numbers = queryNew("vNum,dNum");
    queryAddRow(numbers, 6);
 
    querySetCell(numbers, "vNum", "0", 1);
    querySetCell(numbers, "dNum", "0", 1);
 
    querySetCell(numbers, "vNum", "1", 2);
    querySetCell(numbers, "dNum", "1", 2);
 
    querySetCell(numbers, "vNum", "2", 3);
    querySetCell(numbers, "dNum", "2", 3);
 
    querySetCell(numbers, "vNum", "3", 4);
    querySetCell(numbers, "dNum", "3", 4);
 
    querySetCell(numbers, "vNum", "4", 5);
    querySetCell(numbers, "dNum", "4", 5);
 
    querySetCell(numbers, "vNum", "5", 6);
    querySetCell(numbers, "dNum", "5", 6);
</cfscript>

<cfscript>
    pages = queryNew("vNum,dNum");
    queryAddRow(pages, 6);
 
    querySetCell(pages, "vNum", "8", 1);
    querySetCell(pages, "dNum", "8", 1);
 
    querySetCell(pages, "vNum", "16", 2);
    querySetCell(pages, "dNum", "16", 2);
 
    querySetCell(pages, "vNum", "32", 3);
    querySetCell(pages, "dNum", "32", 3);
 
    querySetCell(pages, "vNum", "64", 4);
    querySetCell(pages, "dNum", "64", 4);
 
    querySetCell(pages, "vNum", "128", 5);
    querySetCell(pages, "dNum", "128", 5);
 
    querySetCell(pages, "vNum", "256", 6);
    querySetCell(pages, "dNum", "256", 6);
</cfscript>


<cfmodule template="../includes/header.cfm" pagetitle="Real Estate Search Results"
		  description="Real estate listing search results."
		  keywords="Sarasota, Manatee, Florida, FL, county, real estate, listings">
<!---COUNTY,MLSNUMBER--->

<!--- Div show/hide script --->
<cfset valmax = round( (Int(propertyShort.recordcount) /32) + 1 )>
<script type="text/javascript"> 
function opendiv(id) { 
 for (i=1;i<=<cfoutput>#valmax#</cfoutput>;i++) { // so you can add more than 2 
 var divname = 'div'+i; 
 var divstyle = document.getElementById(divname).style; 
 divstyle.display=(id==divname)?'block':'none'; 
 } 
} 
</script>

<section id="main">
	<div class="wrapper clearfix">
		<div class="col grid12">
			<h1 class="page-title">Real Estate Search Results</h1>
		</div>
        	<!--- CREATE the pagination navigation --->
            <div class="col grid2">
            	<cfform method="get">
                	<cfselect name="numPerPage" selected="#url.numPerPage#" query="pages" display="dNum" value="vNum" queryPosition="below"  tabindex="0">
               		<option value="">No Preference</option>
                    </cfselect>
                </cfform>
            </div>
            <div class="col grid10">
            <cfoutput>
                <cfloop index="clicker" from="1" to="#round( ((propertyShort.recordcount) /32) +1)#">
                <CFSET phlimzee = 'div' & #clicker#>
                    <a onclick="opendiv('#phlimzee#');" class="button">#clicker#</a>
                </cfloop>
            </cfoutput>
            </div>
            
        	<!--- Set the pagination counters --->
            <cfset pageination = 1>
            <div class="col grid9 alpha" id="div<cfoutput>#pageination#</cfoutput>" style="display:block;">
            	<cfoutput query="propertyShort" startrow="1" maxrows="320">
                <div class="col grid3" style="margin-left:1%;">
                	
					<div class="thumb round">
						<div style="position:relative;overflow:hidden;">
						<a href="property-detail.cfm?mls_id=#propertyShort.MLS_LISTING_ID#" class="image-link animated " style="background:url(#PHOTO_URL#) no-repeat;background-position:center;"><img src="#request.basecaller#tmp/large-square.png" alt="" /><span class="icon-link"></span></a>
						</div>
						<div class="info">
							<h4><a href="property-detail.cfm?mls_id=#propertyShort.MLS_LISTING_ID#" class="button">Details</a></h4>
							<strong>$#numberFormat(propertyShort.sALE_PRICE)#</strong>
						</div>
					</div>
                    
                </div>
                <cfif (val(propertyShort.currentrow / 32) EQ int(propertyShort.currentrow / 32)) and (propertyShort.recordcount NEQ propertyShort.currentrow)>
                	<cfset pageination = pageination + 1>
            </div>
                    
            <div class="col grid9 alpha" id="div#pageination#" style="display:none;">
                </cfif>
                </cfoutput>
            </div>
        
      
		<div id="sidebar" class="col  grid3" style="vertical-align:top;">
			<h3>Refine Search</h3> 
            <span class="small grey">
			<cfoutput>#propertyShort.RecordCount#</cfoutput> Results: 
            <cfif propertyShort.RecordCount GTE 320>Showing first 320 records.</cfif>
            </span>
			<div class="sep"><span></span></div>
			<cfform action="results.cfm" method="post">
				<label for="city">Area:</label>
				<cfselect name="city" id="city" class="full-width help" query="qryCities" display="cityName" value="cityCode" queryPosition="below" selected="#form.city#" tabindex="1">
					<option value="">All Cities</option>
				</cfselect>
				<label for="county">County:</label>
				<cfselect name="county" id="county" class="full-width help" selected="#form.county#"  tabindex="2">
					<option value="0">Sarasota and Manatee</option>
					<option value="1">Manatee</option>
					<option value="2">Sarasota</option>
				</cfselect>
				<label for="mlsNumber">MLS Number:</label>
				<cfinput type="text" name="mlsNumber" id="mlsNumber" value="#FORM.MLSNUMBER#" class="full-width help" tabindex="3" />
				<label for="propertyType">Property Type:</label>
				<cfselect name="propertyType" id="propertyType" query="qryPropertyTypes" display="CodeDescription" value="typeCode" queryPosition="below" selected="#form.propertyType#" class="full-width help" tabindex="4">
					<option value="">Select One</option>
				</cfselect>
				<label for="address">Address:</label>
				<cfinput type="text" name="address" id="address" value="#form.address#" class="full-width help" tabindex="5" />
				<label for="zipcode">Zip Code:</label>
				<cfinput type="text" name="zipcode" id="zipcode" value="#form.zipcode#" class="full-width help" tabindex="6" />
				<label for="minprice">Min Price: (If 400,000, type 400000)</label>
				<cfinput type="text" name="minprice" id="minprice" value="#form.minprice#" class="full-width help" tabindex="7"/>
				<label for="maxprice">Max Price: (If 500,000, type 500000)</label>
				<cfinput type="text" name="maxprice" id="maxprice" value="#form.maxprice#" class="full-width help" tabindex="8"/>
				<label for="BEDS">Bedrooms:</label>
				<cfselect name="BEDS" id="BEDS" class="full-width help" selected="#form.BEDS#" query="numbers" display="dNum" value="vNum" queryPosition="below"  tabindex="9">
               		<option value="">No Preference</option>
                </cfselect>
                
				<label for="BATHS">Bathrooms:</label>
				<cfselect name="BATHS" id="BATHS" class="full-width help" selected="#form.BATHS#" query="numbers" display="dNum" value="vNum" queryPosition="below" tabindex="10">
                	<option value="">No Preference</option>
                </cfselect>
                
				<cfinput type="submit" name="cmdrefine" value="Refine" class="animated bounce help" />
			</cfform>
		</div>
	</div>
</section>

		  
<cfmodule template="../includes/footer.cfm">