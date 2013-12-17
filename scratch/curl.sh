
# Create database
curl -X PUT http://127.0.0.1:5984/stephane

# Insert document "foo:bob"
curl -d @data.json -X PUT http://127.0.0.1:5984/stephane/foo:bob
curl -d @data.json -X PUT http://127.0.0.1:5984/stephane/foo%3Abob

# Delete
curl -X DELETE http://127.0.0.1:5984/stephane/foo%3Abob
