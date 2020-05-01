#!usr/bin/bash

for file in {5..10..5}C;do
	cd ${file};
	 mpirun -n 3 ~/bin/lmp_mpi -in gen.in -log log.lammps	> outfile.1 & 

	cd ..;
done
