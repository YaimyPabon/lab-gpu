#!/bin/bash
#SBATCH -p hpc-bio-pascal
#SBACH -D /home/alumno16/lab-gpu
#SBATCH --output=%u-%j.out
#SBATCH --error=%u-%j.err
#SBATCH --cpus-per-task=4

# Cargar el entorno de Python
module load anaconda/2023.03

# Ejecutar el script de Python con IPython, pasando el valor de 'value' como argumento
ipython reduc-operation-array_par-alumno16.ipynb 5*10**7

# Cerramos el entorno de Python
module unload anaconda/2023.03
