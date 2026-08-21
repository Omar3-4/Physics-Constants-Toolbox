# `phys` — Physical Constants Toolbox for MATLAB

A lightweight MATLAB package that gives you instant access to **80+ physical constants**, particle masses, astronomical parameters, and mathematical constants — all from the command line.

```matlab
>> phys.c          % Speed of light → 299792458
>> phys.hbar       % Reduced Planck constant → 1.054571817e-34
>> phys.NA         % Avogadro constant → 6.02214076e23
>> phys.list       % Show all available constants
```

All values are in **SI units** and follow **CODATA 2018** recommended values.

---

## Installation

### Step 1 — Find your MATLAB path

Open MATLAB and run:

```matlab
userpath
```

This prints the path where MATLAB looks for user files. It will look something like:

| OS      | Typical output                          |
|---------|-----------------------------------------|
| Windows | `C:\Users\YourName\Documents\MATLAB`    |
| macOS   | `/Users/YourName/Documents/MATLAB`      |
| Linux   | `/home/YourName/Documents/MATLAB`       |

> **Note:** If `userpath` returns an empty string, you can set it yourself:
> ```matlab
> userpath('C:\Users\YourName\Documents\MATLAB')   % Windows example
> userpath('/home/YourName/Documents/MATLAB')       % Linux example
> ```

You can also check all folders MATLAB currently searches by running:

```matlab
path
```

### Step 2 — Clone or download this repository

Open a terminal and clone the repo directly into your MATLAB `userpath` folder:

```bash
cd "C:\Users\YourName\Documents\MATLAB"          # your userpath from Step 1
git clone https://github.com/YOUR_USERNAME/Physics-Constants-Toolbox.git
```

> **Don't have Git?** Click the green **Code** button on GitHub → **Download ZIP**, extract it, and move the extracted folder into your MATLAB `userpath` directory from Step 1.

After this step, your folder should look like:

```
Documents/MATLAB/Physics-Constants-Toolbox/
├── +phys/
├── install.m
└── README.md
```

### Step 3 — Install in MATLAB

Open MATLAB, navigate to the downloaded folder, and run the install script:

```matlab
cd 'C:\Users\YourName\Documents\MATLAB\Physics-Constants-Toolbox'
install
```

This runs `addpath(genpath(pwd))` and `savepath` to permanently add the toolbox to your MATLAB path.

### Step 4 — Verify

```matlab
phys.c        % Should return 299792458
phys.list     % Should print the full constants table
```

If both commands work, you're all set.

---

## Usage

Access any constant with `phys.<symbol>`:

```matlab
c   = phys.c         % Speed of light (m/s)
h   = phys.h         % Planck constant (J·s)
kB  = phys.kB        % Boltzmann constant (J/K)
G   = phys.G         % Gravitational constant (m³/(kg·s²))
NA  = phys.NA        % Avogadro constant (1/mol)
e   = phys.e         % Elementary charge (C)
```

List all available constants:

```matlab
phys.list
```

Get detailed help on any constant:

```matlab
help phys.c
help phys.hbar
help phys.list
```

### Advanced Calculations (Evaluating Expressions)

If you need to perform calculations with multiple constants, you don't have to write `phys.` before each one. Use `phys.calc()` to evaluate mathematical expressions seamlessly. It automatically resolves physical constants and can even use variables from your workspace!

```matlab
% Example 1: Calculate energy directly
E = phys.calc('h * c / 500e-9');

% Example 2: Bohr radius (mixing constants and workspace variables)
pi_val = pi; % MATLAB built-in
a0 = phys.calc('4 * pi * eps0 * hbar^2 / (me * e^2)');

% Example 3: Using your own variables
m = 5; 
E = phys.calc('m * c^2'); 

% Example 4: Complex expressions mixed with MATLAB code
result = (4 * phys.calc('eps0*me*c/e^2') * (0.2-log(0.95)/0.2)) / 7.5e-6;
```

### Example — Photon energy


```matlab
lambda = 550e-9;                            % 550 nm (green light)
E = phys.h * phys.c / lambda;              % Energy in joules
E_eV = E / phys.eV;                        % Convert to electron volts
fprintf('Photon energy: %.3f eV\n', E_eV);  % → 2.254 eV
```

### Example — Schwarzschild radius

```matlab
M = 10 * phys.Msun;                        % 10 solar masses
Rs = 2 * phys.G * M / phys.c^2;            % Schwarzschild radius
fprintf('Rs = %.1f km\n', Rs/1e3);           % → 29.5 km
```

### Example — Lorentz factor

```matlab
gamma = phys.gammaL(0.99);                  % v = 0.99c → γ ≈ 7.089
```

---

## Full List of Constants

### Fundamental Constants

| Symbol | Description | Unit |
|--------|-------------|------|
| `c` | Speed of light in vacuum | m/s |
| `h` | Planck constant | J·s |
| `hbar` | Reduced Planck constant | J·s |
| `G` | Newtonian gravitational constant | m³/(kg·s²) |
| `e` | Elementary charge | C |
| `kB` | Boltzmann constant | J/K |
| `NA` | Avogadro constant | 1/mol |
| `R` | Molar gas constant | J/(mol·K) |
| `Rgas` | Molar gas constant (alias) | J/(mol·K) |
| `F` | Faraday constant | C/mol |
| `u` | Atomic mass unit | kg |
| `eV` | Electron volt | J |
| `MeV` | Mega electron volt | J |
| `GeV` | Giga electron volt | J |
| `gn` | Standard acceleration of gravity | m/s² |
| `atm` | Standard atmosphere | Pa |
| `cal` | Thermochemical calorie | J |

### Electromagnetic Constants

| Symbol | Description | Unit |
|--------|-------------|------|
| `eps0` | Vacuum electric permittivity | F/m |
| `mu0` | Vacuum magnetic permeability | N/A² |
| `ke` | Coulomb constant | N·m²/C² |
| `Z0` | Impedance of free space | Ω |
| `Phi0` | Magnetic flux quantum | Wb |
| `G0` | Conductance quantum | S |
| `KJ` | Josephson constant | Hz/V |
| `RK` | Von Klitzing constant | Ω |

### Quantum Mechanics Constants

| Symbol | Description | Unit |
|--------|-------------|------|
| `alpha` | Fine-structure constant | — |
| `a0` | Bohr radius | m |
| `muB` | Bohr magneton | J/T |
| `muN` | Nuclear magneton | J/T |
| `Rinf` | Rydberg constant | 1/m |
| `Ry` | Rydberg energy | J |
| `Eh` | Hartree energy | J |
| `Schwinger` | Schwinger critical electric field | V/m |

### Atomic & Particle Physics

| Symbol | Description | Unit |
|--------|-------------|------|
| `me` | Electron mass | kg |
| `mp` | Proton mass | kg |
| `mn` | Neutron mass | kg |
| `mmu` | Muon mass | kg |
| `mtau` | Tau mass | kg |
| `md` | Deuteron mass | kg |
| `malpha` | Alpha particle mass | kg |
| `mW` | W boson mass | kg |
| `mZ` | Z boson mass | kg |
| `mH` | Higgs boson mass | kg |
| `re` | Classical electron radius | m |
| `lambdaC` | Compton wavelength (electron) | m |
| `ge` | Electron g-factor | — |
| `sigmaT` | Thomson cross section | m² |
| `GF` | Fermi coupling constant | GeV⁻² |
| `sinW2` | Weak mixing angle (sin²θ_W) | — |
| `alphaS` | Strong coupling constant (at M_Z) | — |

### Thermodynamics & Radiation

| Symbol | Description | Unit |
|--------|-------------|------|
| `sigma` | Stefan-Boltzmann constant | W/(m²·K⁴) |
| `b` | Wien wavelength displacement constant | m·K |
| `Wienb` | Wien wavelength displacement (alias) | m·K |
| `Wien` | Wien frequency displacement constant | Hz/K |
| `c1` | First radiation constant | W·m² |
| `c2` | Second radiation constant | m·K |

### Planck Units

| Symbol | Description | Unit |
|--------|-------------|------|
| `lP` | Planck length | m |
| `tP` | Planck time | s |
| `mPlanck` | Planck mass | kg |
| `TPlanck` | Planck temperature | K |
| `qP` | Planck charge | C |

### Astronomy & Astrophysics

| Symbol | Description | Unit |
|--------|-------------|------|
| `AU` | Astronomical unit | m |
| `pc` | Parsec | m |
| `ly` | Light-year | m |
| `Msun` | Solar mass | kg |
| `Rsun` | Solar radius | m |
| `Lsun` | Solar luminosity | W |
| `Tsun` | Solar effective temperature | K |
| `Mearth` | Earth mass | kg |
| `Rearth` | Earth equatorial radius | m |
| `Mjup` | Jupiter mass | kg |
| `Rjup` | Jupiter equatorial radius | m |
| `Mmoon` | Moon mass | kg |
| `Rmoon` | Moon mean radius | m |
| `H0` | Hubble constant | km/s/Mpc |
| `Tcmb` | CMB temperature | K |

### Mathematical Constants

| Symbol | Description | Unit |
|--------|-------------|------|
| `golden` | Golden ratio | — |
| `euler` | Euler–Mascheroni constant | — |
| `Catalan` | Catalan constant | — |
| `Apery` | Apéry constant (ζ(3)) | — |

### Units & Conversion Factors

| Symbol | Description | Unit |
|--------|-------------|------|
| `angstrom` | Ångström | m |
| `fermi` | Fermi (femtometre) | m |
| `barn` | Barn (cross-section) | m² |
| `Debye` | Debye (dipole moment) | C·m |

### Utility Functions

| Symbol | Description | Usage |
|--------|-------------|-------|
| `gammaL` | Lorentz factor γ(β) | `phys.gammaL(0.99)` |

---

## Directory Structure

```
Physics-Constants-Toolbox/
├── install.m          ← Run this to add the toolbox to MATLAB path
├── README.md          ← This file
└── +phys/             ← MATLAB package (86 files)
    ├── list.m         ← Displays formatted table of all constants
    ├── gammaL.m       ← Lorentz factor utility function
    ├── c.m            ← Speed of light
    ├── h.m            ← Planck constant
    ├── hbar.m         ← Reduced Planck constant
    └── ...            ← 81 more constant files
```

---

## Notes

- **Windows users:** MATLAB filenames are case-insensitive on Windows. Three symbols were renamed to avoid collisions:

  | Standard symbol | This package | Reason |
  |-----------------|-------------|--------|
  | `g` | `gn` | Conflicts with `G` (gravitational constant) |
  | `mP` | `mPlanck` | Conflicts with `mp` (proton mass) |
  | `TP` | `TPlanck` | Conflicts with `tP` (Planck time) |

- **Sources:** CODATA 2018 · IAU 2015 · PDG 2020

---

## License

Free to use for academic, research, and educational purposes.
