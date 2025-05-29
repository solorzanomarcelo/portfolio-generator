# LinkedIn Portfolio Generator

A GitHub Action to generate a personal HTML portfolio from your LinkedIn data archive.  
Instead of manually building a resume or portfolio website, this action converts your exported LinkedIn CSVs (`Positions.csv`, `Profile.csv`, and `Skills.csv`) into a clean, customizable portfolio page.

## 🚀 Features

- Parses LinkedIn `Positions.csv`, `Profile.csv`, and `Skills.csv`
- Generates a modern, responsive HTML portfolio
- Automatically updates on every push
- Fully GitHub Pages compatible

---

## ⚡ Quick Start (The Easy Way)

1. **Fork this repository**  
   Click the `Fork` button at the top of this page to create your own copy.

2. **Enable GitHub Pages**  
   In your forked repo, go to **Settings > Pages**  
   Set the source to your `main` branch (or whichever you're using) and click **Save**.  

3. **Replace sample LinkedIn CSVs with your own**  
Go to the `/data` folder and replace the existing files with yours:

- `data/Positions.csv`
- `data/Profile.csv`
- `data/Skills.csv`

These can be exported from LinkedIn under:  
*Settings & Privacy > Get a copy of your data > Profile > Request full data archive*

4. **Wait for GitHub Actions to run**  
On every push, GitHub will auto-generate your `index.html` file and publish it to GitHub Pages.

---

## 📁 Folder Structure

```bash
├── data/                    # Your LinkedIn CSV exports
│   ├── Positions.csv
│   ├── Profile.csv
│   └── Skills.csv
├── templates/               # Jinja2 template for HTML layout
│   └── index.html.j2
├── build_portfolio.py       # The Python script that parses CSVs and renders HTML
├── .github/workflows/       # GitHub Actions workflow to trigger build
│   └── generate-portfolio.yml
└── index.html               # Output HTML (automatically generated)
