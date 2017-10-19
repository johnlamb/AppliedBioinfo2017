# Applied Bioinformatics Project

**Goal**: Apply the skills we learnt during the course to a project. The main focus is on reusability, documentation and automation. We want anyone to be able to look at this project and both understand what we have done and to run it themselves.

**Project definition**: This project aims to build a pipeline, using snakemake, to automate the creation of a predicted contact map for a protein. 

### Input ###
  A fasta file containing a single protein sequence

### Output ###
  A file with contact predictions, usually a .mat file with a n\*n matrix where n is the length of the input protein.  

### Install ###
Clone the repo and create a Python3 virtual environemtn of your liking. In the root folder, run:
`pip install -r requirements.txt`
This will install all required Python packages.

The workflow comes bundles with jackhmmer and ccmpred as aligner and contact predictor respectively. To use your own
program, adjust the run\_aligner.sh, run\_converter.sh and/or run\_predictor.sh wrappers in the bin/scripts directory. As
long as these wrappers return their result to stdin it will all work.

**IMPORTANT**
Make sure to set the databasefile path in the config.yaml file in the bin directory to your fasta database. Recommended
is to use swissprot. 
Also set your input directory where your fasta files reside. 
The default output directory is ./result.

After the config.yaml file has been edited, run the follow:
`snakemake -j`
The -j flag tells snakemake to use all available cores. To use fewer append the number of cores to use.

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
