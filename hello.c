#include <omp.h>
#include <stdio.h>
int  main() {
  printf("max threads %d\n", omp_get_max_threads());
  printf("max threads %d\n", omp_get_num_threads());
  #pragma omp parallel
  {
        printf("Hello World... from thread = %d\n",
                       omp_get_thread_num());
  }
}
