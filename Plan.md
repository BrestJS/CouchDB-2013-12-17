Plan
====

* Révision de HTTP

  méthodes .. REST
  en-têtes

  -> RESTClient

* JSON

*CouchDB proper starts now!*

* Futon

    champs attendus: `_id`, `_rev`

    conventions: `type` (->"tables" SQL)

* Un peu d'admin

    Party Mode vs admins
    (probably skip permissions and users for now)

    SSL: stunnel

* Créer un gestionnaire de tâches

    conventions, conventions! -- title, description, priority, due, cost, completed

    créer les documents avec Futon en mode `Fields`, en mode `Source` (montrer comment Futon envoie les commandes)

    créer les documents avec RESTClient

    créer les documents avec curl

    créer les documents avec le navigateur et PouchDB('localhost:5984'), avec le navigateur + supercouch

    créer les documents avec Node.js + PouchDB('localhost:5984'), avec Node.js + supercouch

    DELETE vs _deleted:true

* Utiliser les vues

    créer une vue: émettre une clef, émettre des champs calculés

    la sauvegarder; _design documents

    observer l'ordre de tri; le rôle des clefs composées

    utilisation avec _count, _sum

    créer ses propres fonctions reduce (EXAMPLE NEEDED)

    filters

    wrapping it up: couchapps

* Replication

    consistance éventuelle: 409, conflict (NEED RESEARCH)

    http://replication.io

    filtered replication

* Changes

    les données commandent l'action

    les patterns que j'ai essayé (et qui marchent plus ou moins bien)

* ...

Travail en mode déconnecté avec PouchDB

Un mot sur Hoodie

Le concept d'origine
--------------------

Cet atelier partira des concepts derrière CouchDB, en particulier la `consistance éventuelle` et la réplication, pour arriver jusqu'au développement en mode déconnecté dans le navigateur avec le module PouchDB, en passant par l'utilisation comme base de données pour applicatifs serveur (en particulier sous Node.js).
