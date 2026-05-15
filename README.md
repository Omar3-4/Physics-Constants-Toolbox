=========================================================================
  PHYS - MATLAB Package for Physical and Mathematical Constants
=========================================================================

Version:    1.0
Date:       May 2026
Source:     CODATA 2018 | IAU 2015 | PDG 2020

DESCRIPTION
-----------
The +phys package provides instant access to 80+ physical constants,
mathematical constants, particle masses, and astronomical parameters
from the MATLAB command line.

All constants use SI units and follow CODATA 2018 recommended values
(where applicable).

INSTALLATION
------------
1. Place this entire folder somewhere on your system.
2. Open MATLAB and navigate (cd) to THIS folder
   (the one containing +phys and install.m).
3. Run:

      install

   This adds the folder to your MATLAB path permanently.

USAGE
-----
Access any constant with:

    value = phys.<symbol>;

Examples:

    c   = phys.c         % Speed of light (m/s)
    h   = phys.h         % Planck constant (J*s)
    kB  = phys.kB        % Boltzmann constant (J/K)
    G   = phys.G         % Gravitational constant
    NA  = phys.NA        % Avogadro constant
    e   = phys.e         % Elementary charge (C)

List all available constants:

    phys.list

Get help on a specific constant:

    help phys.c
    help phys.hbar
    help phys.list

CATEGORIES
----------
The package includes constants from the following categories:

  * Fundamental constants (c, h, hbar, G, e, kB, NA, R, F, u, eV, gn, atm)
  * Electromagnetic constants (eps0, mu0, ke, Z0, Phi0, G0, KJ, RK)
  * Quantum mechanics constants (alpha, a0, muB, muN, Rinf, Ry, Eh, Schwinger)
  * Atomic & particle physics (me, mp, mn, mmu, mtau, md, malpha, mW, mZ, mH,
    re, lambdaC, ge, sigmaT, GF, sinW2, alphaS)
  * Thermodynamics & radiation (sigma, b, Wien, Wienb, c1, c2)
  * Planck units (lP, tP, mPlanck, TPlanck, qP)
  * Astronomy & astrophysics (AU, pc, ly, Msun, Rsun, Lsun, Tsun,
    Mearth, Rearth, Mjup, Rjup, Mmoon, Rmoon, H0, Tcmb)
  * Mathematical constants (golden, euler, Catalan, Apery)
  * Units & conversion (angstrom, fermi, barn, Debye, cal, MeV, GeV)
  * Utility functions (gammaL - Lorentz factor)

DIRECTORY STRUCTURE
-------------------

  Physics Constants Toolbox/
  ├── install.m                  Installation script
  ├── README.txt                 This file
  └── +phys/                     MATLAB package folder
      ├── list.m                 List all constants
      ├── c.m                    Speed of light
      ├── h.m                    Planck constant
      ├── hbar.m                 Reduced Planck constant
      ├── G.m                    Gravitational constant
      ├── e.m                    Elementary charge
      ├── me.m                   Electron mass
      ├── mp.m                   Proton mass
      ├── mn.m                   Neutron mass
      ├── kB.m                   Boltzmann constant
      ├── eps0.m                 Vacuum permittivity
      ├── mu0.m                  Vacuum permeability
      ├── alpha.m                Fine-structure constant
      ├── sigma.m                Stefan-Boltzmann constant
      ├── NA.m                   Avogadro constant
      ├── R.m                    Molar gas constant
      ├── Rgas.m                 Molar gas constant (alias)
      ├── a0.m                   Bohr radius
      ├── muB.m                  Bohr magneton
      ├── muN.m                  Nuclear magneton
      ├── Rinf.m                 Rydberg constant
      ├── Ry.m                   Rydberg energy
      ├── gn.m                   Standard gravity
      ├── eV.m                   Electron volt
      ├── MeV.m                  Mega electron volt
      ├── GeV.m                  Giga electron volt
      ├── lP.m                   Planck length
      ├── tP.m                   Planck time
      ├── mPlanck.m              Planck mass
      ├── TPlanck.m              Planck temperature
      ├── qP.m                   Planck charge
      ├── F.m                    Faraday constant
      ├── u.m                    Atomic mass unit
      ├── ke.m                   Coulomb constant
      ├── Z0.m                   Impedance of free space
      ├── Phi0.m                 Magnetic flux quantum
      ├── G0.m                   Conductance quantum
      ├── KJ.m                   Josephson constant
      ├── RK.m                   Von Klitzing constant
      ├── Eh.m                   Hartree energy
      ├── re.m                   Classical electron radius
      ├── lambdaC.m              Compton wavelength
      ├── ge.m                   Electron g-factor
      ├── sigmaT.m               Thomson cross section
      ├── mmu.m                  Muon mass
      ├── mtau.m                 Tau mass
      ├── md.m                   Deuteron mass
      ├── malpha.m               Alpha particle mass
      ├── mW.m                   W boson mass
      ├── mZ.m                   Z boson mass
      ├── mH.m                   Higgs boson mass
      ├── GF.m                   Fermi coupling constant
      ├── sinW2.m                Weak mixing angle
      ├── alphaS.m               Strong coupling constant
      ├── b.m                    Wien displacement constant
      ├── Wienb.m                Wien displacement (alias)
      ├── Wien.m                 Wien frequency constant
      ├── c1.m                   First radiation constant
      ├── c2.m                   Second radiation constant
      ├── Schwinger.m            Schwinger critical field
      ├── atm.m                  Standard atmosphere
      ├── cal.m                  Thermochemical calorie
      ├── AU.m                   Astronomical unit
      ├── pc.m                   Parsec
      ├── ly.m                   Light-year
      ├── Msun.m                 Solar mass
      ├── Rsun.m                 Solar radius
      ├── Lsun.m                 Solar luminosity
      ├── Tsun.m                 Solar temperature
      ├── Mearth.m               Earth mass
      ├── Rearth.m               Earth radius
      ├── Mjup.m                 Jupiter mass
      ├── Rjup.m                 Jupiter radius
      ├── Mmoon.m                Moon mass
      ├── Rmoon.m                Moon radius
      ├── H0.m                   Hubble constant
      ├── Tcmb.m                 CMB temperature
      ├── golden.m               Golden ratio
      ├── euler.m                Euler-Mascheroni constant
      ├── Catalan.m              Catalan constant
      ├── Apery.m                Apery constant
      ├── angstrom.m             Angstrom unit
      ├── fermi.m                Fermi unit
      ├── barn.m                 Barn unit
      ├── Debye.m                Debye unit
      └── gammaL.m               Lorentz factor function

NOTES
-----
  * On Windows, MATLAB filenames are case-insensitive. For this reason:
      - Standard gravity uses 'gn' (instead of 'g') to avoid conflict
        with the gravitational constant 'G'.
      - Planck mass uses 'mPlanck' (instead of 'mP') to avoid conflict
        with proton mass 'mp'.
      - Planck temperature uses 'TPlanck' (instead of 'TP') to avoid
        conflict with Planck time 'tP'.

  * The gammaL function computes the Lorentz factor:
      gamma = phys.gammaL(0.99)   % returns ~7.089

LICENSE
-------
Free to use for academic, research, and educational purposes.

=========================================================================
