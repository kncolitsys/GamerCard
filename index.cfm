<cfparam name="url.accountName" default="">
<cfparam name="url.Action" default="">

<h1>GamerCard test</h1>
<form action="index.cfm">
<div>Enter an Xbox 360 account</div>
<input type="text" size="15" name="accountName" value="<cfoutput>#url.accountName#</cfoutput>"> <input type="submit" value="Run test" name="Action">
</form>

<cfif len(url.Action)>

	<cfset request.gamerCard = createObject('component', 'gamerCard')>

	<cfset flash['accountName'] = url.accountName>
	<cfset flash['country'] = ''>
	<cfset flash['format'] = 'flash'>
<p></p>
	<div>Format returned as flash</div>
	<cfdump var="#flash#" label="Args">
	<cfoutput>#request.gamerCard.getTag(argumentCollection=flash)#</cfoutput>

	<cfset image['accountName'] = url.accountName>
	<cfset image['country'] = 'Norwegian'>
	<cfset image['format'] = 'image'>
<p></p>
	<div>Format returned as an image and Norwegian language</div>
	<cfdump var="#image#" label="Args">
	<cfoutput>#request.gamerCard.getTag(argumentCollection=image)#</cfoutput>	

	<cfset silverlight['accountName'] = url.accountName>
	<cfset silverlight['country'] = ''>
	<cfset silverlight['format'] = 'silverlight'>
<p></p>
	<div>Format returned as silverlight</div>
	<cfdump var="#silverlight#" label="Args">
	<cfoutput>#request.gamerCard.getTag(argumentCollection=silverlight)#</cfoutput>	
<p></p>
</cfif>	