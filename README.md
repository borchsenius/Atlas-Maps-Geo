Atlas-Maps-Geo
==============

PROOF-OF-CONCEPT: a hydra-head for managing and displaying the digital Maps & Atlas' collection from the Royal Library. The Collection will contain selected metadata fields: title, published_year and most important geocoordinates.


Questions:
- What datatype should be used in the cModel (the ruby model) to represent one or more geocoordinates?
- How can the discovery interface blacklight facilitate baounding-box searches


We could use 
- Spatial in Solr4. http://wiki.apache.org/solr/SolrAdaptersForLuceneSpatial4
- For displaying: Open street map API http://www.openstreetmap.org for displaying the geo coordinates
- Test data: http://www.kb.dk/maps/kortsa/2012/jul/kortatlas/en/ notice that the collection has no geocoordinates atm.
