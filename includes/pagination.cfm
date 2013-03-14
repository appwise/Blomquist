<p align="right">
[
<cfif url.start gt 1>
    <cfset link = cgi.script_name & "?start=" & (url.start - perpage)>
    <cfoutput><a href="#link#">Previous Page</a></cfoutput>
<cfelse>
    Previous Page
</cfif>
/
<cfif (url.start + perpage - 1) lt propertyShort.recordCount>
    <cfset link = cgi.script_name & "?start=" & (url.start + perpage)>
    <cfoutput><a href="#link#">Next Page</a></cfoutput>
<cfelse>
    Next Page
</cfif>
]
</p>