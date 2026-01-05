
# C-Plan GitHub Repository

This repository contains code and documentation for **Ezemvelo KwaZulu-Natal Wildlife's (EKZNW) Systematic Conservation Plan**, also known as **C-Plan**


---
## 📖 What is C-Plan?
C-Plan is a **Systematic Conservation Planning tool** used to analyze biodiversity data and produce conservation statistics to inform spatial planning. This repository includes:
- **Quarto documents** for rationale, methodology, results & discussion.
- **Code** (R, Python) for data processing and analysis.
- **Bibliography files** for references.
---


## 📝 Documentation in Quarto
The C-Plan documentation is written in **Quarto** files (`.qmd`). These files combine:
- **Text**: Descriptions, reasoning, and methodology.
- **Code**: Executable chunks in R, Python, or Julia.
- **Output**: Tables, charts, and maps generated dynamically.


### ✅ Why Quarto?
Quarto is a **reproducible publishing system**. It lets you:
- Write **narrative + code** in one document.
- Render outputs to **HTML**, **PDF**, or **Word**.
- Keep analysis and documentation in sync.


Quarto is widely adopted by organizations for **scientific publishing**, **data analysis**, and **dynamic documentation**. Here are some examples:

- **NASA Openscapes**  
  NASA uses Quarto for collaborative science documentation and training resources.  
  🔗 [NASA Openscapes Quarto Clinic ](https://openscapes.github.io/quarto-clinic/)

- **SANBI NBA (South Africa)**  
  Provides Quarto templates and workflows for the National Biodiversity Assessment.  
  🔗 [SANBI NBA website](https://github.com/SANBI-NBA/nba-website)

These examples show how Quarto supports **open science**, **reproducibility**, and **collaboration** across global biodiversity and conservation initiatives.

---

## 📚 Bibliography
References are managed in a `.bib` file stored in this repository:
- Add new references to `references.bib`.
- Use **Citation keys** in Quarto like `@Smith2020` to cite sources.
- Quarto automatically formats citations and builds a reference list.

---

## 🔗 What is Git and GitHub?
- **Git**: A version control system that tracks changes in files.
- **GitHub**: A platform for hosting Git repositories and collaborating.

### ✅ Why use Git/GitHub?
- **Version history**: See who changed what and when.
- **Collaboration**: Multiple contributors can work without overwriting each other.
- **Transparency**: All changes are tracked.

---

## 👩‍💻 How to Contribute
1. **Install** [Git](https://git-scm.com/install), [Quarto](https://quarto.org/docs/get-started/), and [Positron](https://positron.posit.co/).
2. **Clone the repository**:
   ```bash
   git clone https://github.com/ekznw/cplan.git
   cd cplan
   ```
3. **Open the project in Positron**:
   - Positron provides a **dual view**: source `.qmd` files and rendered previews.
   - Use **Quarto Preview** in Positron to see live rendering of text + code.
4. **Create a branch** for your changes:
   ```bash
   git checkout -b your-feature-name
   ```
5. **Edit Quarto files** (`.qmd`) or bibliography (`.bib`).
6. **Preview your changes**:
   - In Positron: Click **Preview** or run:
     ```bash
     quarto preview
     ```
7. **Commit and push**:
   ```bash
   git add .
   git commit -m "Describe your changes"
   git push origin your-feature-name
   ```
8. **Open a Pull Request** on GitHub.

---

## ✅ Tips for New Contributors
- Positron makes it easy to work with Quarto: you can edit source and see rendered output side-by-side.
- Don’t worry if you’ve never used Git or Quarto—start small!
- Use **GitHub Desktop** if you prefer a GUI for Git.
- Ask questions in Issues if you’re stuck.

---




