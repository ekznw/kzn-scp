# KwaZulu-Natal Systematic Conservation Plan (KZN SCP)

> This repository hosts the code for analyses and documentation of Ezemvelo KwaZulu-Natal Wildlife’s (EKZNW) Systematic Conservation Plan (KZN SCP).

> The KZN SCP is an evidence‑based, spatial-planning framework for integrating biodiversity data, ecosystem processes, ecosystem functioning, socio-ecological components, climate projections, and other decision‑support analyses to guide conservation action in KwaZulu‑Natal.

------------------------------------------------------------------------

## Release versioning

| Author(s) | Contributor(s) | Comments | Date | Release version |
|:--------------|---------------|---------------|---------------|---------------|
| Paul Gordijn |  | Beta version in progress | 2025-11-01 | 0.1 |
| Paul Gordijn |  | Refining collaborative processes | 2025-05-12 | 0.2 |

## Scientific documentation

Documentation for the conservation plan was done using Quarto to allow integrating reporting, analyses and data wrangling, and website production. Quarto code for the documentation and analyses are housed in the `kzn-scp` [GitHub repository](https://github.com/ekznw/kzn-scp) enabling fine-scaled product and analytical version controlling.

## How to contribute

Technical writing can either be contributed to in 'word' (DOCX) or Quarto (QMD) format depending on user/group preference.

- **Quarto (QMD)**: \> The native contribution method for the write-up, associated website, data preparation, and analyses, is through VSCodium/Positron. These software GUIs are free to download and use, and editing of documentation can either be done in 'markdown' format, or in the editors rendered view of the code. \> + This form of editing can be synced to the GitHub repository to enable robust version control of all documentation and analyses. \> + See the 'How to contribute via git' section below using VSCodium.

- **Word documentation** (DOCX): \> Quarto can convert Quarto markdown (QMD) to DOCX format, but not the other way around. Follow this sequence for editing word documents.

  > *To contribute as a team via word*:
  >
  > 1.  Download DOCX for the relevant section from [here](https://github.com/ekznw/kzn-scp/tree/main/docx_collab).\
  > 2.  Select the most recent update (folders named by YYYYMMDD).\
  > 3.  Upload the document to Teams and share with collaborators.
  >     a.  Teams folder for working word documents [click here](https://kznwildlife.sharepoint.com/sites/KZNConservationPlanRevision2023/_layouts/15/guestaccess.aspx?share=IgD9xn_vGo3pQZiBEw1SHmvcAaKeah6Ysf7PzKLSPzJjZNw&e=dWecjQ). All C-Plan committee members have access.\
  >     b.  File naming & version control.
  >         - Enable track changes in the Word document for MS version-control features then save document.\
  >         - Retain filename, i.e., section/chapter name with YYYYMMDD suffix with addition of,\
  >         - The coordinator for respective document sections must save major revisions/incorporations of comments and edits with addition suffix: 'edt_YYYYMMDD'.\
  >           Final file names will be `sectionname_YYYYMMDD_edt_YYYYMMDD`, where the first date indicates the date of word document extraction from Quarto, and the second date represents the date of latest edits.
  > 4.  Notify the website coordinator for conversion to Quarto for major version updates.

  > Note: rendering from DOCX to QMD is not possible ― therefore keep formatting in word simple.

- For **citation management** see the 'Bibliography and Citations' section below.

------------------------------------------------------------------------

## Section management

The documentation of the conservation plan is divided into the following sections with respective editors with contributions.
| Section | Subsection | Lead author(s) | Contributors | QMD document name |
|-----------|--------|--------------------|-------------|----------------|
| About |  | Paul Gordijn & Felicity Elliot | All | about.qmd |
| Usage |  | Felicity Elliot | All | usage.qmd |
| Introduction (technical) |  | Paul Gordijn & Felicity Elliot | All | intro.qmd |
| Features | Overview | Brent Coverdale | All | features_overview.qmd |
|  | Ecosystems | Debbie Jewitt | All | features_ecosystems.qmd |
|  | Species representation | Brent Coverdale | All | features_spp_intro.qmd |
|  | Amphibians | Adrian Armstrong |  | features_spp_amphibians.qmd |
|  | Aquatic species | Skhumbuzo Khubeka |  | features_spp_aquatic.qmd |
|  | Birds | Brent Coverdale |  | features_spp_avifauna.qmd |
|  | Invertebrates | Adrian Armstrong |  | features_spp_invertebrates.qmd |
|  | Mammals | Brent Coverdale |  | features_spp_mammals.qmd |
|  | Plants | Clint Carbutt |  | features_spp_plants.qmd |
|  | Reptiles | Adrian Armstrong |  | features_spp_reptiles.qmd |
|  | Critical habitat | Brent Coverdale |  | features_critical_habitat.qmd |
|  | Refugia and habitat corridors | ??? |  | features_corridors.qmd |
| Targets |  | ??? |  | targets.qmd |
| Decision support |  | Paul Gordijn & Felicity Elliot | All | support.qmd |
| Prioritization framework |  | Paul Gordijn & Felicity Elliot |  | prioritize_framework.qmd |
| Supporting material | Landscape integrity |  |  |  |
|  | Species distribution models |  |  | sdm.qmd |
|  | Data systems | Paul Gordijn |  | data.qmd |

## Bibliography and References

References are managed through .bib files stored in the [BSPI repository](https://github.com/ekznw/refs).

- Add new entries to [bspi_refs.bib](https://github.com/ekznw/refs/blob/main/bspi.bib).
- Use citation keys in Quarto, e.g. [@mucina2018tvm], or @mucina2018tvm for with or without parentheses, respectively. Quarto will render citations appropriately.
- Quarto automatically builds formatted reference lists.
- Citations in MS Word:
  - Follow Quarto rules above.
  - Word documents with citations will only be rendered from Quarto.

This supports consistent, traceable documentation and improves scientific integrity.

------------------------------------------------------------------------

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

------------------------------------------------------------------------

## Why Quarto?

Quarto is widely adopted across science, data analysis, and conservation because it supports:

- Reproducible workflows (code + text together)
- Multiple output formats (HTML, DOCX, PDF)
- Version control with Git
- Long‑term maintainability

Examples from the conservation/science community:

- NASA Openscapes\
  Used for training, collaborative science, and reproducible workflows.\
  https://openscapes.github.io/quarto-clinic/

- SANBI National Biodiversity Assessment\
  Uses Quarto to document analysis methods, models, and metadata.\
  https://github.com/SANBI-NBA/nba-website

The KZN SCP follows these same principles of open science and transparent methodology.

------------------------------------------------------------------------

## Git & GitHub

- Git tracks all changes (code, data processing instructions, documentation).
- GitHub hosts the repository for collaboration, versioning, and peer review.

GitHub ensures:

- Traceability — who changed what, and why
- Reproducibility — every version of the SCP can be recreated
- Collaboration — multiple contributors without overwriting work

This helps build institutional memory and shared capacity in EKZNW.

------------------------------------------------------------------------

## How to contribute via git

1.  Install:

    - Git
    - Quarto
    - VSCodium (or Positron)

2.  Clone the repository: git clone https://github.com/ekznw/kzn_scp.git cd kzn_scp

3.  Open the project in VSCodium:

    - Edit .qmd files
    - Render documentation with Quarto Preview

4.  Create a feature branch: git checkout -b your-feature-name

5.  Edit analysis or documentation:

    - R scripts in R/ (using terra + data.table where possible)
    - Quarto documents in docs/ or website/
    - Bibliography in .bib

6.  Preview documentation: quarto preview

7.  Commit and push: git add . git commit -m "Describe your changes" git push origin your-feature-name

8.  Open a Pull Request on GitHub.

------------------------------------------------------------------------

## Repository Structure

``` md
kzn_scp/
  ├── docx_collab/       # Word documents for team collaboration.
  ├── website/           # Conservation plan website (Quarto)
  |       └── _site/     #  Rendered by Quarto.
  |                      #  -> Download folder and open 'index.html' to
  |                      #     view website.
  ├── analysis/          # Scripts (terra, data.table, quarto, etc).
  ├── data/              # Raw/non-sensitive data (where permissable);
  |                      #  generally for summary data and presentation.
  ├── readme.md          # This file.
  └── .gitignore         # List of files not tracked/uploaded by git and GitHub.
```

------------------------------------------------------------------------

## How to view the website

Quarto websites can be deployed from GitHub for free. Until that step is taken by the Conservation Plan steering committee the website can be viewed 'locally' by:

1.  Going to the *draft* [kzn-scp GitHub site](https://github.com/ekznw/kzn-scp),
2.  Click the green `<> Code` button,
3.  Select the `Download ZIP` option,
4.  Extract the ZIP folder,
5.  Navigate to the extracted `_site` folder, &
6.  Open the `index.html` file.