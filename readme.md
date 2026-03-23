# KwaZulu-Natal Systematic Conservation Plan (KZN SCP)

This repository hosts the code for analyses and documentation of Ezemvelo KwaZulu-Natal Wildlife’s (EKZNW) Systematic Conservation Plan (KZN SCP).

The KZN SCP is an evidence‑based, spatial-planning framework for integrating biodiversity data, ecosystem processes, ecosystem functioning, socio-ecological components, climate projections, and other decision‑support analyses to guide conservation action in KwaZulu‑Natal.

---

## Documentation in Quarto

All documentation for the KZN SCP is written in Quarto (.qmd) — an open‑source system that integrates:

- Narrative text
- Executable R code (primarily terra, data.table, and base R)
- Dynamic outputs (maps, tables, plots, spatial summaries)

Quarto allows us to maintain:

- One source
- Many outputs (HTML, DOCX, PDF)
- Code and documentation that remain synchronised

This ensures the SCP is reproducible, traceable, and transparent — essential qualities for conservation planning.

---

## Why Quarto?

Quarto is widely adopted across science, data analysis, and conservation because it supports:

- Reproducible workflows (code + text together)
- Multiple output formats (HTML, DOCX, PDF)
- Version control with Git
- Long‑term maintainability

Examples from the conservation/science community:

- NASA Openscapes  
  Used for training, collaborative science, and reproducible workflows.  
  https://openscapes.github.io/quarto-clinic/

- SANBI National Biodiversity Assessment  
  Uses Quarto to document analysis methods, models, and metadata.  
  https://github.com/SANBI-NBA/nba-website

The KZN SCP follows these same principles of open science and transparent methodology.

---

## Bibliography and References

References are managed through .bib files stored in the repository.

- Add new entries to references.bib (or a project‑specific .bib file).
- Use citation keys in Quarto, e.g. @mucina2018tvm.
- Quarto automatically builds formatted reference lists.

This supports consistent, traceable documentation and improves scientific integrity.

---

## Git & GitHub

- Git tracks all changes (code, data processing instructions, documentation).
- GitHub hosts the repository for collaboration, versioning, and peer review.

GitHub ensures:

- Traceability — who changed what, and why
- Reproducibility — every version of the SCP can be recreated
- Collaboration — multiple contributors without overwriting work

This helps build institutional memory and shared capacity in EKZNW.

---

## How to Contribute

1. Install:
   - Git
   - Quarto
   - Positron or RStudio (Positron recommended)

2. Clone the repository:
   git clone https://github.com/ekznw/kzn_scp.git
   cd kzn_scp

3. Open the project in Positron:
   - Edit .qmd files
   - Render documentation with Quarto Preview

4. Create a feature branch:
   git checkout -b your-feature-name

5. Edit analysis or documentation:
   - R scripts in R/ (using terra + data.table where possible)
   - Quarto documents in docs/ or website/
   - Bibliography in .bib

6. Preview documentation:
   quarto preview

7. Commit and push:
   git add .
   git commit -m "Describe your changes"
   git push origin your-feature-name

8. Open a Pull Request on GitHub.

---

## Tips for New Contributors

- You don’t need to be an R programmer to contribute — start by editing text.
- Use Positron or GitHub Desktop if the command line feels unfamiliar.
- Ask questions via GitHub Issues.
- Small edits are welcome — they improve the clarity and strength of the plan.
- Coding skills are not required immediately, but contributors often begin learning R and Git through this workflow.

The goal is to help more EKZNW staff engage with modern, reproducible conservation planning.

---

## Repository Structure (example — update as needed)

kzn_scp/
  ├── website/           # SCP website (Quarto)
  ├── analysis/          # R scripts (terra, data.table)
  ├── data/              # Raw/non-sensitive data (if allowed)
  ├── docs/              # Methodology & reporting
  ├── references/        # Bibliography (.bib)
  ├── README.md          # This file
  └── .gitignore

---