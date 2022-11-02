import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["student"]
mycol = mydb["Student"]
myquery = { "_id": "2018-2-60-122" }

mydoc = mycol.find()
print(type(mydoc))

for x in mydoc:
    
    print("Id: "+x['_id'])
    print("Name: "+x['name'])
    print("Email: "+x['email'])
    print("Phone: "+x['phone'])
    print("Dept: "+x['dept_name'])
    print("\n")


    
    

