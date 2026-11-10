# Group 10 Exam Project

# Project Contributors

| Name | Student ID | GitHub username |
| ---- | ---------- | --------------- |
| Luis Sebastian Galán | s235397 | [Username] |
| Laura Grenaa Jensen | s235427 | lauragrenaa |
| Taniya Dey | s263756   | [Username] |
| Thota Kanishka Rao | s263780 | [Username] |

# Group 10: Exploring Mutation Effects on Protein Binding

This project is part of the R for Bio Data Science course at DTU.
We use the AB-Bind dataset to explore how protein mutations affect
binding affinity, measured as changes in binding free energy (ΔΔG).

Our focus is on data cleaning, wrangling, visualisation and analysis,
using a collaborative and reproducible workflow in R.

## Data

The AB-Bind dataset contains 1,101 mutation records across 32 protein
complexes.

Original publication:
https://pmc.ncbi.nlm.nih.gov/articles/PMC4815335/

The code in `R/01_load.qmd` retrieves the data from:
https://github.com/sarahsirin/AB-Bind-Database/tree/master

Data files are stored locally in `_raw/` and `data/`.

## Project Structure

- `_raw/`: Original downloaded data.
- `data/`: Imported, cleaned and augmented data.
- `R/`: Quarto documents and reusable R functions.
- `results/`: HTML reports and saved plots.
- `doc/`: Quarto presentation and its HTML output.

## Running the Project

1. Clone this repository and open the RStudio project.
2. Install the R packages used in the Quarto documents.
3. Run `R/01_load.qmd` to retrieve and import the data.
4. Run `R/02_clean.qmd` and `R/03_augment.qmd`.
5. Run the description and analysis documents in numerical order.
6. Render `doc/presentation.qmd` to create the presentation.

## Presentation

[View our presentation](INSERT_DIRECT_HTML_PRESENTATION_LINK)

## Use of Generative AI

[Describe how generative AI was used, including assistance with
project planning and drafting this README. Add references according
to the course guidelines.]
