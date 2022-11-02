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
	case 3: // STATE 1 - newTextDocument.pml:25 - [to_database?check] (0:0:0 - 1)
		reached[2][1] = 1;
		if (q_len(now.to_database) == 0) continue;

		XX=1;
		if (5 != qrecv(now.to_database, 0, 0, 0)) continue;
		
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
			sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - newTextDocument.pml:26 - [to_signup!added] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (q_full(now.to_signup))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_signup);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_signup, 0, 4, 1);
		_m = 2; goto P999; /* 0 */

		 /* PROC Signup */
	case 5: // STATE 1 - newTextDocument.pml:15 - [to_signup?signuph] (0:0:0 - 1)
		reached[1][1] = 1;
		if (q_len(now.to_signup) == 0) continue;

		XX=1;
		if (7 != qrecv(now.to_signup, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_signup-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_signup, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_signup);
			sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 6: // STATE 2 - newTextDocument.pml:16 - [to_signup?addinfo] (0:0:0 - 1)
		reached[1][2] = 1;
		if (q_len(now.to_signup) == 0) continue;

		XX=1;
		if (6 != qrecv(now.to_signup, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_signup-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_signup, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_signup);
			sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 7: // STATE 3 - newTextDocument.pml:17 - [to_database!check] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.to_database))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_database);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_database, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 8: // STATE 4 - newTextDocument.pml:18 - [to_signup?added] (0:0:0 - 1)
		reached[1][4] = 1;
		if (q_len(now.to_signup) == 0) continue;

		XX=1;
		if (4 != qrecv(now.to_signup, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_signup-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_signup, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_signup);
			sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 5 - newTextDocument.pml:19 - [to_user!ack] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
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
	case 10: // STATE 6 - newTextDocument.pml:20 - [to_signup?smsg] (0:0:0 - 1)
		reached[1][6] = 1;
		if (q_len(now.to_signup) == 0) continue;

		XX=1;
		if (3 != qrecv(now.to_signup, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.to_signup-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.to_signup, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.to_signup);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */

		 /* PROC User */
	case 11: // STATE 1 - newTextDocument.pml:7 - [to_signup!signuph] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.to_signup))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_signup);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_signup, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 2 - newTextDocument.pml:8 - [to_signup!addinfo] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.to_signup))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_signup);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_signup, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 3 - newTextDocument.pml:9 - [to_user?ack] (0:0:0 - 1)
		reached[0][3] = 1;
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
	case 14: // STATE 4 - newTextDocument.pml:10 - [to_signup!smsg] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (q_full(now.to_signup))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.to_signup);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.to_signup, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

