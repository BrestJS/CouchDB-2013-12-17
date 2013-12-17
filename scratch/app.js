var couchapp = require('couchapp');

ddoc = {
  _id: '_design/base'
, views: {}
, lists: {}
, shows: {}
, filters: {}
}

module.exports = ddoc

# ddoc.views :: { map: function(doc), reduce: function(keys,values,rereduce) }
# ddoc.shows :: function(doc,req)
# ddoc.lists :: function(head,req)
# ddoc.filters: function(doc,req)
# ddoc.validate_doc_update = function(newDoc, oldDOc, userCtx, secObj)

ddoc.type = '_design document'

ddoc.validate_doc_update = function(newDoc, oldDoc, userCtx) {
  function require(field,message) {
    message = message || "Document must have a " + field;
    if (!newDoc[field]) throw({forbidden : message});
  }

  require('type');
}

# couchapp.loadAttachments(ddoc,(require('path')).join(__dirname,'_attachments'));
