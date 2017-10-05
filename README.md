# Applied Bioinformatics Project

**Goal**: Apply the skills we learnt during the course to a project. The main focus is on reusability, documentation and automation. We want anyone to be able to look at this project and both understand what we have done and to run it themselves.

**Project definition**: This project aims to build a pipeline, using snakemake, to automate the creation of a predicted contact map for a protein. 

### Input ###
  A fasta file containing a single protein sequence

### Output ###
  A file with contact predictions, usually a .mat file with a n\*n matrix where n is the length of the input protein.  


## Content

  Root --
        |
        bin ------
                 |
                 Script and programs

        data -----
                 |
                 Raw and processed indata, examples

        doc ------
                 |
                 Documentation and paper

        results --
                 |
                 Results from experiments and lab notebook
                 
        src ------
                 |
                 Source files, compiled versions in the bin folder
