# CoPiT manuscript for *Computer Physics Communications* (CPC)

> **Active working directory (canonical):** all subsequent paper edits happen **only** in  
> `/home/ycfan/fyc/paper/copit_paper_2`  
> Do **not** edit `paper/copit/`, `paper/copit_grok/`, or other draft folders unless the user asks.

This folder contains a CPC-formatted manuscript of **CoPiT** (Conditional Position-induced Transformer) for aerodynamic field prediction. It has its own git repository (`.git`).

## Template source

Official CPC / Elsevier materials used:

- CPC LaTeX template (program description style):  
  <https://legacyfileshare.elsevier.com/promis_misc/CPCtemplateTEupdate.tex>  
  Local copy: `template/CPC_official_template.tex`
- Document class: **elsarticle** (Elsevier; required by the CPC template)  
  Local copy: `elsarticle.cls` (extracted from CTAN `elsarticle` v3.5)  
  Bibliography styles: `elsarticle-num.bst` (numerical, CPC default)
- Journal homepage / Guide for Authors:  
  <https://www.elsevier.com/journals/computer-physics-communications/0010-4655>

### Layout option (important)

| Option | Effect |
|--------|--------|
| `preprint,12pt` | Official CPC skeleton **default**. Large type, loose spacing, sparse pages — intended for review, **not** for judging article length. |
| **`final,3p,times` (current)** | Production-like single-column journal density. Use this when reading/editing. |
| `final,1p,times` / `5p` | Other Elsevier page models. |

Earlier `main.pdf` hit ~40 pages mainly because of `preprint,12pt` **plus** many figures forced with `height=0.xx\textheight`. That has been fixed.

The previous drafts under `paper/copit/` used the CAS single-column (`cas-sc`) class. This package follows the **official CPC `elsarticle` pipeline** instead.

## Files

| Path | Role |
|------|------|
| `main.tex` | Full manuscript |
| `copit_refs.bib` | BibTeX database |
| `elsarticle.cls`, `elsarticle-*.bst` | Local Elsevier class + styles |
| `figs/` | All figures |
| `main.pdf` | Compiled preprint (generated) |
| `template/CPC_official_template.tex` | Official CPC skeleton for reference |

## Build

With [Tectonic](https://tectonic-typesetting.github.io/) (recommended; pulls packages automatically):

```bash
cd paper/copit_grok
tectonic --keep-logs --print main.tex
```

Or with a full TeX Live install:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Manuscript structure (CPC)

1. **Front matter** — title, authors, abstract, keywords  
2. **PROGRAM SUMMARY** — CPiP-style metadata (title, license, language, nature of problem / solution method)  
3. **Long write-up** — Introduction → Preliminaries → Related work → Method → Experiments → Results (AirfRANS, BlendedNet++, ablations, discussion) → Conclusion  
4. **Declarations** — competing interest, data availability, CRediT  
5. **References** — numerical (`elsarticle-num`)

## Content basis

Synthesised from materials under `paper/`:

- Latest method/results draft: `paper/copit/nn_pit_film_main.tex`
- Outline: `paper/CoPiT_PIT_FiLM_论文大纲.md`
- Experiment checklist: `paper/待做事项.md`
- Review feedback: `paper/stanford_review.md`
- BlendedNet++ official-split metrics filled from  
  `copit_blendednetpp_series/.../official_metricsym6_ep80_ms8000_resumable`  
  (val MSE **0.0727**, test MSE **0.0678**, best epoch 54)

## Before submission

1. Replace author / affiliation / email placeholders in `main.tex`.  
2. Set the public code URL (currently `https://github.com/<to-be-added>/CoPiT`).  
3. Optionally remove the PROGRAM SUMMARY block if submitting purely as a Computational Physics (CP) paper rather than CPiP.  
4. Upload program archive (source, README, sample I/O) via Editorial Manager if depositing in the CPC Program Library:  
   <https://www.editorialmanager.com/comphy/>
5. Verify GIST / GeoABC bibliography entries (marked as provisional in `copit_refs.bib`).
