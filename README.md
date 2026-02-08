# Saxophone vs Clarinet Harmonic Analysis

This project investigates the harmonic characteristics of the saxophone and clarinet using MATLAB. By analyzing specific notes from each instrument, we explore timbre differences through harmonic amplitudes, spectral centroid, odd/even harmonic ratios, tristimulus, and inharmonicity.

## Features

- Extracts **harmonic frequencies and amplitudes** from `.mat` files.
- Calculates **spectral centroid** for each note.
- Computes **odd and even harmonic contributions**.
- Computes **tristimulus parameters** (T1, T2, T3) to quantify energy distribution across harmonics.
- Plots **Tristimulus diagram** comparing saxophone and clarinet notes.

## Files

- `notes.mat` : MATLAB data file containing harmonic information for each note.
- `analysis.m` : MATLAB script performing the full analysis and plotting.

## Requirements

- MATLAB R2018b or later (or compatible version)
- Basic knowledge of signal processing or musical acoustics is helpful but not required.

## Usage

1. Load `notes.mat` in MATLAB.
2. Run `analysis.m`.
3. View plots and results for harmonic analysis:
   - Tristimulus diagram
   - Odd/even harmonic ratios
   - Spectral centroid
   - Inharmonicity for each note

## Example Output

- Tristimulus diagram showing energy distribution for saxophone and clarinet.
- Tables or variables in MATLAB workspace: `B_*` (spectral centroid), `hodd*`, `heven*` (odd/even harmonic ratios), `T_*` (tristimulus), `inh_*` (inharmonicity).

## Author

- Ali RAZA
