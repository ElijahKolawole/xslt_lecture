<%
'Load XML file
set xml = Server.CreateObject("Microsoft.XMLDOM")
xml.async = false
xml.load(Server.MapPath("a3.xml"))

'Load XSL file
set xsl = Server.CreateObject("Microsoft.XMLDOM")
xsl.async = false
xsl.load(Server.MapPath("b3.xsl"))

'Transform file
Response.Write(xml.transformNode(xsl))
%>