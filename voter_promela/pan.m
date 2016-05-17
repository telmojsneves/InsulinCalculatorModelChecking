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
	case 3: // STATE 1 - voter.pml:99 - [i = 0] (0:8:2 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->_2_2_i);
		((P1 *)this)->_2_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)this)->_2_2_i));
#endif
		;
		/* merge: i = 0(8, 2, 8) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->_2_2_i);
		((P1 *)this)->_2_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)this)->_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 9, 8) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 3 - voter.pml:99 - [((i<=(200-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)((P1 *)this)->_2_2_i)<=(200-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - voter.pml:100 - [(run WS(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, ((int)((P1 *)this)->_2_2_i))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - voter.pml:99 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->_2_2_i);
		((P1 *)this)->_2_2_i = (((int)((P1 *)this)->_2_2_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P1 *)this)->_2_2_i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 12 - voter.pml:180 - [((_nr_pr==1))] (0:0:0 - 3)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((int)now._nr_pr)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - voter.pml:144 - [best_value = -(1)] (0:27:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_best_value;
		((P1 *)this)->_2_3_best_value =  -(1);
#ifdef VAR_RANGES
		logval(":init::best_value", ((P1 *)this)->_2_3_best_value);
#endif
		;
		/* merge: max_value = 0(27, 14, 27) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_3_max_value;
		((P1 *)this)->_2_3_max_value = 0;
#ifdef VAR_RANGES
		logval(":init::max_value", ((P1 *)this)->_2_3_max_value);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 9: // STATE 15 - voter.pml:108 - [value = 0] (0:24:3 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_2_value;
		((P1 *)this)->_2_3_2_value = 0;
#ifdef VAR_RANGES
		logval(":init::value", ((P1 *)this)->_2_3_2_value);
#endif
		;
		/* merge: i = 0(24, 16, 24) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_3_2_i;
		((P1 *)this)->_2_3_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_2_i);
#endif
		;
		/* merge: i = 0(24, 17, 24) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->_2_3_2_i;
		((P1 *)this)->_2_3_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_2_i);
#endif
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 10: // STATE 18 - voter.pml:110 - [((i<=(200-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((P1 *)this)->_2_3_2_i<=(200-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 19 - voter.pml:112 - [value = (ws_results[i]-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_2_value;
		((P1 *)this)->_2_3_2_value = (now.ws_results[ Index(((P1 *)this)->_2_3_2_i, 200) ]-1);
#ifdef VAR_RANGES
		logval(":init::value", ((P1 *)this)->_2_3_2_value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 20 - voter.pml:114 - [responses_freq[value] = (responses_freq[value]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = now.responses_freq[ Index(((P1 *)this)->_2_3_2_value, 5) ];
		now.responses_freq[ Index(((P1 *)this)->_2_3_2_value, 5) ] = (now.responses_freq[ Index(((P1 *)this)->_2_3_2_value, 5) ]+1);
#ifdef VAR_RANGES
		logval("responses_freq[:init::value]", now.responses_freq[ Index(((P1 *)this)->_2_3_2_value, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 21 - voter.pml:110 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_2_i;
		((P1 *)this)->_2_3_2_i = (((P1 *)this)->_2_3_2_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 28 - voter.pml:55 - [i = 0] (0:57:3 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_3_i;
		((P1 *)this)->_2_3_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_3_i);
#endif
		;
		/* merge: value = 0(57, 29, 57) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_3_3_value;
		((P1 *)this)->_2_3_3_value = 0;
#ifdef VAR_RANGES
		logval(":init::value", ((P1 *)this)->_2_3_3_value);
#endif
		;
		/* merge: i = 0(57, 30, 57) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->_2_3_3_i;
		((P1 *)this)->_2_3_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_3_i);
#endif
		;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 31 - voter.pml:56 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((P1 *)this)->_2_3_3_i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 32 - voter.pml:57 - [value = responses_freq[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_3_value;
		((P1 *)this)->_2_3_3_value = now.responses_freq[ Index(((P1 *)this)->_2_3_3_i, 5) ];
#ifdef VAR_RANGES
		logval(":init::value", ((P1 *)this)->_2_3_3_value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 33 - voter.pml:46 - [(((((i-1)>=0)&&((i-1)<5))&&(responses_freq[(i-1)]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!(((((((P1 *)this)->_2_3_3_i-1)>=0)&&((((P1 *)this)->_2_3_3_i-1)<5))&&(now.responses_freq[ Index((((P1 *)this)->_2_3_3_i-1), 5) ]!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 34 - voter.pml:46 - [freq_with_deviation[(i-1)] = (freq_with_deviation[(i-1)]+value)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i-1), 5) ];
		now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i-1), 5) ] = (now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i-1), 5) ]+((P1 *)this)->_2_3_3_value);
#ifdef VAR_RANGES
		logval("freq_with_deviation[(:init::i-1)]", now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i-1), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 40 - voter.pml:46 - [((((i>=0)&&(i<5))&&(responses_freq[i]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((((((P1 *)this)->_2_3_3_i>=0)&&(((P1 *)this)->_2_3_3_i<5))&&(now.responses_freq[ Index(((P1 *)this)->_2_3_3_i, 5) ]!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 41 - voter.pml:46 - [freq_with_deviation[i] = (freq_with_deviation[i]+value)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = now.freq_with_deviation[ Index(((P1 *)this)->_2_3_3_i, 5) ];
		now.freq_with_deviation[ Index(((P1 *)this)->_2_3_3_i, 5) ] = (now.freq_with_deviation[ Index(((P1 *)this)->_2_3_3_i, 5) ]+((P1 *)this)->_2_3_3_value);
#ifdef VAR_RANGES
		logval("freq_with_deviation[:init::i]", now.freq_with_deviation[ Index(((P1 *)this)->_2_3_3_i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 47 - voter.pml:46 - [(((((i+1)>=0)&&((i+1)<5))&&(responses_freq[(i+1)]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!(((((((P1 *)this)->_2_3_3_i+1)>=0)&&((((P1 *)this)->_2_3_3_i+1)<5))&&(now.responses_freq[ Index((((P1 *)this)->_2_3_3_i+1), 5) ]!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 48 - voter.pml:46 - [freq_with_deviation[(i+1)] = (freq_with_deviation[(i+1)]+value)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i+1), 5) ];
		now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i+1), 5) ] = (now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i+1), 5) ]+((P1 *)this)->_2_3_3_value);
#ifdef VAR_RANGES
		logval("freq_with_deviation[(:init::i+1)]", now.freq_with_deviation[ Index((((P1 *)this)->_2_3_3_i+1), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 50 - voter.pml:47 - [(1)] (57:0:1 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(57, 52, 57) */
		reached[1][52] = 1;
		;
		/* merge: i = (i+1)(57, 54, 57) */
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_3_i;
		((P1 *)this)->_2_3_3_i = (((P1 *)this)->_2_3_3_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_3_i);
#endif
		;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 24: // STATE 54 - voter.pml:56 - [i = (i+1)] (0:57:1 - 3)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_3_i;
		((P1 *)this)->_2_3_3_i = (((P1 *)this)->_2_3_3_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_3_i);
#endif
		;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 61 - voter.pml:152 - [h = 0] (0:68:2 - 3)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_h;
		((P1 *)this)->_2_3_h = 0;
#ifdef VAR_RANGES
		logval(":init::h", ((P1 *)this)->_2_3_h);
#endif
		;
		/* merge: h = 0(68, 62, 68) */
		reached[1][62] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_3_h;
		((P1 *)this)->_2_3_h = 0;
#ifdef VAR_RANGES
		logval(":init::h", ((P1 *)this)->_2_3_h);
#endif
		;
		/* merge: .(goto)(0, 69, 68) */
		reached[1][69] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 63 - voter.pml:152 - [((h<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((P1 *)this)->_2_3_h<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 64 - voter.pml:153 - [printf('responses_freq[%d] = %d \\n',h,responses_freq[h])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		Printf("responses_freq[%d] = %d \n", ((P1 *)this)->_2_3_h, now.responses_freq[ Index(((P1 *)this)->_2_3_h, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 65 - voter.pml:152 - [h = (h+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_h;
		((P1 *)this)->_2_3_h = (((P1 *)this)->_2_3_h+1);
#ifdef VAR_RANGES
		logval(":init::h", ((P1 *)this)->_2_3_h);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 71 - voter.pml:156 - [h = 0] (0:77:1 - 3)
		IfNotBlocked
		reached[1][71] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_h;
		((P1 *)this)->_2_3_h = 0;
#ifdef VAR_RANGES
		logval(":init::h", ((P1 *)this)->_2_3_h);
#endif
		;
		/* merge: .(goto)(0, 78, 77) */
		reached[1][78] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 30: // STATE 72 - voter.pml:156 - [((h<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!((((P1 *)this)->_2_3_h<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 73 - voter.pml:157 - [printf('responses_with_deviation[%d] = %d \\n',h,freq_with_deviation[h])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		Printf("responses_with_deviation[%d] = %d \n", ((P1 *)this)->_2_3_h, now.freq_with_deviation[ Index(((P1 *)this)->_2_3_h, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 74 - voter.pml:156 - [h = (h+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_h;
		((P1 *)this)->_2_3_h = (((P1 *)this)->_2_3_h+1);
#ifdef VAR_RANGES
		logval(":init::h", ((P1 *)this)->_2_3_h);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 80 - voter.pml:131 - [i = 0] (0:95:2 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_6_i;
		((P1 *)this)->_2_3_6_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_6_i);
#endif
		;
		/* merge: i = 0(95, 81, 95) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_3_6_i;
		((P1 *)this)->_2_3_6_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_6_i);
#endif
		;
		/* merge: .(goto)(0, 96, 95) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 82 - voter.pml:131 - [((i<=(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		if (!((((P1 *)this)->_2_3_6_i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 83 - voter.pml:133 - [((freq_with_deviation[i]>max_value))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((now.freq_with_deviation[ Index(((P1 *)this)->_2_3_6_i, 5) ]>((P1 *)this)->_2_3_max_value)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_3_max_value */  (trpt+1)->bup.oval = ((P1 *)this)->_2_3_max_value;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_2_3_max_value = 0;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 84 - voter.pml:133 - [best_value = i] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_best_value;
		((P1 *)this)->_2_3_best_value = ((P1 *)this)->_2_3_6_i;
#ifdef VAR_RANGES
		logval(":init::best_value", ((P1 *)this)->_2_3_best_value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 85 - voter.pml:133 - [max_value = freq_with_deviation[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_max_value;
		((P1 *)this)->_2_3_max_value = now.freq_with_deviation[ Index(((P1 *)this)->_2_3_6_i, 5) ];
#ifdef VAR_RANGES
		logval(":init::max_value", ((P1 *)this)->_2_3_max_value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 86 - voter.pml:134 - [((freq_with_deviation[i]==max_value))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!((now.freq_with_deviation[ Index(((P1 *)this)->_2_3_6_i, 5) ]==((P1 *)this)->_2_3_max_value)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 87 - voter.pml:134 - [best_value = -(1)] (0:95:2 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_best_value;
		((P1 *)this)->_2_3_best_value =  -(1);
#ifdef VAR_RANGES
		logval(":init::best_value", ((P1 *)this)->_2_3_best_value);
#endif
		;
		/* merge: .(goto)(95, 91, 95) */
		reached[1][91] = 1;
		;
		/* merge: i = (i+1)(95, 92, 95) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_3_6_i;
		((P1 *)this)->_2_3_6_i = (((P1 *)this)->_2_3_6_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_6_i);
#endif
		;
		/* merge: .(goto)(0, 96, 95) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 40: // STATE 89 - voter.pml:135 - [(1)] (95:0:1 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(95, 91, 95) */
		reached[1][91] = 1;
		;
		/* merge: i = (i+1)(95, 92, 95) */
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_6_i;
		((P1 *)this)->_2_3_6_i = (((P1 *)this)->_2_3_6_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_6_i);
#endif
		;
		/* merge: .(goto)(0, 96, 95) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 41: // STATE 92 - voter.pml:131 - [i = (i+1)] (0:95:1 - 4)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_3_6_i;
		((P1 *)this)->_2_3_6_i = (((P1 *)this)->_2_3_6_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->_2_3_6_i);
#endif
		;
		/* merge: .(goto)(0, 96, 95) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 42: // STATE 99 - voter.pml:164 - [(((max_value>(200/2))&&(best_value!=-(1))))] (107:0:2 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		if (!(((((P1 *)this)->_2_3_max_value>(200/2))&&(((P1 *)this)->_2_3_best_value!= -(1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_3_max_value */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_3_max_value;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_2_3_max_value = 0;
		/* merge: the_chosen_one = best_value(107, 100, 107) */
		reached[1][100] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->the_chosen_one;
		((P1 *)this)->the_chosen_one = ((P1 *)this)->_2_3_best_value;
#ifdef VAR_RANGES
		logval(":init::the_chosen_one", ((P1 *)this)->the_chosen_one);
#endif
		;
		/* merge: .(goto)(107, 104, 107) */
		reached[1][104] = 1;
		;
		/* merge: printf('index to pick(the chosen one) = %d\\n',the_chosen_one)(107, 106, 107) */
		reached[1][106] = 1;
		Printf("index to pick(the chosen one) = %d\n", ((P1 *)this)->the_chosen_one);
		_m = 3; goto P999; /* 3 */
	case 43: // STATE 102 - voter.pml:165 - [the_chosen_one = -(1)] (0:107:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->the_chosen_one;
		((P1 *)this)->the_chosen_one =  -(1);
#ifdef VAR_RANGES
		logval(":init::the_chosen_one", ((P1 *)this)->the_chosen_one);
#endif
		;
		/* merge: .(goto)(107, 104, 107) */
		reached[1][104] = 1;
		;
		/* merge: printf('index to pick(the chosen one) = %d\\n',the_chosen_one)(107, 106, 107) */
		reached[1][106] = 1;
		Printf("index to pick(the chosen one) = %d\n", ((P1 *)this)->the_chosen_one);
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 106 - voter.pml:184 - [printf('index to pick(the chosen one) = %d\\n',the_chosen_one)] (0:107:0 - 3)
		IfNotBlocked
		reached[1][106] = 1;
		Printf("index to pick(the chosen one) = %d\n", ((P1 *)this)->the_chosen_one);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 107 - voter.pml:187 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC WS */
	case 46: // STATE 1 - voter.pml:72 - [nr = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_nr;
		((P0 *)this)->_1_1_nr = 1;
#ifdef VAR_RANGES
		logval("WS:nr", ((P0 *)this)->_1_1_nr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 2 - voter.pml:73 - [((nr<5))] (5:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((P0 *)this)->_1_1_nr<5)))
			continue;
		/* merge: nr = (nr+1)(0, 3, 5) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_nr;
		((P0 *)this)->_1_1_nr = (((P0 *)this)->_1_1_nr+1);
#ifdef VAR_RANGES
		logval("WS:nr", ((P0 *)this)->_1_1_nr);
#endif
		;
		/* merge: .(goto)(0, 6, 5) */
		reached[0][6] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 4 - voter.pml:74 - [goto :b0] (0:9:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		;
		/* merge: assert(((nr>=1)&&(nr<=5)))(9, 8, 9) */
		reached[0][8] = 1;
		spin_assert(((((P0 *)this)->_1_1_nr>=1)&&(((P0 *)this)->_1_1_nr<=5)), "((nr>=1)&&(nr<=5))", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 8 - voter.pml:79 - [assert(((nr>=1)&&(nr<=5)))] (0:9:0 - 2)
		IfNotBlocked
		reached[0][8] = 1;
		spin_assert(((((P0 *)this)->_1_1_nr>=1)&&(((P0 *)this)->_1_1_nr<=5)), "((nr>=1)&&(nr<=5))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 9 - voter.pml:80 - [ws_results[id] = nr] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.ws_results[ Index(((int)((P0 *)this)->id), 200) ];
		now.ws_results[ Index(((P0 *)this)->id, 200) ] = ((P0 *)this)->_1_1_nr;
#ifdef VAR_RANGES
		logval("ws_results[WS:id]", now.ws_results[ Index(((int)((P0 *)this)->id), 200) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 11 - voter.pml:92 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
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

