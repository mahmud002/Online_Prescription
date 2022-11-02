	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Database */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.to_database, XX-1, 0, 12, 1);
		;
		;
		goto R999;

	case 4: // STATE 2
		;
		_m = unsend(now.to_profile);
		;
		goto R999;

	case 5: // STATE 3
		;
		XX = 1;
		unrecv(now.to_database, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 6: // STATE 4
		;
		_m = unsend(now.to_profile);
		;
		goto R999;

	case 7: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Profile */

	case 8: // STATE 1
		;
		XX = 1;
		unrecv(now.to_profile, XX-1, 0, 14, 1);
		;
		;
		goto R999;

	case 9: // STATE 2
		;
		_m = unsend(now.to_database);
		;
		goto R999;

	case 10: // STATE 3
		;
		XX = 1;
		unrecv(now.to_profile, XX-1, 0, 11, 1);
		;
		;
		goto R999;

	case 11: // STATE 4
		;
		_m = unsend(now.to_user);
		;
		goto R999;

	case 12: // STATE 5
		;
		XX = 1;
		unrecv(now.to_profile, XX-1, 0, 9, 1);
		;
		;
		goto R999;

	case 13: // STATE 6
		;
		_m = unsend(now.to_user);
		;
		goto R999;

	case 14: // STATE 7
		;
		XX = 1;
		unrecv(now.to_user, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 15: // STATE 8
		;
		_m = unsend(now.to_database);
		;
		goto R999;

	case 16: // STATE 9
		;
		XX = 1;
		unrecv(now.to_profile, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 17: // STATE 10
		;
		_m = unsend(now.to_user);
		;
		goto R999;

	case 18: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */

	case 19: // STATE 1
		;
		_m = unsend(now.to_profile);
		;
		goto R999;

	case 20: // STATE 2
		;
		XX = 1;
		unrecv(now.to_user, XX-1, 0, 10, 1);
		;
		;
		goto R999;

	case 21: // STATE 3
		;
		_m = unsend(now.to_profile);
		;
		goto R999;

	case 22: // STATE 4
		;
		XX = 1;
		unrecv(now.to_user, XX-1, 0, 8, 1);
		;
		;
		goto R999;

	case 23: // STATE 5
		;
		_m = unsend(now.to_user);
		;
		goto R999;

	case 24: // STATE 6
		;
		XX = 1;
		unrecv(now.to_user, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 25: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;
	}

