<?php
// Load XML file
$xml = new DOMDocument;
$xml->load('a3.xml');

// Load XSL file
$xsl = new DOMDocument;
$xsl->load('b3.xsl');

// Configure the transformer
$proc = new XSLTProcessor;

// Attach the xsl rules
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
?>