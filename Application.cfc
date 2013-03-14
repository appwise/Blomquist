<cfcomponent>
	<cfset this.name = "blomquistsite">
	<!---<cfset this.datasource = "tabrealtor">--->
	<cfset this.datasource = "palmsrealtydb">
	<cfset this.ormenabled = "true">
	
	<cfset this.applicationtimeout = CreateTimeSpan( 0, 0, 1, 0 ) />
	<cfset this.sessionmanagement = true />
	<cfset this.setclientcookies = false />
	
	<cfset application.mypathname = "#GetDirectoryFromPath(GetCurrentTemplatePath())#">
	
	<cfif cgi.SERVER_NAME EQ "localhost" or cgi.SERVER_NAME EQ "127.0.0.1" >
		<!---<cfset application.basepath = "/codebox/blomquist/" />--->
        <cfset application.basepath = "/" />
	<cfelse>
		<cfset application.basepath = "/blomquist/" />
	</cfif>
    
    <!---Nokia Maps API--->
    <cfset application.NokiaAppID = 'zV7IFYA5eAwAd0QGjHq4'>
    <cfset application.NokiaAppToken = '376XaV4-lCszy7sfCflL9g'>
    
    <!--- database --->
    <cfset request.dsn = this.datasource>
    
	<!--- On Application Start --->
	<cffunction name="onApplicationStart">
    	<cfset application.properties = createObject("component", "components.property").init( request.dsn ) >
    </cffunction>
	
	<!--- On Request --->
	<cffunction name="onRequest">
		<cfargument name="templateName">
		
		<cfif cgi.SERVER_NAME EQ "localhost" or cgi.SERVER_NAME EQ "127.0.0.1" >
		    <!---<cfset request.basecaller = "http://" & CGI.SERVER_NAME & ":" & cgi.SERVER_PORT & "/codebox/blomquist/">--->
            <cfset request.basecaller = "http://" & CGI.SERVER_NAME & ":" & cgi.SERVER_PORT & "/">
		<cfelse>
		    <cfset request.basecaller = "http://" & CGI.SERVER_NAME & "/blomquist/">
		</cfif>
		
		<cfinclude template="#arguments.templateName#">
		
	</cffunction>
    
    <cffunction name="onRequestStart">
    	<cfif isDefined("url.resetApp")>
        	<cfset temp = onApplicationStart()>
        </cfif>
        
       
    </cffunction>
	<!--- End On Request --->
		
	<!---<cferror template="#application.basepath#cferror.cfm" type="exception" exception="any" >--->
	
</cfcomponent>