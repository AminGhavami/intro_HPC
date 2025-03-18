#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <mpi.h>

// Estimation the value of Pi using a Monte Carlo simulation
//
// Form more information:
// http://polymer.bu.edu/java/java/montepi/MontePi.html

// Total number of Monte Carlo simulations
long long int number_of_iterations = 100000000;

// Return a random number in [0,1]
float get_unit_random_number()
{
   int random_value = rand(); //Generate a random number
   float unit_random = random_value / (float) RAND_MAX; //make it between 0 and 1
   return unit_random;
}


int main(int argc, char** argv)
{
  // Get the number of iterations from the parameters
  if ( argc >= 2 )
  {
    number_of_iterations = atoll(argv[1]);
  }

  
  // Initialize MPI
  int error = MPI_Init(&argc, &argv);
  if (error != MPI_SUCCESS) 
  {
    fprintf(stderr, "Error: failed to initialize MPI!\n");;
    exit(1);
  }
    
  // Get info about MPI community
  int rank;
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  int nb_ranks;
  MPI_Comm_size(MPI_COMM_WORLD, &nb_ranks);
  
  // Synchronize processes and get start time
  MPI_Barrier(MPI_COMM_WORLD);
  double t_start = MPI_Wtime();

  // Initialize random seed
  srand((int)time(0)+rank);


  long long int base_simulations = number_of_iterations / nb_ranks;
  long long int remainder = number_of_iterations % nb_ranks;

  // Distribute remainder among first 'remainder' ranks
  long long int nb_simulations_local = base_simulations;
  if (rank < remainder) {
    nb_simulations_local += 1;  // Extra iteration for first 'remainder' ranks
}
  // Number of iterations per process
  //long long int nb_simulations_local = number_of_iterations / nb_ranks;

  // Nb of Monte Carlo simulation in the circle
  long int in_circle_count_local = 0;
  // Iteration loop
  long long int iter;
  for ( iter = 0 ; iter < nb_simulations_local ; iter++ )
  {
    // Generate a random point in a square
    float x = get_unit_random_number();
    float y = get_unit_random_number();
    // Square of the distance from the origin
    float dist2 = (x*x) + (y*y);
    // Count if the point is in the unit circle
    if( dist2 <= 1.0 )
    {
      in_circle_count_local++;
    }
  }

  // Accumulate the results across the processes
  long long int in_circle_count_global = 0;
  MPI_Reduce(&in_circle_count_local, &in_circle_count_global, 1, MPI_LONG_LONG_INT, MPI_SUM, 0, MPI_COMM_WORLD);
  long long int nb_simulations_global = 0;
  MPI_Reduce(&nb_simulations_local, &nb_simulations_global, 1, MPI_LONG_LONG_INT, MPI_SUM, 0, MPI_COMM_WORLD);

  // Calculate the value of Pi
  double pi_value = 4.0 * ( (long double)in_circle_count_global / (long double)nb_simulations_global);
 

  // Synchronize processes and get end time
  MPI_Barrier(MPI_COMM_WORLD);
  double t_end = MPI_Wtime();
  // Elapsed time
  double elapsed_time = t_end - t_start;

  // Display results
  if (rank == 0)
  {
    printf("Nb Processors = %3d     - Elapsed Time = %7.3f s     - Nb Iterations = %15lld     - Pi = %.18f\n", nb_ranks, elapsed_time, nb_simulations_global, pi_value);
  }
  
  // Finalize MP
  error = MPI_Finalize();
  if (error != MPI_SUCCESS) 
  {
    fprintf(stderr, "Error: failed to finalize MPI!\n");;
    exit(1);
  }
 
  return 0;
}
