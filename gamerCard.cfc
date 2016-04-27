<cfcomponent displayname="Gamer Card" output="false">

	<cffunction name="getTag" access="public" output="true" returntype="Any">
		<cfargument name="accountName" type="string" required="true" hint="user account to get">
		<cfargument name="country" type="string" required="false" default="" hint="user account country">
		<cfargument name="format" type="string" required="false" default="flash" hint="format to return the gamertag in">
		<cfset var shortCode = getCountryCode(arguments.country)>

		<cfswitch expression="#arguments.format#">

		<cfcase value="image">
			<a href="http://profile.mygamercard.net/ectoz"><img src="http://card.mygamercard.net/#shortcode#/#arguments.accountName#.png" border=0></a>
		</cfcase>

		<cfcase value="flash">
			<embed src="http://card.mygamercard.net/#shortcode#/#arguments.accountName#.swf" 
				classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
					type="application/x-shockwave-flash" 
						width="198" height="135"></embed>
		</cfcase>

		<cfcase value="silverlight">
		<object data="data:application/x-silverlight-2," type="application/x-silverlight-2" width="300" height="135">
			<param name="source" value="http://card.mygamercard.net/#shortcode#/default.xap" />
			<param name="enableHtmlAccess" value="true" />
			<param name="enableGPUAcceleration" value="true" />
			<param name="minRuntimeVersion" value="3.0.40624.0" />
			<param name="autoUpgrade" value="true" />
			<param name="initParams" value="gamertag=Ect0z,language=" />
			<a href="http://go.microsoft.com/fwlink/?LinkID=149156&v=3.0.40624.0" style="text-decoration:none">
				<img src="http://go.microsoft.com/fwlink/?LinkId=108181" alt="Get Microsoft Silverlight" style="border-style:none" />
			</a>
		</object>
		</cfcase>

		</cfswitch>

		<cfreturn />
	</cffunction>

	<cffunction name="getCountryCode" access="public" output="false" returntype="String">
		<cfargument name="country" type="string" required="true" hint="users country code">
		<cfset var returnShortCode = "">

		<cfswitch expression="#arguments.country#">
			<cfcase value="catalan">
				<cfset returnShortCode = "CA">
			</cfcase>
			<cfcase value="Chinese">
				<cfset returnShortCode = "ZH">
			</cfcase>
			<cfcase value="Czech">
				<cfset returnShortCode = "CS">
			</cfcase>
			<cfcase value="Danish">
				<cfset returnShortCode = "DA">
			</cfcase>
			<cfcase value="Dutch">
				<cfset returnShortCode = "NL">
			</cfcase>
			<cfcase value="Finnish">
				<cfset returnShortCode = "FI">
			</cfcase>
			<cfcase value="French">
				<cfset returnShortCode = "FR">
			</cfcase>
			<cfcase value="German">
				<cfset returnShortCode = "DE">
			</cfcase>
			<cfcase value="Malay">
				<cfset returnShortCode = "MS">
			</cfcase>
			<cfcase value="Korean">
				<cfset returnShortCode = "KO">
			</cfcase>
			<cfcase value="Japanese">
				<cfset returnShortCode = "JA">
			</cfcase>
			<cfcase value="Italian">
				<cfset returnShortCode = "IT">
			</cfcase>
			<cfcase value="Irish Gaelic">
				<cfset returnShortCode = "GA">
			</cfcase>
			<cfcase value="Hungarian">
				<cfset returnShortCode = "HU">
			</cfcase>
			<cfcase value="Hindi">
				<cfset returnShortCode = "HI">
			</cfcase>
			<cfcase value="Greek">
				<cfset returnShortCode = "EL">
			</cfcase>
			<cfcase value="Norwegian">
				<cfset returnShortCode = "NB">
			</cfcase>
			<cfcase value="Polish">
				<cfset returnShortCode = "PL">
			</cfcase>
			<cfcase value="Portuguese">
				<cfset returnShortCode = "PT">
			</cfcase>
			<cfcase value="Russian">
				<cfset returnShortCode = "RU">
			</cfcase>
			<cfcase value="Slovak">
				<cfset returnShortCode = "SK">
			</cfcase>
			<cfcase value="Spanish">
				<cfset returnShortCode = "ES">
			</cfcase>
			<cfcase value="Swedish">
				<cfset returnShortCode = "SV">
			</cfcase>
			<cfcase value="Welsh">
				<cfset returnShortCode = "CY">
			</cfcase>
			<cfdefaultcase>
				<cfset returnShortCode = "">
			</cfdefaultcase>
		</cfswitch>

		<cfreturn returnShortCode>
	</cffunction>
	
</cfcomponent>