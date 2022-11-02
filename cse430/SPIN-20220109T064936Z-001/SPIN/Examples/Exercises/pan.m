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
	case 3: // STATE 1 - ex_4.pml:17 - [((p1>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.p1)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - ex_4.pml:17 - [p1 = (p1-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.p1);
		now.p1 = (((int)now.p1)-1);
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - ex_4.pml:17 - [p2 = (p2+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.p2);
		now.p2 = (((int)now.p2)+1);
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - ex_4.pml:18 - [(((p2>0)&&(p4>0)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((((int)now.p2)>0)&&(((int)now.p4)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - ex_4.pml:18 - [p2 = (p2-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.p2);
		now.p2 = (((int)now.p2)-1);
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - ex_4.pml:18 - [p4 = (p4-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.p4);
		now.p4 = (((int)now.p4)-1);
#ifdef VAR_RANGES
		logval("p4", ((int)now.p4));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - ex_4.pml:18 - [p3 = (p3+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.p3);
		now.p3 = (((int)now.p3)+1);
#ifdef VAR_RANGES
		logval("p3", ((int)now.p3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - ex_4.pml:19 - [((p3>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.p3)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - ex_4.pml:19 - [p3 = (p3-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.p3);
		now.p3 = (((int)now.p3)-1);
#ifdef VAR_RANGES
		logval("p3", ((int)now.p3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - ex_4.pml:19 - [p1 = (p1+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.p1);
		now.p1 = (((int)now.p1)+1);
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - ex_4.pml:19 - [p4 = (p4+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((int)now.p4);
		now.p4 = (((int)now.p4)+1);
#ifdef VAR_RANGES
		logval("p4", ((int)now.p4));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - ex_4.pml:20 - [((p4>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((int)now.p4)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - ex_4.pml:20 - [p4 = (p4-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.p4);
		now.p4 = (((int)now.p4)-1);
#ifdef VAR_RANGES
		logval("p4", ((int)now.p4));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - ex_4.pml:20 - [p5 = (p5+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.p5);
		now.p5 = (((int)now.p5)+1);
#ifdef VAR_RANGES
		logval("p5", ((int)now.p5));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - ex_4.pml:21 - [(((p1>0)&&(p5>0)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((((int)now.p1)>0)&&(((int)now.p5)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - ex_4.pml:21 - [p1 = (p1-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.p1);
		now.p1 = (((int)now.p1)-1);
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - ex_4.pml:21 - [p5 = (p5-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.p5);
		now.p5 = (((int)now.p5)-1);
#ifdef VAR_RANGES
		logval("p5", ((int)now.p5));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - ex_4.pml:21 - [p6 = (p6+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.p6);
		now.p6 = (((int)now.p6)+1);
#ifdef VAR_RANGES
		logval("p6", ((int)now.p6));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 19 - ex_4.pml:22 - [((p6>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.p6)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 20 - ex_4.pml:22 - [p6 = (p6-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.p6);
		now.p6 = (((int)now.p6)-1);
#ifdef VAR_RANGES
		logval("p6", ((int)now.p6));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 21 - ex_4.pml:22 - [p4 = (p4+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((int)now.p4);
		now.p4 = (((int)now.p4)+1);
#ifdef VAR_RANGES
		logval("p4", ((int)now.p4));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 22 - ex_4.pml:22 - [p1 = (p1+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((int)now.p1);
		now.p1 = (((int)now.p1)+1);
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 26 - ex_4.pml:24 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][26] = 1;
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

