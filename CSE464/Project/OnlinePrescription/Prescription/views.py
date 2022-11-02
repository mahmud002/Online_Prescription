from django.shortcuts import render

from django.shortcuts import render
from django.forms.widgets import NullBooleanSelect
from django.shortcuts import render ,HttpResponse,redirect
from .models import *

from django.contrib.auth import logout,authenticate, login
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User,auth
import datetime


from django.forms.widgets import NullBooleanSelect
from django.shortcuts import render ,HttpResponse,redirect
from .models import *

from django.contrib.auth import logout,authenticate, login
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User,auth
import datetime
from pymongo import MongoClient
import numpy as np
# Create your views here.
# from pymongo import MongoClient
# client = MongoClient('connection_string')
# db = client["student2"]
# print("Hello World")
from bson.objectid import ObjectId
def index (request):
    
  
    return render(request,'home.html')
def plogin (request):

    if request.method=='POST':
        nid=request.POST['username']
        password1=request.POST['password']
    
        from pymongo import MongoClient
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        mycol3 =mydb["Patientpass"]
        
        #Querry
        mydoc = mycol3.find({"_id":nid})
        myclient.close()
        
        if nid==mydoc[0]["_id"] and mydoc[0]["password"]==password1:
            ok1=request.session['nid']=nid
            print(ok1)
            
            return redirect('prescription')
        else:
            return redirect('plogin')
            
    return render(request,'plogin.html')

    # from pymongo import MongoClient
    # myclient = MongoClient("mongodb://localhost:27017/")
    # mydb = myclient["OnlinePrescription"]
    # mycol3 =mydb["Patientpass"]
    # mydoc = mycol3.find()
  
    # return render(request,'plogin.html')

def prescription (request):
    ok1=request.session['nid']
    #print(ok1)
    myclient = MongoClient("mongodb://localhost:27017/")
    mydb = myclient["OnlinePrescription"]
    mycol =mydb["Patient"]
    mycol2 =mydb["Prescription"]
    mycol3 =mydb["Doctor"]
       #Querry
    mydoc = mycol.find({"_id":ok1})
    predoc= mycol2.find({"p_id":ok1})
    p=[]
    for x in predoc:
        docdoc= mycol3.find_one({"_id":x['d_id']})
        x['doc']=docdoc
        p.append(x)
        
    p.reverse()
    myclient.close()
  
    return render(request,'prescription.html',{'mydoc':mydoc[0], 'p':p,'nid':ok1})



def doctor (request):
    ok2=request.session['dnid']
    print(ok2)
    temp2=request.session['dnid']
    myclient = MongoClient("mongodb://localhost:27017/")
    mydb = myclient["OnlinePrescription"]
    p = mydb["Doctor"]
    doc=p.find_one({'_id':ok2})
    doc['nid']=temp2
    myclient.close()
    return render(request,'doctor.html',{'doc':doc})
tp=[]
tt=[]
def savePres (request):
    pid=request.session['temp2']
    temp2=request.session['dnid']
    pDate=request.session['pDate']
    import datetime
    dto = datetime.datetime.strptime(pDate, "%Y-%m-%d")
    

        
    myclient = MongoClient("mongodb://localhost:27017/")
    mydb = myclient["OnlinePrescription"]
    mycol =mydb["Prescription"]
    mycol.insert_one({'p_id':pid, 'd_id':temp2,'date':dto, 'medicine':tp, 'test':tt})
    tt.clear()
    tp.clear()
    myclient.close()
    return redirect('doctorPage')
    


   


def addMedicine (request):
    if request.method=='POST':
        MedName=request.POST['Mname']
        Mdose=request.POST['Mdose']
        Mquantity=request.POST['Mquan']
        temp={'MedName':MedName, 'Mdose':Mdose,'Mquantity':Mquantity}
        tp.append(temp)
        
        return redirect("/reg")

def addTest (request):
    if request.method=='POST':
        TName=request.POST['Tname']
        TCmm=request.POST['Tcmm']
        temp={'TName':TName, 'TCmm':TCmm}
        tt.append(temp)

        return redirect("/reg")

def regPatient (request):
    if request.method=='POST':
        
        pnid=request.POST['pNid']
        pDate=request.POST['date']
        print(pDate+"___________________________________")
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        mycol =mydb["Patient"]
      
        mydoc=mycol.find({'_id':pnid})

        request.session['temp']=mydoc[0]
        request.session['temp2']=pnid
        request.session['pDate']=pDate
        
        myclient.close()

  
        return render(request,'register.html',{'pa':mydoc[0],'pnid':pnid, 'mlist':tp, 'tlist':tt,'pDate':pDate})
    else:
        
        return render(request,'register.html',{'pa':request.session['temp'],'pnid':request.session['temp2'],'mlist':tp, 'tlist':tt,'pDate':request.session['pDate']})
          
   


def dlogin (request):
 
    if request.method=='POST':
        
        nid=request.POST['username']
        password1=request.POST['password']
    
        from pymongo import MongoClient
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        mycol3 =mydb["Doctorpass"]
        
        mydoc = mycol3.find({"_id":nid})
        myclient.close()
        
        if nid==mydoc[0]["_id"] and mydoc[0]["password"]==password1:
            ok2=request.session['dnid']=nid
            return redirect('doctorPage')
        else:
            return redirect('dlogin')
            
    return render(request,'dlogin.html')



def psignup (request):
    from pymongo import MongoClient
   
    
    if request.method=='POST':
        
        nid=request.POST['nid']
        name=request.POST['name']
        gender=request.POST['gender']
        dob=request.POST['date']
        password=request.POST['password']
        cpassword=request.POST['cpassword']
        if password==cpassword:
            myclient = MongoClient("mongodb://localhost:27017/")
            mydb = myclient["OnlinePrescription"]
            mycol = mydb["Patient"]
          
            mycol3 =mydb["Patientpass"]
            mydict = {"_id":nid, "Name": name,"Gender": gender, "dob":dob  }
         
            mydict3={"_id":nid,"password":password}
            mycol.insert_one(mydict)
         
            mycol3.insert_one(mydict3)
            myclient.close()
            
        else:
            return redirect('psignup')
        return redirect('plogin')
    else:
        return render(request,'psignup.html')



def dsignup (request):
    
    from pymongo import MongoClient
   
    
    if request.method=='POST':
        
        nid=request.POST['nid']
        name=request.POST['name']
        des=request.POST['des']
        gender=request.POST['gender']
        dob=request.POST['date']
        password=request.POST['password']
        cpassword=request.POST['cpassword']
        if password==cpassword:
            myclient = MongoClient("mongodb://localhost:27017/")
            mydb = myclient["OnlinePrescription"]
            mycol = mydb["Doctor"]
            mycol3 =mydb["Doctorpass"]
            mydict = {"_id":nid, "Name": name,"Designation":des, "Gender": gender, "dob":dob  }
            mydict3={"_id":nid,"password":password}
            mycol.insert_one(mydict)
            mycol3.insert_one(mydict3)
            myclient.close()
            
        else:
            return redirect('dsignup')
        return redirect('dlogin')
    else:
        return render(request,'dsignup.html')

def uppres(request):
    
    if request.method=='POST':
        pnid=request.POST['pNid']
        request.session['pnid']=pnid
    
    pnid=request.session['pnid']
    dnid=request.session['dnid']
    myclient = MongoClient("mongodb://localhost:27017/")
    mydb = myclient["OnlinePrescription"]
    p = mydb["Prescription"]
    pa= mydb["Patient"]
    pdata2=[]
    id=[]
    pdata=p.find({'p_id':pnid, 'd_id':dnid})
    for x in pdata:
        s=str(x['_id'])
        x['pre_id']=s
        
        pdata2.append(x)
        
        
    pdata2.reverse()
    id.reverse()
       
    padata=pa.find({'_id':pnid})
    myclient.close()
    return render(request,'uppres.html',{'mdata':pdata2, 'pdata':padata[0], 'nid':pnid, 'preId':id})
        
    
def delpres(request):
    delid=request.POST['delid']
    myclient = MongoClient("mongodb://localhost:27017/")
    mydb = myclient["OnlinePrescription"]
    p = mydb["Prescription"]
    r=p.delete_one({'_id':ObjectId(delid)})
    print(delid)
    myclient.close()
    return redirect('uppres')

def addOne(request):
    if request.method=='POST':
        Mname=request.POST['Mname']
        Mdose=request.POST['Mdose']
        Mquan=request.POST['Mquan']
        pid=request.POST['delid']
        print(pid+"__________________")
        print(Mname+Mdose+Mquan+pid+"________________________add One________________________")
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        p = mydb["Prescription"]
        p.update( 
  { '_id' : ObjectId(pid) },
  { '$push': { 'medicine': {'MedName':Mname,'Mdose':Mdose, 'Mquantity':Mquan} } }
)
        myclient.close()
        return redirect('uppres')


def addOneTest(request):
    if request.method=='POST':
        Tname=request.POST['Tname']
        Tcmm=request.POST['Tcmm']
        
        pid=request.POST['addtest']
        print(pid+"________________________add One________________________")
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        p = mydb["Prescription"]
        p.update( 
  { '_id' : ObjectId(pid) },
  { '$push': { 'test': {'TName':Tname,'TCmm':Tcmm} } }
)
        myclient.close()
        return redirect('uppres')



def delOne(request):
    if request.method=='POST':
        
        pid=request.POST['delid2']
        mName=request.POST['delname']
        print(pid+mName+"Del _______________________")
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        p = mydb["Prescription"]
        p.update( 
  { '_id' : ObjectId(pid) },
  { '$pull': { 'medicine': {'MedName':mName} } }

)
        myclient.close()
        return redirect('uppres')

def prehis(request):
    if request.method=='POST':
        pid=request.POST['email']
    
    myclient = MongoClient("mongodb://localhost:27017/")
    mydb = myclient["OnlinePrescription"]
    p = mydb["Prescription"]
    pa= mydb["Patient"]
    d=mydb["Doctor"]
    prescription=p.find({'p_id':pid})
    patient=pa.find_one({'_id':pid})
    patient['nid']=pid
    
    a=[]
    for x in prescription:
        doctor=d.find_one({'_id':x['d_id']})
        x['doc']=doctor
        a.append(x)
        a.reverse()
    myclient.close()
    return render(request,'prehis.html',{'p':patient, 'pre':a})



def delTest(request):
    if request.method=='POST':
        
        pid=request.POST['delid2']
        mName=request.POST['delname']
        print(pid+mName+"Del _______________________")
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        p = mydb["Prescription"]
        p.update( 
  { '_id' : ObjectId(pid) },
  { '$pull': { 'test': {'TName':mName} } }

)
        myclient.close()
        return redirect('uppres')




def update_p(request):
    if request.method=='POST':
        
        pid=request.POST['update_p']

        name=request.POST['Tname']
        gender=request.POST['gender']
        dob=request.POST['date']
        print(pid+name+gender+dob)
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        p = mydb["Patient"]
        p.update_one({'_id': pid},{'$set': {'Name':name, 'Gender':gender, 'dob':dob}})
        myclient.close()
        return redirect('prescription')

def update_d(request):
    if request.method=='POST':
        
        pid=request.POST['update_d']

        name=request.POST['Tname']
        des=request.POST['des']
        gender=request.POST['gender']
        dob=request.POST['date']
        print(pid+name+gender+dob+des+"____________________________")
        myclient = MongoClient("mongodb://localhost:27017/")
        mydb = myclient["OnlinePrescription"]
        p = mydb["Doctor"]
        myclient.close()
        p.update_one({'_id': pid},{'$set': {'Name':name, 'Designation':des,'Gender':gender, 'dob':dob}})
        return redirect('doctorPage')