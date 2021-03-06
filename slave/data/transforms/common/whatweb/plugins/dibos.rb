##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "DiBos" do
author "Andrew Horton"
version "0.1"
description "DiBos security surveillance system homepage: www.boschsecurity.com"
examples %w| 219.89.120.119 209.3.146.51|

# for a non IE browser
# <h2>Object moved to <a href="/Error.aspx?error=wrongbrowser">here</a>.</h2>

#<title>DiBos - Login</title>
#<link rel="STYLESHEET" type="text/css" href="style/bovisnt.css"></link>
#<OBJECT id="Loader" style="width:0;height:0" codeBase='cab/Dibos80.CAB#version=8,5,0,1092' classid="CLSID:6F83F815-49D0-46BB-A81C-A9D18C33A0E7"


#"\r\n<script language=\"jscript\"  src=\"Scripting/ScriptLib.js\"></script>\r\n\r\n\r\n\r\n\r\n\r\n<html>\r\n<META HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">\r\n<META HTTP-EQUIV=\"Expires\" CONTENT=\"-1\">\r\n\r\n<head>\r\n<TITLE>DiBos - Login</TITLE>\r\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"style/bovisnt.css\"></link>\r\n</head>\r\n\r\n<body>\r\n<!-- Page start -->\r\n<table border=\"0\">\r\n<tr>\r\n<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n<td class=\"errorStyle\">\r\nPlease update your browser version.<br>Microsoft Internet Explorer 5.0 or higher is supported.\r\n</td>\r\n</tr>\r\n<tr><td colspan=\"2\">&nbsp;</td></tr>\r\n</table>\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n"


matches [
{:name=>"title", 
:probability=>100,
:regexp=>/<title>DiBos - Login<\/title>/i },

{:name=>"bovisnt css", 
:probability=>100,
:text=>'<link rel="STYLESHEET" type="text/css" href="style/bovisnt.css"></link>' },

{:name=>"object moved", 
:probability=>25,
:text=>'<h2>Object moved to <a href="/Error.aspx?error=wrongbrowser">here</a>.</h2>'}
]


end

