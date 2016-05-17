
/*-----------------------------DEFINES -----------------------------*/

#define N_SERVICES 3 // test with more than 3, less than 3 and remember evens and odds
#define MAX_RESPONSES 5

//insert timeout
//in ws insert 

//end (false;) //this will block the ws 

// and in the main process will set a timeout
// so it catch as a error happening in the web service

/*----------------------------STRUCTS----------------------------------------*/
//save the shot to take and the frequency counter with the deviantion



/*-----------------------------GLOBAL VARIABLES -----------------------------*/

int ws_results[N_SERVICES]; // RESULTS FROM WEB SERVICE

int responses_freq[MAX_RESPONSES]; // counter that will save the values and increment all start at 0

int freq_with_deviation[MAX_RESPONSES];

/*-----------------------------METHODS AND "MACROS" -----------------------------*/

/*
* Web service modeling
* create a fictional web service that will give results(test all combinations)
* the processes will be created at runtime after init started and not at the beginning
* so no need of use active
* this "process" will run N_SERVICES Times
* Objective Create "RANDOM" value and return it
* No order is intended
*/

/*
    Correct values between and inclusive 1 - 4
    Incorrect Values 5 ( ) or
    (Incorrect) any other value (if exists) will be above 6 not inclusive
    (remember standard deviation)
*/

/*Create Random value for web service result
*/

//test if index exists array and change the responses_freq array 
inline change_value(index,value){
	if 
		:: index >=0 && index < MAX_RESPONSES && responses_freq[index] != 0 -> freq_with_deviation[index] = freq_with_deviation[index] + value
		:: else -> skip; 
	fi
}

//to a specific result that does not appear in web service array results 
inline change_responses_counter(){

	int i = 0
	int value = 0
	for ( i : 0 .. MAX_RESPONSES-1 ){
		value = responses_freq[i]

		change_value(i-1,value)
		change_value(i,value)
		change_value(i+1,value)
		
	}

}



inline randr(id){

    	int nr = 1;

	do
	:: nr < 5 -> nr++
	:: break
	od

    	//dont use select because probabilities and doesnt work
    	//select(nr: 1 .. 10);	
	assert(nr>=1 && nr<=5)
    	ws_results[id] = nr;
}



proctype WS(byte id){

    	//http://spinroot.com/spin/Man/rand.html or http://spinroot.com/spin/Man/select.html
    	randr(id);



}

inline run_web_services(){

    	//Limitation : No more than 255 web services
	byte i;

	for (i : 0 .. N_SERVICES-1){
		run WS(i);
    	}

}


inline calculate_frequency_on_results(){
	int value;
	int i;

	for (i : 0 .. N_SERVICES-1){
		// array starts at 0 so responses_freq[0] is really how many times response 1 occurs
		value = ws_results[i] - 1; 
	
		responses_freq[value] = responses_freq[value] + 1

	}
	/* TESTING the values*/
	/*for (i: 0 .. MAX_RESPONSES-1){
		printf("responses_freq[%d] = %d\n", i,responses_freq[i]);
	}*/
	

}

//choose the best at matrix
inline choose_best(best_response,max_value){

	//max value will hold the best frequency so far
	int i;

	for (i: 0 .. MAX_RESPONSES-1){
		if
			:: freq_with_deviation[i] > max_value -> best_response = i; max_value = freq_with_deviation[i];
			:: freq_with_deviation[i] == max_value -> best_response = -1;
			:: else -> skip;
		fi
	}
}


inline voter(the_chosen_one){

	int best_value = -1;
	int max_value = 0;

	calculate_frequency_on_results();
	
	change_responses_counter();


	int h = 0;	
	for (h : 0 .. MAX_RESPONSES - 1 ){
		printf("responses_freq[%d] = %d \n",h,responses_freq[h])
	}
	
        for (h : 0 .. MAX_RESPONSES - 1 ){
                printf("responses_with_deviation[%d] = %d \n",h,freq_with_deviation[h])
        }


	choose_best(best_value,max_value);

	if 
		:: max_value > N_SERVICES/2 && best_value != -1 -> the_chosen_one = best_value;
		:: else -> the_chosen_one = -1;
	fi
}


init{
    
	//before start any process do some work first
	
	int the_chosen_one = -1
	

    	// create and call web services
    	run_web_services();

    	(_nr_pr == 1);	
	
	//execute voter majority request (similar values must be > N_SERVICES/2 )
	voter(the_chosen_one);
	printf("index to pick(the chosen one) = %d\n", the_chosen_one )
	

}
