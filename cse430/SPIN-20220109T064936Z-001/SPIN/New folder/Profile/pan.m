#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC Database */
	case 3: // STATE 1 - test.pml:33 - [to_database?checkAuth] (0:0:0 - 0)
		reached[2][1] = 1;
		if (q_len(now.to_database) == 0) continue;

		XX=1;
		if (10 != qrecv(now.to_database, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_database-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_database, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_database);
			sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - test.pml:34 - [to_profile!authSuccess] (0:0:0 - 0)
		IfNotBlocked
		reached[2][2] = 1;
		if (q_full(now.to_profile))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_profile);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_profile, 0, 9, 1);
		_m = 2; goto P999; /* 0 */
	case 5: // STATE 3 - test.pml:35 - [to_database?saveInfo] (0:0:0 - 0)
		reached[2][3] = 1;
		if (q_len(now.to_database) == 0) continue;

		XX=1;
		if (4 != qrecv(now.to_database, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_database-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_database, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_database);
			sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 6: // STATE 4 - test.pml:36 - [to_profile!updateSuccess] (0:0:0 - 0)
		IfNotBlocked
		reached[2][4] = 1;
		if (q_full(now.to_profile))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_profile);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_profile, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 7: // STATE 6 - test.pml:38 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Profile */
	case 8: // STATE 1 - test.pml:18 - [to_profile?enterProfile] (0:0:0 - 0)
		reached[1][1] = 1;
		if (q_len(now.to_profile) == 0) continue;

		XX=1;
		if (12 != qrecv(now.to_profile, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_profile-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_profile, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_profile);
			sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 2 - test.pml:20 - [to_database!checkAuth] (0:0:0 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.to_database))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_database);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_database, 0, 10, 1);
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 3 - test.pml:21 - [to_profile?authSuccess] (0:0:0 - 0)
		reached[1][3] = 1;
		if (q_len(now.to_profile) == 0) continue;

		XX=1;
		if (9 != qrecv(now.to_profile, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_profile-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_profile, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_profile);
			sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 4 - test.pml:22 - [to_user!loadProfile] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.to_user))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_user);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_user, 0, 8, 1);
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 5 - test.pml:23 - [to_profile?editProfile] (0:0:0 - 0)
		reached[1][5] = 1;
		if (q_len(now.to_profile) == 0) continue;

		XX=1;
		if (7 != qrecv(now.to_profile, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_profile-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_profile, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_profile);
			sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 13: // STATE 6 - test.pml:24 - [to_user!returnForm] (0:0:0 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		if (q_full(now.to_user))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_user);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_user, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 7 - test.pml:25 - [to_user?insertInfo] (0:0:0 - 0)
		reached[1][7] = 1;
		if (q_len(now.to_user) == 0) continue;

		XX=1;
		if (5 != qrecv(now.to_user, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_user-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_user, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_user);
			sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 8 - test.pml:26 - [to_database!saveInfo] (0:0:0 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		if (q_full(now.to_database))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_database);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_database, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 9 - test.pml:27 - [to_profile?updateSuccess] (0:0:0 - 0)
		reached[1][9] = 1;
		if (q_len(now.to_profile) == 0) continue;

		XX=1;
		if (3 != qrecv(now.to_profile, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_profile-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_profile, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_profile);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 10 - test.pml:28 - [to_user!ack] (0:0:0 - 0)
		IfNotBlocked
		reached[1][10] = 1;
		if (q_full(now.to_user))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_user);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_user, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 12 - test.pml:30 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 19: // STATE 1 - test.pml:7 - [to_profile!enterProfile] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.to_profile))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_profile);
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_profile, 0, 12, 1);
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 2 - test.pml:9 - [to_user?loadProfile] (0:0:0 - 0)
		reached[0][2] = 1;
		if (q_len(now.to_user) == 0) continue;

		XX=1;
		if (8 != qrecv(now.to_user, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_user-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_user, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_user);
			sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 3 - test.pml:10 - [to_profile!editProfile] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_full(now.to_profile))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_profile);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_profile, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 4 - test.pml:11 - [to_user?returnForm] (0:0:0 - 0)
		reached[0][4] = 1;
		if (q_len(now.to_user) == 0) continue;

		XX=1;
		if (6 != qrecv(now.to_user, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_user-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_user, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_user);
			sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 5 - test.pml:12 - [to_user!insertInfo] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.to_user))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_user);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_user, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 6 - test.pml:13 - [to_user?ack] (0:0:0 - 0)
		reached[0][6] = 1;
		if (q_len(now.to_user) == 0) continue;

		XX=1;
		if (2 != qrecv(now.to_user, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_user-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_user, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_user);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 8 - test.pml:15 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

