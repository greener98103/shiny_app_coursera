# shiny_app_coursera
This is the readme file for the gene viewer R studio presentation,Mark down , and shiny app.
Within this folder you can access the following contents :

gene_viewer-figure: 

README.md : this file

gene_viewer.Rpres: the gene viewer presentation that goes through the purpose of this tool and how it works.

gene_viewer.md : the gene viewer markdown file

immune.csv: The list of specific genes involved in immune response.This file is  used to filter the data set down to look at only genes that are biologically relevant to immune function . 

innate.csv: The list of specific genes involved in early (innate) immune response.This file is  used to filter the data set down to look at only genes that are biologically relevant within innate immunity . 

server.R: This is the file that contains the functions to load,filter, and visualize the data set based off the user's specifications in the shiny app. 

ui.R: This user interface that is part of the shiny app, that allows the user to specify within a drop down menu which data set subsets and which genetic signatures they want to visualize through a heatmap. 

spleen_DE.csv: This is the raw statistics from the experiment . This contains all 20k genes and their log2 fold changes. 
