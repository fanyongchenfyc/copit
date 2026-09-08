# CoPiT

**CoPiT** (Conditional Position-induced Transformer) is a neural operator for aerodynamic field prediction on irregular meshes. It combines a Position-induced Transformer (PiT) backbone with multi-stage Feature-wise Linear Modulation (FiLM).

This repository holds the manuscript submitted to *Computer Physics Communications*, together with figure assets and bibliography.

- Paper: `main.tex`
- Preprint build: `make` (requires [Tectonic](https://tectonic-typesetting.github.io/) or a TeX Live `pdflatex`+`bibtex` toolchain)
- Datasets: [AirfRANS](https://github.com/Extrality/AirfRANS), [BlendedNet++](https://arxiv.org/abs/2512.03280)

## Build the manuscript

```bash
make          # tectonic
make latex    # pdflatex + bibtex fallback
```

## Citation

```bibtex
@article{fan2026copit,
  title   = {CoPiT: A conditional position-induced Transformer for aerodynamic field prediction on irregular meshes},
  author  = {Fan, Yongchen and Qiao, Zhonghua and Chen, Junfeng and Wu, Kailiang},
  journal = {Computer Physics Communications},
  note    = {Manuscript},
  year    = {2026}
}
```

## Licence

The source code and manuscript files in this repository are released under the MIT Licence (see `LICENSE`). Dataset licences remain those of AirfRANS and BlendedNet++.

## Contact

Corresponding author: Zhonghua Qiao. Contact email to be added after confirmation.
