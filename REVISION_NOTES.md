# Revision notes

## Completed without new experiments

- Rewrote the abstract so that AirfRANS field claims refer to held-out test losses rather than training losses.
- Distinguished single-run point estimates from uncertainty-aware results.
- Reframed the theoretical statement as preservation of an already convergent positional-attention output under bounded FiLM, rather than a proof for the complete network.
- Unified the BlendedNet++ target definition to the three trained channels: `Cp`, `Cf_x`, and `Cf_z`.
- Identified BlendedNet++ as hybrid conditioning because global features enter both pointwise inputs and FiLM.
- Stated that `metric_sym6` requires a mathematical definition and an Euclidean-distance ablation.
- Replaced all four AirfRANS `train_loss_*` tables with held-out test losses from the benchmark, Transolver and CoPiT evaluation outputs.
- Restored MLP, GraphSAGE, PointNet and Graph U-Net in every AirfRANS table, together with Transolver and CoPiT.
- Updated the scarce, Reynolds-extrapolation and angle-of-attack correlations to the same CoPiT reevaluation records used for their test losses.
- Added the available full-data absolute-error context: mean relative errors of approximately 45.95% for drag and 4.67% for lift.
- Added requirements for a common evaluator, explicit metric aggregation, matched baseline budgets, multi-seed results, hardware and memory reporting.
- Rewrote the discussion and conclusion to avoid attributing gains to FiLM before matched ablations are available.
- Rewrote Data Availability so that a public, versioned repository and permanent archive are required at submission.
- Confirmed that all cited BibTeX keys are present.

## 2026-09-07 update

- Corrected BlendedNet++ instantiation: reported CoPiT is FiLM-only (geom6 + dual FiLM, Euclidean distance, one head, $\tau=0.01$), not hybrid / `metric_sym6`.
- Corrected AirfRANS decoder: quantile-masked PiT attention, not a smooth unmasked projection.
- Inserted BlendedNet++ conditioning ablation (concat 0.0741, hybrid 0.0570, FiLM-only 0.0530) from held-out test evaluation.
- Inserted A100 training wall-clock table from logs.
- Did **not** insert AirfRANS ablation validation losses as test numbers.

## 2026-09-07 later

- Inserted AirfRANS full-data test ablation (`tab:ablate_air`) from `evaluate_eval.py` on 200 held-out cases.
- Decoder-only FiLM has the lowest surface/volume point estimates; complete CoPiT seed 0 has the highest $\rho_d$. Seed 42 complete CoPiT $\rho_d=0.697$ is reported in the text only.
- Did not mix ablation rows into Table `tab:full`.

## Experiments still open

1. Three random seeds for principal CoPiT vs Transolver comparisons (two complete AirfRANS seeds exist; drag rank differs).
2. MAE/RMSE tables for $C_d$/$C_l$ on all AirfRANS models.
3. Inference-time and peak-memory protocol (training wall-clock is in Table `tab:runtime`).

## Author actions required before submission

- Confirm author names, order, affiliations, corresponding author and email.
- Replace the repository/archive placeholder statement with working URLs and a DOI.
- Add funding and acknowledgements where applicable.
- Generate Highlights, cover letter and any graphical abstract required by the current CPC submission system.
- Remove all provisional language after the missing experiments have been inserted and independently checked.
