References
==========

http://couchdb.apache.org/ (homepage)
http://docs.couchdb.org/en/latest/ (doc officielle, incomplète par endroits)
http://wiki.apache.org/couchdb/ (ancienne doc, mais plus complète, sauf sans doute sur les nouvelles fonctionalités)

en particulier: http://wiki.apache.org/couchdb/Reference
et tout spécialement: http://wiki.apache.org/couchdb/Complete_HTTP_API_Reference

Un essai de spécification (à la RFC) du protocole de replication de CouchDB: http://www.replication.io/spec
(éventuellement j'aimerai que les différentes parties de CouchDB soient publiées comme une/des RFC!)

Experimenter!
=============

PouchDB
-------

PouchDB: https://github.com/daleharvey/pouchdb
(mon calendrier sync'able! https://github.com/shimaore/pouchdb-calendar )
Note: CORS doit être activé sur CouchDB pour utiliser la réplication avec PouchDB, cf http://pouchdb.com/getting-started.html
À suivre aussi, https://github.com/natevw/PeerPouch , PouchDB-sur-WebRTC

PouchDB signifie aussi qu'on peut émuler l'appli CouchDB dans Node.js:
https://github.com/nick-thompson/express-pouchdb (module Express)
https://github.com/nick-thompson/pouchdb-server (server Node.js

Hoodie
------

Hoodie: hood.ie (à suivre, utilise CouchDB (et éventuellement PouchDB))
