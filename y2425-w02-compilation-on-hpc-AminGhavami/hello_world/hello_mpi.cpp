#include <iostream>
#include "mpi.h"

int main(int argc, char* argv[])
{
    int rank, size;

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    char name[MPI_MAX_PROCESSOR_NAME];
    int name_size;
    MPI_Get_processor_name(name, &name_size);

    std::cout << "Hello, World, I am " << rank << " of " << size << " on "<< name << std::endl;

    MPI_Finalize();
    return 0;
}

