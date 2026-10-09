# Low-Power Synthesis of a SHA-256 Core (65 nm)

Logic synthesis and power optimization of a SHA-256 hashing core with Synopsys Design Compiler,
with timing and power sign-off in PrimeTime.  
*Course: Synthesis and Optimization of Digital Systems — Politecnico di Torino, 2026.*

## Flow

1. **Baseline.** Synthesis with high-Vt (HVT) cells only, in a 65 nm standard-cell library at the
   nominal corner (1.20 V, 25 °C). The clock period was swept in 0.5 ns steps to find the fastest
   clock that meets both **slack ≥ 0** and **area < 39 200 µm²**: **3.0 ns (333 MHz)**.
   At 2.5 ns the area exceeds 42 000 µm².
2. **Clock gating** (minimum bit-width 8, maximum fan-out 32) at the same clock period.
3. **Clock gating + multi-Vt** synthesis, letting the tool pick LVT, SVT or HVT cells gate by gate.
4. **Power analysis** in PrimeTime with switching activity back-annotated from a VCD of a
   post-synthesis simulation.
5. **Custom Tcl report** for timing-path analysis (see below).

## Results (PrimeTime, clock period 3.0 ns)

| Configuration | Area (µm²) | Worst slack (ns) | Cell mix |
|---|---|---|---|
| Baseline (HVT only) | 39 131 | +0.000013 | 100% HVT |
| Clock gating | 37 602 (−3.9%) | +0.000022 | 100% HVT |
| Clock gating + multi-Vt | **31 829 (−18.7%)** | +0.000147 | 31.6% LVT · 23.6% SVT · 44.8% HVT |

**Clock gating** removes the feedback multiplexers that recirculate the value of enabled registers,
so the area goes down even though integrated clock-gating cells are added. Dynamic power did not
improve in this test: the testbench hashes only a few blocks, so the gating cells toggle at every
new block instead of keeping the clock off during long idle periods, as they would in a real workload.

**Multi-Vt** lets the tool place fast LVT cells only on critical paths and keep HVT cells
elsewhere. Smaller gates meet the 3.0 ns constraint, so area drops by a further 15% and dynamic
power by about 22% compared with clock gating alone. The price is leakage, which grows by roughly
57× because of the LVT and SVT cells: a typical speed/area versus leakage trade-off.

## Custom PrimeTime report

[`ex3/custom_report.tcl`](ex3/custom_report.tcl) defines a procedure that lists the worst
critical paths through a given cell and, for each path, how many combinational cells lie in the
fan-in and in the fan-out of that cell, sorted by slack:

```tcl
source ex3/custom_report.tcl
custom_report 10 <cell_full_name>
# STARTPOINT   ENDPOINT   SLACK   FANIN_CELLS   FANOUT_CELLS
```

## Repository contents

```
ex1/     baseline: constraints (.sdc), tool setup, PrimeTime analysis with metric reporting
ex2.1/   clock gating: synthesis and PrimeTime scripts
ex2.2/   clock gating + multi-Vt: synthesis and PrimeTime scripts (Vt-group percentages)
ex3/     custom_report.tcl, custom timing-path report procedure
docs/    project report
```

`synthesis.tcl` and `pt_analysis.tcl` are based on the course template provided by the EDA group of
Politecnico di Torino; our work is the clock-gating and multi-Vt setup, the tool setup files, the
metric extraction and the custom report. The standard-cell libraries are proprietary and the
SHA-256 RTL was provided by the course, so neither is included: the scripts cannot be run as-is
outside the course environment.

## Team

**Lorenzo Pavone**, Samuele Martello, Matteo Scardovi.

<!-- TODO: one or two sentences on your own contribution -->
