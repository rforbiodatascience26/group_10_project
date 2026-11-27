# Group 10 Exam Project

## Project Contributors

| Name | Student ID | GitHub username |
| ---- | ---------- | --------------- |
| Luis Sebastian Galán | s235397 | luisgalan |
| Laura Grenaa Jensen | s235427 | lauragjensen |
| Taniya Dey | s263756 | taniyadey0229-rgb |
| Thota Kanishka Rao | s263780 | Pikachuuu2503 |

## Group 10: Exploring Mutation Effects on Protein Binding

This project is part of the R for Bio Data Science course at DTU.
We use the AB-Bind dataset to explore how protein mutations affect
binding affinity, measured as changes in binding free energy (ΔΔG).

Our focus is on data cleaning, wrangling, visualisation and analysis,
using a collaborative and reproducible workflow in R.

### Data

The AB-Bind dataset contains 1,101 mutation records across 32 protein
complexes.

Original publication:
https://pmc.ncbi.nlm.nih.gov/articles/PMC4815335/

The code in `R/01_load.qmd` retrieves the data from:
https://github.com/sarahsirin/AB-Bind-Database/tree/master

Data files are stored locally in `_raw/` and `data/`.

### Project Structure

- `_raw/`: Original downloaded data.
- `data/`: Imported, cleaned and augmented data.
- `R/`: Quarto documents and reusable R functions.
- `results/`: HTML reports and saved plots.
- `doc/`: Quarto presentation and its HTML output.

### Running the Project

1. Clone this repository and open the `.Rproj` file in RStudio.
2. Install the R packages used in the Quarto documents.
3. Render `R/00_all.qmd` to download the data and run the full analysis.

   To run the project step by step, render the following files in order.

   1. `R/01_load.qmd` downloads and imports the data.
   2. `R/02_clean.qmd` cleans the data.
   3. `R/03_augment.qmd` adds variables used in the analyses.
   4. `R/04_describe.qmd` summarises and visualises the dataset.
   5. `R/05_analysis_1.qmd` runs the first analysis.
   6. `R/06_analysis_2.qmd` runs the second analysis.

4. Render `doc/presentation.qmd` to create the presentation.

### Presentation

[View our presentation](https://rforbiodatascience26.github.io/group_10_project/doc/presentation.html)

### Use of Generative AI

We used ChatGPT (OpenAI), Claude(Anthropic) and Mistral AI to review our R scripts and analysis write-up. We asked them to point out mistakes in the code, gaps in our reasoning, and explanations that were hard to follow. When they flagged something, we asked for suggestions on how to fix it. We checked the suggestions against our code and results and decided as a group what to change. This helped us catch errors and explain our analysis more clearly.
