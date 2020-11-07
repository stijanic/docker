// This program calculates the user's pay.
#include <stdio.h>
#include <stdlib.h>

#define OK		 0
#define INPUT_ERROR	-1
#define MEMORY_ERROR	-2

//int main(int argc, char **argv) {
int main(void) {
	double *hours, *rate, *pay;

	hours = malloc(sizeof(double));
	rate = malloc(sizeof(double));
	pay = malloc(sizeof(double));

	if (hours != NULL && rate != NULL && pay != NULL) {
		// Get the number of hours worked.
		printf("How many hours did you work? ");
		if (scanf("%lf", hours) > 0) { //d for int

		  // Get the hourly pay rate.
		  printf("How much do you get paid per hour? ");
		  if (scanf("%lf", rate) > 0) { //d for int

		    // Calculate the pay.
		    *pay = *hours * *rate;

		    // Display the pay.
		    printf("You have earned $%.2f for %.0f hours of work at $%0.2f/hour rate.\n", *pay, *hours, *rate); //d for int

		  // Input was wrong
		  } else {
		    printf("Wrong Input!\n");
			free(hours);
			free(rate);
			free(pay);

		    return INPUT_ERROR;
		  }

		// Input was wrong
		} else {
		    printf("Wrong Input!\n");
			free(hours);
			free(rate);
			free(pay);

		    return INPUT_ERROR;
		}
		
		free(hours);
		free(rate);
		free(pay);

		return OK;
	} else {
		return MEMORY_ERROR;
	}
}
