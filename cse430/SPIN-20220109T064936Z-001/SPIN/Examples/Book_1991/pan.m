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
	case 3: // STATE 1 - p97.1.pml:4 - [(run A())] (0:0:0 - 0)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - p97.1.pml:4 - [(run B())] (0:0:0 - 0)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - p97.1.pml:4 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B */
	case 6: // STATE 1 - p97.1.pml:3 - [((state==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - p97.1.pml:3 - [state = (state-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.state);
		now.state = (((int)now.state)-1);
#ifdef VAR_RANGES
		logval("state", ((int)now.state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - p97.1.pml:3 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC A */
	case 9: // STATE 1 - p97.1.pml:2 - [((state==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - p97.1.pml:2 - [state = (state+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.state);
		now.state = (((int)now.state)+1);
#ifdef VAR_RANGES
		logval("state", ((int)now.state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 4 - p97.1.pml:2 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
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

