# include <stdio.h>
# include <stdlib.h>

int comparar(const void *a, const void *b) {
    return (*(int*)a - *(int*)b);  // Devuelve positivo, negativo o cero
}


int main(){
	int arr[] = { 5, 2, 4, 6, 1, 3 };
	int len = sizeof(arr) / sizeof(arr[0]);
	qsort(arr, len, sizeof(int), comparar);

	printf("%ld\n", sizeof(arr)/sizeof(arr[0]));

	for (int i = 0; i < len; i++) {
		printf("%d ",arr[i]);
	}
}
