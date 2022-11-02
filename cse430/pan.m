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

		 /* PROC :init: */
	case 3: // STATE 1 - profile.pml:44 - [(run sieve(root,n))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, now.root, ((P1 *)_this)->n)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - profile.pml:46 - [((n<25))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->n<25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - profile.pml:46 - [n = (n+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->n;
		((P1 *)_this)->n = (((P1 *)_this)->n+1);
#ifdef VAR_RANGES
		logval(":init::n", ((P1 *)_this)->n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - profile.pml:46 - [root!number,n] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_len(now.root))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.root);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->n); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.root, 0, 2, ((P1 *)_this)->n, 2);
		{ boq = now.root; };
		_m = 2; goto P999; /* 0 */
	case 7: // STATE 5 - profile.pml:47 - [((n>=25))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((P1 *)_this)->n>=25)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: n */  (trpt+1)->bup.oval = ((P1 *)_this)->n;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->n = 0;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - profile.pml:47 - [root!eof,0] (0:0:0 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		if (q_len(now.root))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.root);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.root, 0, 1, 0, 2);
		{ boq = now.root; };
		_m = 2; goto P999; /* 0 */
	case 9: // STATE 11 - profile.pml:49 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC sieve */
	case 10: // STATE 1 - profile.pml:16 - [printf('MSC: %d is prime\\n',prime)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("MSC: %d is prime\n", ((P0 *)_this)->prime);
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 2 - profile.pml:18 - [c?number,n] (0:0:1 - 0)
		reached[0][2] = 1;
		if (boq != ((P0 *)_this)->c) continue;
		if (q_len(((P0 *)_this)->c) == 0) continue;

		XX=1;
		if (2 != qrecv(((P0 *)_this)->c, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->n;
		;
		((P0 *)_this)->n = qrecv(((P0 *)_this)->c, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("sieve:n", ((P0 *)_this)->n);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->c);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->n); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(((P0 *)_this)->c))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 3 - profile.pml:20 - [(((n%prime)==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((((P0 *)_this)->n%((P0 *)_this)->prime)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - profile.pml:21 - [printf('MSC: %d = %d*%d\\n',n,prime,(n/prime))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("MSC: %d = %d*%d\n", ((P0 *)_this)->n, ((P0 *)_this)->prime, (((P0 *)_this)->n/((P0 *)_this)->prime));
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 6 - profile.pml:24 - [(!(haschild))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		if (!( !(((int)((P0 *)_this)->haschild))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: haschild */  (trpt+1)->bup.oval = ((P0 *)_this)->haschild;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->haschild = 0;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 7 - profile.pml:25 - [haschild = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->haschild);
		((P0 *)_this)->haschild = 1;
#ifdef VAR_RANGES
		logval("sieve:haschild", ((int)((P0 *)_this)->haschild));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - profile.pml:26 - [(run sieve(child,n))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(addproc(II, 1, 0, ((P0 *)_this)->child, ((P0 *)_this)->n)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: n */  (trpt+1)->bup.oval = ((P0 *)_this)->n;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->n = 0;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 10 - profile.pml:28 - [child!number,n] (0:0:0 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		if (q_len(((P0 *)_this)->child))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->child);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->n); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->child, 0, 2, ((P0 *)_this)->n, 2);
		{ boq = ((P0 *)_this)->child; };
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 15 - profile.pml:31 - [c?eof,0] (0:0:0 - 0)
		reached[0][15] = 1;
		if (boq != ((P0 *)_this)->c) continue;
		if (q_len(((P0 *)_this)->c) == 0) continue;

		XX=1;
		if (1 != qrecv(((P0 *)_this)->c, 0, 0, 0)) continue;
		if (0 != qrecv(((P0 *)_this)->c, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->c-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->c, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->c);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(((P0 *)_this)->c))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 20 - profile.pml:35 - [(haschild)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((int)((P0 *)_this)->haschild)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: haschild */  (trpt+1)->bup.oval = ((P0 *)_this)->haschild;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->haschild = 0;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 21 - profile.pml:36 - [child!eof,0] (0:0:0 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_len(((P0 *)_this)->child))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->child);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->child, 0, 1, 0, 2);
		{ boq = ((P0 *)_this)->child; };
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 25 - profile.pml:39 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][25] = 1;
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

