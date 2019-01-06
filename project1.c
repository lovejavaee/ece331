# include <stdio.h>
# define ARRAYSIZE 16
int intarray[] = {1, 5, -3, 6, 12, 21, 18, 44, 32, 9, 23, 10, 11, 99, 100, 24};

void swap (int little)
{
	int swapvalue;
	swapvalue = intarray[little];
	intarray[little] = intarray[ARRAYSIZE - 1];
	intarray[ARRAYSIZE - 1] = swapvalue;
}

int main()
{
	int i;
	int littleindex = ARRAYSIZE - 1;

	for (i = ARRAYSIZE - 1; i > -1; i--) {
		if (intarray[i-1] < intarray[littleindex]) 
			littleindex = i;
	}

// ####################### Print #######################
	printf("littleIndex is : %d\n", littleindex);
// ####################### Print #######################

	swap(littleindex);
	

// ####################### Print #######################
	for (int loop = 0; loop < sizeof(intarray)/sizeof(intarray[0]); loop++){
		printf("%d \n", intarray[loop]);
	}
// ####################### Print #######################


	return 0;
}
