	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Database */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.to_database, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 4: // STATE 2
		;
		_m = unsend(now.to_signup);
		;
		goto R999;

		 /* PROC Signup */

	case 5: // STATE 1
		;
		XX = 1;
		unrecv(now.to_signup, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 6: // STATE 2
		;
		XX = 1;
		unrecv(now.to_signup, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 7: // STATE 3
		;
		_m = unsend(now.to_database);
		;
		goto R999;

	case 8: // STATE 4
		;
		XX = 1;
		unrecv(now.to_signup, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 9: // STATE 5
		;
		_m = unsend(now.to_user);
		;
		goto R999;

	case 10: // STATE 6
		;
		XX = 1;
		unrecv(now.to_signup, XX-1, 0, 3, 1);
		;
		;
		goto R999;

		 /* PROC User */

	case 11: // STATE 1
		;
		_m = unsend(now.to_signup);
		;
		goto R999;

	case 12: // STATE 2
		;
		_m = unsend(now.to_signup);
		;
		goto R999;

	case 13: // STATE 3
		;
		XX = 1;
		unrecv(now.to_user, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 14: // STATE 4
		;
		_m = unsend(now.to_signup);
		;
		goto R999;
	}

