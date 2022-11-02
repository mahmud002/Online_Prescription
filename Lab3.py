import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["student2"]
mycol = mydb["Course"]

mydb2 = myclient["student2"]
mycol2 = mydb2["Student2"]

mydoc = mycol.find()

#print(type(mydoc))

for x in mydoc:
    
    print("Course Title: "+x["Title"])
    print("Course Id: "+x["_id"])
    print("Sec: "+x["sec"])
    print("Students:\n")
    myquery = { "course_id": x["_id"]  }
    
    mydoc2= mycol2.find(myquery)
    for y in mydoc2:
        print("Name: "+y["Name"])
        print("Id: "+y["_id"])
        print("Email: "+y["email"])
        print("Phone: "+y["phone"])
        print("\n")



    
    

