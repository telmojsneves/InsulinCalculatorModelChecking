	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 2
		;
		((P1 *)this)->_2_2_i = trpt->bup.ovals[1];
		((P1 *)this)->_2_2_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 5: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 5
		;
		((P1 *)this)->_2_2_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 14
		;
		((P1 *)this)->_2_3_max_value = trpt->bup.ovals[1];
		((P1 *)this)->_2_3_best_value = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 17
		;
		((P1 *)this)->_2_3_2_i = trpt->bup.ovals[2];
		((P1 *)this)->_2_3_2_i = trpt->bup.ovals[1];
		((P1 *)this)->_2_3_2_value = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 11: // STATE 19
		;
		((P1 *)this)->_2_3_2_value = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 20
		;
		now.responses_freq[ Index(((P1 *)this)->_2_3_2_value, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 21
		;
		((P1 *)this)->_2_3_2_i = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 30
		;
		((P1 *)this)->_2_3_3_i = trpt->bup.ovals[2];
		((P1 *)this)->_2_3_3_value = trpt->bup.ovals[1];
		((P1 *)this)->_2_3_3_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 16: // STATE 32
		;
		((P1 *)this)->_2_3_3_value = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 34
		;
		now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i-1), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 41
		;
		now.freq_with_deviation[ Index(((P1 *)this)->_2_3_3_i, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 48
		;
		now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i+1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 54
		;
		((P1 *)this)->_2_3_3_i = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 54
		;
		((P1 *)this)->_2_3_3_i = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 62
		;
		((P1 *)this)->_2_3_h = trpt->bup.ovals[1];
		((P1 *)this)->_2_3_h = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 28: // STATE 65
		;
		((P1 *)this)->_2_3_h = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 71
		;
		((P1 *)this)->_2_3_h = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 32: // STATE 74
		;
		((P1 *)this)->_2_3_h = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 81
		;
		((P1 *)this)->_2_3_6_i = trpt->bup.ovals[1];
		((P1 *)this)->_2_3_6_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 35: // STATE 83
		;
	/* 0 */	((P1 *)this)->_2_3_max_value = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 84
		;
		((P1 *)this)->_2_3_best_value = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 85
		;
		((P1 *)this)->_2_3_max_value = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 92
		;
		((P1 *)this)->_2_3_6_i = trpt->bup.ovals[1];
		((P1 *)this)->_2_3_best_value = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 40: // STATE 92
		;
		((P1 *)this)->_2_3_6_i = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 92
		;
		((P1 *)this)->_2_3_6_i = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 100
		;
		((P1 *)this)->the_chosen_one = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->_2_3_max_value = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 102
		;
		((P1 *)this)->the_chosen_one = trpt->bup.oval;
		;
		goto R999;
;
		
	case 44: // STATE 106
		goto R999;

	case 45: // STATE 107
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC WS */

	case 46: // STATE 1
		;
		((P0 *)this)->_1_1_nr = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 3
		;
		((P0 *)this)->_1_1_nr = trpt->bup.oval;
		;
		goto R999;
;
		
	case 48: // STATE 4
		goto R999;
;
		
	case 49: // STATE 8
		goto R999;

	case 50: // STATE 9
		;
		now.ws_results[ Index(((P0 *)this)->id, 200) ] = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;
	}

