from pymongo import MongoClient

user = "root"
pwd = "MjA4MjktYmViZWl1" 
host = "localhost"
connect_url = f"mongodb://{user}:{pwd}@{host}:27017/?authSource=admin"
print("Connecting to mongodb server")
connection = MongoClient(connect_url)

# select the 'training' database 
db = connection.training

# select the 'python' collection 
collection = db.mongodb_glossary


doc1 = {"database":"a database contains collections"}
doc2 = {"collection":"a collection stores the documents"}
doc3 = {"document":"a document contains the data in the form or key value pairs."}

# insert
collection.insert_one(doc1)
collection.insert_one(doc2)
collection.insert_one(doc3)

# query for all documents in 'training' database and 'python' collection
docs = db.collection.find()

print("Printing the documents in the collection.")
for document in docs:
    print(document)

# close the server connecton
print("Closing the connection.")
connection.close()