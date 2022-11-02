mtype = { signuph, addinfo, check, added, smsg, ack, ack0 };
chan to_user = [3] of { mtype };
chan to_signup = [5] of { mtype };
chan to_database = [3] of { mtype };
active proctype User()
{
again: to_signup!signuph;
 to_signup!addinfo;
 to_user?ack;
 to_signup!smsg;
 goto again
}
active proctype Signup()
{
again: to_signup?signuph; 
 to_signup?addinfo;
 to_database!check;
 to_signup?added;
 to_user!ack;
 to_signup?smsg;
 goto again
}
active proctype Database()
{
again: to_database?check;
 to_signup!added;
 goto again
}