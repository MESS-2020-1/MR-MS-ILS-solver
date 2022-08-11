# MineReduce-based Multi-Start ILS (MR-MS-ILS)
This repository stores the source code of the MineReduce-based Multi-Start Iterated Local Search solver used for the [MESS-2020+1 competition](https://www.ants-lab.it/mess2020/#competition).

## Dependencies

This solver uses [FPmax* LIB](https://github.com/marcelorhmaia/FPmax-LIB).

You should download and build it before compiling the solver (see instructions on the link above).

## Compiling the solver

1. Create a directory named "include" in this project's base directory:<br>`mkdir include`
2. Copy the required FPmax* LIB header files into `include`.
3. Copy the FPmax* LIB shared library (.so on Linux or .dll on Windows) into this project's base directory.
4. Compile the solver with `make`.

## Running the solver 

`./mrils <input_file> <solution_file> <timeout> <random_seed>`

For example, the command line:

`mrils ../Instances/Public/wlp18.dzn sol18.txt 200 0`

Runs for 200s the solver on instance `wlp18.dzn` stored in the directory `../Instances/Public/` and delivers the solution in the file `sol18.txt`.
