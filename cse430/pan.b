	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 5: // STATE 3
		;
		((P1 *)_this)->n = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 4
		;
		_m = unsend(now.root);
		;
		goto R999;

	case 7: // STATE 5
		;
	/* 0 */	((P1 *)_this)->n = trpt->bup.oval;
		;
		;
		goto R999;

	case 8: // STATE 6
		;
		_m = unsend(now.root);
		;
		goto R999;

	case 9: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC sieve */
;
		;
		
	case 11: // STATE 2
		;
		XX = 1;
		unrecv(((P0 *)_this)->c, XX-1, 0, 2, 1);
		unrecv(((P0 *)_this)->c, XX-1, 1, ((P0 *)_this)->n, 0);
		((P0 *)_this)->n = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 14: // STATE 6
		;
	/* 0 */	((P0 *)_this)->haschild = trpt->bup.oval;
		;
		;
		goto R999;

	case 15: // STATE 7
		;
		((P0 *)_this)->haschild = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 8
		;
	/* 0 */	((P0 *)_this)->n = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 17: // STATE 10
		;
		_m = unsend(((P0 *)_this)->child);
		;
		goto R999;

	case 18: // STATE 15
		;
		XX = 1;
		unrecv(((P0 *)_this)->c, XX-1, 0, 1, 1);
		unrecv(((P0 *)_this)->c, XX-1, 1, 0, 0);
		;
		;
		goto R999;

	case 19: // STATE 20
		;
	/* 0 */	((P0 *)_this)->haschild = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 21
		;
		_m = unsend(((P0 *)_this)->child);
		;
		goto R999;

	case 21: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;
	}

