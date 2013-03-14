<cfcomponent>
	<cffunction name="init" access="public" output="false" returntype="property" hint="constructor">
        <cfargument name="DSN" type="string" required="true" hint="datasource" />
        <cfset variables.DSN = arguments.DSN />
        <cfreturn this />
    </cffunction>
    
	<cffunction name="search" access="remote" returntype="query">
<!---
	@BEDS INT,
	@BATHS INT,
	@MinPrice INT,
	@MaxPrice INT,
	@address varchar(500),
	@PropertyType nvarchar(50),
	@sqfeet int,
	@city nvarchar(50),
	@zipcode nvarchar(50),
	@PoolTypes varchar(8000),
	@WaterViews varchar(8000),
	@Amenities varchar(8000)
--->
    	<cfargument type="any" name="BEDS" required="no">
        <cfargument type="any" name="BATHS" required="no">
        <cfargument type="any" name="MinPrice" required="no">
        <cfargument type="any" name="MaxPrice" required="no">
        <cfargument type="any" name="address" required="no">
        <cfargument type="any" name="PropertyType" required="no">
        <cfargument type="any" name="sqfeet" required="no">
        <cfargument type="any" name="city" required="no">
        <cfargument type="any" name="zipcode" required="no">
        <cfargument type="any" name="MLSnumber" required="no">
        <cfargument type="any" name="PoolTypes" required="no">
        <cfargument type="any" name="WaterViews" required="no">
        <cfargument type="any" name="Amenities" required="no">
        
        <cfstoredproc procedure="sproc_SearchListings" datasource="#variables.dsn#">
        	<cfprocparam cfsqltype="cf_sql_integer" value="#trim(arguments.BEDS)#" null="#iif(len(trim(arguments.BEDS)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_integer" value="#trim(arguments.BATHS)#" null="#iif(len(trim(arguments.BATHS)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_integer" value="#trim(arguments.MinPrice)#" null="#iif(len(trim(arguments.MinPrice)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_integer" value="#trim(arguments.MaxPrice)#" null="#iif(len(trim(arguments.MaxPrice)) EQ 0, true, false)#">
        	<cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.address)#" null="#iif(len(trim(arguments.address)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.PropertyType)#" null="#iif(len(trim(arguments.PropertyType)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.sqfeet)#" null="#iif(len(trim(arguments.sqfeet)) EQ 0, true, false)#">
             <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.city)#" null="#iif(len(trim(arguments.city)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.zipcode)#" null="#iif(len(trim(arguments.zipcode)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.MLSnumber)#" null="#iif(len(trim(arguments.MLSnumber)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.PoolTypes)#" null="#iif(len(trim(arguments.PoolTypes)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.WaterViews)#" null="#iif(len(trim(arguments.WaterViews)) EQ 0, true, false)#">
            <cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.Amenities)#" null="#iif(len(trim(arguments.Amenities)) EQ 0, true, false)#">
            <cfprocresult name="properties">
        </cfstoredproc>
        
        <cfreturn properties>
    </cffunction>
    
    <cffunction name="display" access="remote" returntype="query">
    
    	<cfargument type="any" name="mlsNumber" required="yes">
        
        <cfstoredproc procedure="sproc_DisplayListing" datasource="#variables.dsn#">
        	<cfprocparam cfsqltype="cf_sql_varchar" value="#trim(arguments.mlsNumber)#" null="#iif(len(trim(arguments.mlsNumber)) EQ 0, true, false)#">
         <cfprocresult name="property">
        </cfstoredproc>
    	<cfreturn property>
    </cffunction>
</cfcomponent>