from pymongo import MongoClient
import sys

user = "root"
pwd = "MjA4MjktYmViZWl1" 
host = "localhost"
connect_url = f"mongodb://{user}:{pwd}@{host}:27017/?authSource=admin"
print("Connecting to mongodb server")
connection = MongoClient(connect_url)

# select the "training" database
db = connection.training

# select the "python" 
collection = db.python

# create sample document
doc = {"lab":"Accessing mongodb using python", "Subject":"No SQL Databases"}

# insert
print("Inserting a document into collection")
collection.insert_one(doc)

# query for all document in "training" database and "python" collection
docs = collection.find()

print("Printing the documents in the collection")
for doc in docs:
    print(doc)

# close
print("Closing the connection")
connection.close()