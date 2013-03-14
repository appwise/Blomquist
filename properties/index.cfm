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

<cfmodule template="../includes/header.cfm" pagetitle="Sarasota and Manatee County Real Estate Search"
		  description="Find properties in Sarasota and Manatee counties here using Tim's Florida real estate search."
		  keywords="Find properties, search homes, Sarasota, Manatee County, Florida, FL">

<cfoutput>
<section id="main">
	<div class="wrapper clearfix">
		<div class="col grid12">
			<h1 class="page-title left">Sarasota and Manatee County Real Estate Search</h1>
			<!---<div class="subtitle">
				<p class="small grey">Natoque montes nascetur eu pretium quis sem</p>
			</div>--->
			<div class="clear"></div>
			<div class="col grid5 alpha">
				<!---<div class="alert notice">Error????</div>--->
				<cfform action="results.cfm" method="post">
					<label for="city">Area:</label>
					<cfselect name="city" id="city" class="full-width help" query="qryCities" display="cityName" value="cityCode" queryPosition="below" tabindex="1">
						<option value="">All Cities</option>
					</cfselect>
					<label for="mlsNumber">MLS Number:</label>
					<cfinput type="text" name="mlsNumber" id="mlsNumber" class="full-width help" tabindex="3" />
					<label for="address">Address:</label>
					<cfinput type="text" name="address" id="address" class="full-width help" tabindex="5" />
					<label for="minPrice">Min Price: (If 400,000, type 400000)</label>
					<cfinput type="text" name="minPrice" id="minPrice" class="full-width help" tabindex="7"/>
					<label for="BEDS">Bedrooms:</label>
					<cfselect name="BEDS" id="BEDS" class="full-width help"  query="numbers" display="dNum" value="vNum" queryPosition="below"  tabindex="9">
						<option value="">No Preference</option>
					</cfselect>
				
			</div>
			<div class="col grid5">
					<label for="county">County:</label>
					<cfselect name="county" id="county" class="full-width help"  tabindex="2">
						<option value="0">Sarasota and Manatee</option>
						<option value="1">Manatee</option>
						<option value="2">Sarasota</option>
					</cfselect>
					<label for="propertyType">Property Type:</label>
					<cfselect name="propertyType" id="propertyType" query="qryPropertyTypes" display="CodeDescription" value="typeCode" queryPosition="below" class="full-width help" tabindex="4">
						<option value="">Select One</option>
					</cfselect>
					<label for="zipcode">Zip Code:</label>
					<cfinput type="text" name="zipcode" id="zipcode" class="full-width help" tabindex="6" />
					<label for="maxprice">Max Price: (If 500,000, type 500000)</label>
					<cfinput type="text" name="maxprice" id="maxprice" class="full-width help" tabindex="8"/>
					<label for="BATHS">Bathrooms:</label>
					<cfselect name="BATHS" id="BATHS" class="full-width help" query="numbers" display="dNum" value="vNum" queryPosition="below"  tabindex="10">
						<option value="">No Preference</option>
					</cfselect>
					<cfinput type="submit" name="cmdsearch" value="Search" class="animated bounce help" />
				</cfform>
			</div>
		</div>
	</div>
</section>
</cfoutput>
		  
<cfmodule template="../includes/footer.cfm">