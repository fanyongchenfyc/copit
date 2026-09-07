# CoPiT CPC revision

This directory is an isolated revision of the CoPiT manuscript for *Computer Physics Communications*. The source drafts under `paper/copit` and `paper/copit_paper_2` are not modified by this revision.

## Files

| Path | Purpose |
|---|---|
| `main.tex` | Revised manuscript |
| `copit_refs.bib` | Bibliography database |
| `figs/` | Figures copied from the source draft |
| `template/CPC_official_template.tex` | CPC template retained for reference |
| `REVISION_NOTES.md` | Changes already made and experiments still required |
| `RESULT_PROVENANCE.md` | Exact source and aggregation of AirfRANS Tables 1--4 |
| `Makefile` | Local build command |

The full Chinese review and submission checklist is stored at:

```text
/home/ycfan/fyc/paper/CPC投稿修改意见与修订清单.md
```

## Build

```bash
cd /home/ycfan/fyc/paper/copit_revise
make
```

The manuscript uses the local Elsevier `elsarticle` class and numerical bibliography style.

## Revision policy

- No result is invented or silently relabelled.
- Archived AirfRANS `train_loss_*` values are not presented as held-out test errors.
- Existing single-run results are identified as such.
- Claims requiring new ablations, multiple random seeds or a common evaluator remain provisional.
- Author metadata and the public repository/DOI must be verified by the authors before submission.

## Intended CPC article type

The present manuscript is structured as a **Computational Physics** paper rather than a **Computer Programs in Physics (CPiP)** submission. A CPiP submission would additionally require the CPC Program Summary and formal program-library package. For either route, a documented and versioned public implementation is strongly recommended and is part of the outstanding submission work.
