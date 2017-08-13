docker run -d -p 5984:5984 -v /usr/local/var/lib/couchdb --name db1 --volumes-from db-data klaemo/couchdb
