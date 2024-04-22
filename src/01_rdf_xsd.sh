#!/bin/bash


riot --output=rdf/xml ./main/resources/be/vlaanderen/bodemenondergrond/data/id/conceptscheme/boortype/boortype.ttl > ./main/resources/be/vlaanderen/bodemenondergrond/data/id/conceptscheme/boortype/boortype.rdf

xsltproc ./source/xsl/rdf_to_xsd.xsl ./main/resources/be/vlaanderen/bodemenondergrond/data/id/conceptscheme/boortype/boortype.rdf > ./main/resources/be/vlaanderen/bodemenondergrond/data/id/conceptscheme/boortype/boortype.xsd
