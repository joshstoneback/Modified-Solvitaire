# Modified Solvitaire: A modified version of Solvitaire optimized for specified starting configurations

## Documentation

Full documentation for Solvitaire can be found [here](https://github.com/joshstoneback/Modified-Solvitaire).
This documentation focuses on running the program to iterate over a folder that contains JSON files, then output statistics to a csv file.

## Edit 

This program has several values hard-coded for simplicity. This section is meant to guide users towards the correct files where changes may be necessary.

If a user wishes to change the folder from which JSON game files are drawn, this can be done at line 138 in the command_line_helper.cpp file.
Change "temp_folder" to be the desired folder name, which must be in the same directory as the rest of the program 

```
input_folder = string(cwd) + "/" + "temp_folder";
```

If a user wishes to change the output csv file name, this can be done in line 269 of the solver.cpp file.



## Run

To build Solvitaire (necessary after making any changes), run:

```
$ ./build.sh
```

To enter the container, run:

```
$ ./enter-container.sh
```


To run Solvitaire from within the container run:

```
$ ./solvitaire

```
