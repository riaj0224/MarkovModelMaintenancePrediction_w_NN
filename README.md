# Predictive Maintenance: Hybrid Markov Model Evaluation 

This repository presents a project which explores the fascinating realm of Predictive Maintenance, an area becoming increasingly critical as industrial machinery and systems advance in complexity. The central objective of this project is to assess the reliability of a hybrid Markov model (a Markov model generated from a  Multi-Layer Perceptron (MLP)) vs a traditional model, thereby generating valuable insights into optimal strategies for industrial maintenance scheduling.

## :hammer_and_wrench: What's Inside?

This project embraces a comprehensive approach to data analysis, involving several stages:

1. **Data Preprocessing** — Initial data cleaning stage, eliminating potential measurement errors. 
2. **Data Preparation** — Smart distribution of cleaned data for training and testing the Multilayer Perceptron (MLP).
3. **MLP Design** — Creation of an MLP with precise error requirements (±3%).
4. **Mathematical Models** — Establishment of an ideal condition Markov model to predict expected outcomes.
5. **Simulation Models** — Implementation of the Markov model in simulation software, comparing classical and hybrid models.
6. **Simulation Results** — Presentation and discussion of results from both models.
7. **Evaluation** — Comprehensive analysis and comparison of the models, deriving insightful conclusions on maintenance timing.

## :computer: Technologies Used

This project leverages multiple technologies:

- DataEngine
- MATLAB
- Excel
- Dynastar

These were utilized to manage and process data, design and train the MLP, simulate the Markov models, and perform final analyses.

## 📝 Final Report 

The final report of this project is written in LaTeX, a high-quality typesetting system, and is compiled into a PDF file (`FinalPaper.pdf`). The LaTeX source code for the report is available in the file `FinalPaper.tex`.

The report includes all the necessary details of the project, from the introduction and aim to the methodologies and final evaluations. It also contains several visual aids like charts, diagrams, and tables to help readers understand the project better.

The LaTeX report utilizes the following additional files:
- `bibliography.bib`: Bibliographic data in BibTeX format. This file contains all the references cited in the report.
- Various other files (`FinalPaper.aux`, `FinalPaper.bbl`, `FinalPaper.blg`, `FinalPaper.lof`, `FinalPaper.log`, `FinalPaper.lot`, `FinalPaper.out`, `FinalPaper.synctex.gz`, `FinalPaper.toc`): These are auxiliary files generated during the LaTeX compiling process. They include information about figure captions, bibliographic references, section headings, and more, which are used to cross-reference within the document.

You'll need a LaTeX distribution (like TexLive, MikTex, or MacTex) and a LaTeX editor (like Overleaf, Texmaker, or TeXstudio) to edit and compile the LaTeX file. To recompile the report after making changes, use the command `pdflatex FinalPaper.tex` in your terminal (from the directory containing the file).

## 📂 Project Structure

This project has the following file structure:

```bash
├── bibliography.bib
├── FinalPaper.aux
├── FinalPaper.bbl
├── FinalPaper.blg
├── FinalPaper.lof
├── FinalPaper.log
├── FinalPaper.lot
├── FinalPaper.out
├── FinalPaper.pdf
├── FinalPaper.synctex.gz
├── FinalPaper.tex
├── FinalPaper.toc
├── texput.log
│
├── Codes
│ ├── DataPreparatorA.m
│ └── Data_ANN_2021_cw.xlsx
│
└── Images
├── Various images (.jpg, .png)
├── Fotos
│ └── Presentation slides (.PNG)
└── Photos
└── Various images (.JPG, .jpg)
```

- **Codes**: This directory contains the Matlab code files and data for the project.
- **Images**: This directory contains images used in the project. It includes two subdirectories, "Fotos" and "Photos", which contain presentation slides and various other images respectively.

## :mortar_board: Credits

This project was accomplished as part of the "Artificial Neural Networks 214350" class instructed by Prof. Dr.-Ing. W. Kaestner. The course equipped me with the essential knowledge and tools to undertake this project, paving the way for an exploration into the predictive maintenance domain.

## :email: Contact Information

For any further queries or discussion related to this project, please feel free to connect with me via jair2000.0224@hotmail.com.

## :page_with_curl: License

This project is licensed under the terms of the MIT License. While it is free to use, modify, and distribute, it was primarily intended for educational, academic, and university use. Any use of this code should provide appropriate credit and citation.



