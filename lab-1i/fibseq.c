#include <stdio.h>
#include<time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;
  clock_t start, end;
  double cpu_time_used;

  scanf("%d",&number);
  start = clock();
  result = fibonacci(number);   
  end = clock();
  cpu_time_used = ((double)end - start) / CLOCKS_PER_SEC;
  printf("The fibonacci sequence at %d is: %d\n", number, result);
  printf("time elapsed: %f sec\n", cpu_time_used);
}

