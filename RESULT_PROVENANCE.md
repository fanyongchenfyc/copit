# AirfRANS result provenance

This file records the sources used for Tables 1--4 in `main.tex`.

## Aggregation

- `Surface loss` is the wall-pressure MSE from `mean_score_surf`; the other wall channels are prescribed by the benchmark and are zero in these score records.
- `Volume loss` is the sum of the four entries in `mean_score_vol`, corresponding to normalized MSE for `vx`, `vy`, `p`, and `nut`.
- `rho_d` and `rho_l` are the drag and lift entries in `spearman_coef_mean` for benchmark baselines/Transolver, or `spearman_drag.correlation` and `spearman_lift.correlation` for the CoPiT reevaluation.
- Training-log fields named `train_loss_surf` and `train_loss_vol` are not used.

## Benchmark baselines

Model order in these files is `MLP`, `GraphSAGE`, `PointNet`, `GUNet` (reported as Graph U-Net):

```text
/home/ycfan/fyc/1_airfrans/AirfRANS/scores_github/full/score.json
/home/ycfan/fyc/1_airfrans/AirfRANS/scores_github/scarce/score.json
/home/ycfan/fyc/1_airfrans/AirfRANS/scores_github/reynolds/score.json
/home/ycfan/fyc/1_airfrans/AirfRANS/scores_github/aoa/score.json
```

The model ordering is defined in:

```text
/home/ycfan/fyc/1_airfrans/AirfRANS/get_results.py
```

## Transolver

```text
/home/ycfan/fyc/transolver_series/transolver/Airfoil-Design-AirfRANS/scores/full/score.json
/home/ycfan/fyc/transolver_series/transolver/Airfoil-Design-AirfRANS/scores/scarce/score.json
/home/ycfan/fyc/transolver_series/transolver/Airfoil-Design-AirfRANS/scores/reynolds/score.json
/home/ycfan/fyc/transolver_series/transolver/Airfoil-Design-AirfRANS/scores/aoa/score.json
```

## CoPiT

```text
/home/ycfan/fyc/copit_airfrans/copit_airfrans_full/scores/eval/score.json
/home/ycfan/fyc/copit_airfrans/copit_airfrans_scarce/scores/scarce_reeval_20260804/score.json
/home/ycfan/fyc/copit_airfrans/copit_airfrans_reynold/scores/reynolds_reeval_20260804/score.json
/home/ycfan/fyc/copit_airfrans/copit_airfrans_aoa/scores/aoa_reeval_20260804/score.json
```

The last three records were selected because they are explicitly dated reevaluations and contain field losses, load errors, and rank correlations from the same evaluation run. Consequently, some correlations differ from those in the earlier draft, which mixed values from different archived evaluations.

## BlendedNet++ main table

- CoPiT FiLM-only (overall 0.0530): `/home/ycfan/fyc/copit_blendednetpp_best/runs/best/metrics_summary.json` (`best_test_loss` 0.052961).
- Transolver / FiLMNet / graph / GNOT: previous common-reimplementation table in `copit_revise` (not retrained in `experiments/`).

## BlendedNet++ conditioning ablation (Table `tab:ablate_bnpp`)

Official split 8992/1000/2498, test $N=2498$, z-score MSE, geom6 point features unless concatenation/hybrid:

| Variant | Path | Test overall / Cp / Cfx / Cfz |
|---|---|---|
| Concatenation only | `experiments/blendednetpp/runs/concat_only_seed0_v3/test_metrics.json` | 0.074061 / 0.026305 / 0.138221 / 0.057659 |
| Hybrid | `experiments/blendednetpp/runs/hybrid_seed0/test_metrics.json` | 0.057021 / 0.020301 / 0.106551 / 0.044212 |
| FiLM-only (CoPiT) | `copit_blendednetpp_best/runs/best/metrics_summary.json` | 0.052961 / 0.018051 / 0.099135 / 0.041697 |

Rounded to four decimals in the paper. Wall-clock from `pitlog.txt` `Time elapsed`: concat 86756 s, hybrid 92698 s, FiLM-only 92823 s.

## Not used as test numbers

AirfRANS `experiments/airfrans/runs/{processor_only,decoder_only,widened_concat_seed0_v2}` last-epoch **validation** losses. `matched_pit` and `complete_seed42` were still training when this table was written.
