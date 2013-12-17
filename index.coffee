{renderable,doctype,html,head,title,script,body,h1,div} = require 'teacup'

template = renderable ->
  doctype 5
  html ->
    head ->
      title 'CouchDB workshop'
      script src:'bower_components/jquery/jquery.min.js'
      script src:'bower_components/supercouch/supercouch.min.js'
      script src:'bower_components/superagent/superagent.js'
      script src:'bower_components/pouchdb/dist/pouchdb-nightly.js'
      script src:'dist/CouchDB-2013-12-17.js'

    body ->
      h1 'CouchDB workshop'
      div '#content', 'No content (yet)'

if require.main is module
  console.log template({})
else
  module.exports = template
