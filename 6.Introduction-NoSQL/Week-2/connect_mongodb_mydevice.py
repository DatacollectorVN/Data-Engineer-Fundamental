from pymongo import MongoClient

user = "root"
pwd = "mypwd" # change  
host = "localhost"

# create the connection url
connect_url = f"mongodb://{user}:{pwd}@{host}:27017/?authSource=admin"

# connect to mongodb server
print("Connecting to mongodb server")
connection = MongoClient(connect_url)

# get database list
print("Getting list of databases")
dbs = connection.list_database_names()

# print the databases name
for db in dbs:
    print(db)
print("Closing the connection to the mongodb server")

# close the server connection
connection.close()