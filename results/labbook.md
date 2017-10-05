# Lab notebook for Applied Bioinformatics project, part of the MedBioInfo grad school

## Project definition
In this project I want to build an automatic pipeline that takes as input a single
protein sequence in fasta format (extention to handle multiple sequences) and 
produces the contact predictions for this protein.

A rough outline:

       blast                      contact pred
Fasta -------> sto/a3m alignment ---------------> .mat contact prediction

Both the blast and contact prediction step should be modular so the user
can either choose from a limited number of programs or feed in the blast/pred 
command themselves. Both ways require the user to have a blaster and predictor
installed.

Initial testing is being done using the following programs:
  Python 3.5.2
  snakemake 4.1
  jackhmmer (HMMER 3.1b2)
  ccmpred (cloned from git 2017-10-04)


2017-10-04 *Startup*
  Initial startup. The structure of the project set up and a rough sketch is
  laid out, see above. Tested jackhmmer with default parameters with swissprot
  as database. Sufficiently fast for development. ccmpred is also installed. 
  For once a very easy and painfree installation. Have opted to forgo the CUDA
  support at the moment as it is not crucial for this project (and there is no
  need for any change in the workflow for cuda support, only reinstallation
  of ccmpred when cuda is installed and ccmpred will automatically pick it up).

2017-10-05 *Manually stepping through*
  The idea today is to manually run through an example, from fasta to finished
  .mat file. 
  With jackhmmer in the PATH the example was run without a problem. The 
  additional script convert_sto.py converts the resulting stockholm format
  into a3m/aln/fasta. All three working well, aln is the input for ccmpred.
  The run_aligner.sh script takes a fasta name as input (only looks in the
  example folder) and runs jackhmmer against swissprot, then the resulting
  .sto file is converted into .aln.
