import pymongo
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["PrescriptionManagement"]
mycol1 = mydb["Patient"]
mycol2 = mydb["Doctor"]
mycol3 = mydb["Prescription"]
mycol4 = mydb["Medicines"]
mycol5 = mydb["Tests"]

p_name=input("Patient Name:")
d_name="Anisur Rahman"
mydict = { "Name": "Anisur Rahman","Designation":"MBBS", "Gender": "Male", "Age":"35","patient":[{"name":"Mahmud","age":22},{"name":"Hasan","age":25}]  }
#mydict = { "Name": "Mahmud Hasan", "Gender":"Male","Age":"22"}
#mydict = { "Medical_Name": "Dhaka Medical", "Patient_Description":"","Patient_id":"","Doctor_id":""}
#mydict = { "Name": "Napa", "Schidule":"3times","Quantity":"1","Prescription_id":""}
#mydict2 = { "Title": "Blood_Test", "Comment":"","Result":"","Prescription_id":""}
x = mycol1.insert_one(mydict)
