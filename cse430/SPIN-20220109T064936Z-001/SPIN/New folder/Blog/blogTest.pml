mtype = { enterBlog, loadBlogPage,createNewBlog ,checkUserAuth,authenticate,blogForm,newBlog, checkPostValidation,postVallied,saveInDB,added, smsg, ack, ack0 };
chan to_user = [3] of { mtype };
chan to_blog = [5] of { mtype };
chan to_database = [3] of { mtype };
active proctype User()
{
again: to_blog!enterBlog;
	to_user?loadBlogPage;
	to_blog!createNewBlog;
	to_user?blogForm;
	to_blog!newBlog;
	to_user?ack;
 	

 	goto again
}
active proctype Blog()
{
again: to_blog?enterBlog; 
 	to_user!loadBlogPage;
	to_blog?createNewBlog;
	to_database!checkUserAuth;
	to_blog?authenticate;
	to_user!blogForm;
	to_blog?newBlog;
	to_database!checkPostValidation;
	to_blog?postVallied;
	to_database!saveInDB;
	to_blog?added;
	to_user!ack;
	

 	goto again
}
	active proctype Database()
	{
	again: to_database?checkUserAuth;
	to_blog!authenticate;
	to_database?checkPostValidation;
	to_blog!postVallied;
	to_database?saveInDB;
 	to_blog!added;
 	goto again
	}
