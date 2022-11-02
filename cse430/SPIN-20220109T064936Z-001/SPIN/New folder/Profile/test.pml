mtype = { enterProfile, addinfo, checkAuth,authSuccess, loadProfile, editProfile,returnForm,insertInfo,saveInfo,updateSuccess, ack, ack0 };
chan to_user = [9] of { mtype };
chan to_profile = [15] of { mtype };
chan to_database = [9] of { mtype };
active proctype User()
{
again: to_profile!enterProfile;
 	
 	to_user?loadProfile;
	to_profile!editProfile;
	to_user?returnForm;
	to_user!insertInfo;
	to_user?ack;
 	goto again
}
active proctype Profile()
{
again: to_profile?enterProfile;
 	
 	to_database!checkAuth;
 	to_profile?authSuccess;
 	to_user!loadProfile;
	to_profile?editProfile;
	to_user!returnForm;
	to_user?insertInfo;
	to_database!saveInfo;
	to_profile?updateSuccess
	to_user!ack;
 	goto again
}
active proctype Database()
{
again: to_database?checkAuth;
 	to_profile!authSuccess;
	to_database?saveInfo;
	to_profile!updateSuccess;
 	goto again
}
