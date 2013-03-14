<cfparam name="form.fname" default="" >
<cfparam name="form.lname" default="" >
<cfparam name="form.email" default="" >
<cfparam name="form.phone" default="" >
<cfparam name="form.message" default="" >

<!--- Send Email and Add to DB --->
<cfif StructKeyExists(form, "submitButton")> 
	
	<cfif StructKeyExists(form, "fname") AND form.fname EQ "">
		<cfset errormessagefname = "Please enter your First Name!">
	<cfelseif StructKeyExists(form, "lname") AND form.lname EQ "">
		<cfset errormessagefname = "Please enter your Last Name!">
	<cfelseif StructKeyExists(form, "email") AND NOT isValid("email", form.email)>
		<cfset errormessageemail = "Please enter a valid Email Address! Ex. abc@123.com">
	<cfelseif NOT isDefined('errormessagefname') OR NOT isDefined('errormessagelname') OR NOT isDefined('errormessageemail')>
		<cfquery name="qContactAdd" datasource="tabrealtor">
			INSERT
			INTO tContacts
			(
			first_name,
			last_name,
			email_address,
			phone_number,
			msg,
			source
			)
			VALUES
			(
			<cfqueryparam value="#form.fname#" cfsqltype="cf_sql_varchar">,
			<cfqueryparam value="#form.lname#" cfsqltype="cf_sql_varchar">,
			<cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar">,
			<cfqueryparam value="#form.phone#" cfsqltype="cf_sql_varchar">,
			<cfqueryparam value="#form.message#" cfsqltype="cf_sql_varchar">,
			'Contact Form'
			)
		</cfquery>
	</cfif>
	
	<cfmail to="tim@tablomquist.com" bcc="support@limitlessmind.com" from="#form.fname# #form.lname# <#form.email#>" server="smtp.ihostexchange.net" username="tony.serkis@limitlessmind.com" password="7BurTon162" port="587" subject="Tim Blomquist Website Lead" useTLS="yes" type="html">
    	
		This lead came from the TAB website.<br />
		<br />
		#form.fname# #form.lname#<br />
		#form.email#<br />
		#form.phone#<br />
		<br />
		#ParagraphFormat(form.message)#<br />
		<br />
		#form.source#<br />
	
	</cfmail>
	
</cfif>
<!--- End Send Email and Add to DB --->

<cfmodule template="../includes/header.cfm" pagetitle="Contact Tim"
		  description="Contact Timothy A. Blomquist, for all of your real estate needs."
		  keywords="Timothy A. Blomquist, Contact">

<cfoutput>
<section id="main">
	<div class="wrapper clearfix">
		<div class="col grid12">
			<h1 class="page-title">Get in contact with Tim</h1>
		</div>
		<div class="col grid8 alpha">
			<h3>Contact Form</h3>
			<div class="sep"></div>
			<cfform method="post" preservedata="true">
				<!--- Alert Error --->
				
				<cfif isdefined("errormessagefname")>
				<div class="message"><div id="contact_alert" class="alert notice">#errormessagefname#</div></div>
				</cfif>
				
				<cfif isdefined("errormessagelname")>
				<div class="message"><div id="contact_alert" class="alert notice">#errormessagelname#</div></div>
				</cfif>
				
				<cfif isdefined("errormessageemail")>
				<div class="message"><div id="contact_alert" class="alert notice">#errormessageemail#</div></div>
				</cfif>
				
                <!--- Alert Error --->
				
				<label>First Name:</label>
				<cfinput type="text" name="fname" id="fname" class="full-width help" />
				<label>Last Name:</label>
				<cfinput type="text" name="lname" id="lname" class="full-width help" />
				<label>Email:</label>
				<cfinput type="text" name="email" id="email" class="full-width help" />
				<label>Phone:</label>
				<cfinput type="text" name="phone" id="phone" class="full-width help" />
				<label>Message:</label>
				<cftextarea name="message" id="message" cols="30" rows="7" class="full-width help"></cftextarea>
				<!---<cfinput name="source" type="hidden" value="Contact Form">--->
				<cfinput type="submit" name="submitButton" value="Send" class="button" />
			</cfform>
		</div>
		<cfinclude template="../includes/contact-sidebar-no-button.cfm" >
	</div>
</section>
</cfoutput>
		  
<cfmodule template="../includes/footer.cfm">