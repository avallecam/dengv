# proyecto denv2

## objetivo:

- analisis de estructura poblacional con genomas libres de denv2

## cómo reproducir el análisis?

### alineamiento

- mantenerse en carpeta local

- copiar archivo: 

> denv2_990_alg.fasta 

- instalar clustalw y copiar muscle. 

- ejecutar en el archivo de extensión fasta

### sitios informativos

- con el output, generar archivo en MEGA

- usar script R para transformar a formato apto para structure

### estructura poblacional

- ir a carpeta:

> data_structure/ 

- pegar archivo de input

> Dengue990_PI-Numerical_4463si.tsv

- usar:

> ./structure -k k -i input -o output -m mainparams -e extraparams

## bug

- intento de replicar el total de iteraciones con un loop escrito en archivos bash
