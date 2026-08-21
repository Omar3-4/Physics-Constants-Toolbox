function list
%LIST Display a formatted table of all physical constants in the phys package
%
% =========================================================================
%   PHYS - MATLAB Package for Physical and Mathematical Constants
% =========================================================================
%
% DESCRIPTION:
%   The +phys package provides quick access to a comprehensive library of
%   physical constants, mathematical constants, particle masses, and
%   astronomical parameters. All values follow CODATA 2018 recommended
%   values (where applicable) and are expressed in SI units.
%
% INSTALLATION:
%   1. Place the +phys folder in your MATLAB working directory
%      or in any folder on the MATLAB path.
%   2. Run: install   (from the parent directory of +phys)
%      This adds the parent folder to the MATLAB path permanently.
%
% USAGE:
%   Access any constant with:   phys.<symbol>
%
%   Examples:
%     c   = phys.c        % Speed of light (m/s)
%     h   = phys.h        % Planck constant (J*s)
%     kB  = phys.kB       % Boltzmann constant (J/K)
%     e   = phys.e        % Elementary charge (C)
%     G   = phys.G        % Gravitational constant (m^3/(kg*s^2))
%     NA  = phys.NA       % Avogadro constant (1/mol)
%
%   List all constants:
%     phys.list
%
%   Get help on a specific constant:
%     help phys.c
%     help phys.hbar
%
% =========================================================================
%                        FULL LIST OF CONSTANTS
% =========================================================================
%
% --- Fundamental Constants ---
%   c           Speed of light in vacuum             m/s
%   h           Planck constant                      J*s
%   hbar        Reduced Planck constant               J*s
%   G           Newtonian gravitational constant      m^3/(kg*s^2)
%   e           Elementary charge                     C
%   kB          Boltzmann constant                    J/K
%   NA          Avogadro constant                     1/mol
%   R           Molar gas constant                    J/(mol*K)
%   Rgas        Molar gas constant (alias)            J/(mol*K)
%   F           Faraday constant                      C/mol
%   u           Atomic mass unit                      kg
%   eV          Electron volt                         J
%   MeV         Mega electron volt                    J
%   GeV         Giga electron volt                    J
%   gn          Standard acceleration of gravity      m/s^2
%   atm         Standard atmosphere                   Pa
%   cal         Thermochemical calorie                J
%
% --- Electromagnetic Constants ---
%   eps0        Vacuum electric permittivity          F/m
%   mu0         Vacuum magnetic permeability          N/A^2
%   ke          Coulomb constant                      N*m^2/C^2
%   Z0          Impedance of free space               ohm
%   Phi0        Magnetic flux quantum                 Wb
%   G0          Conductance quantum                   S
%   KJ          Josephson constant                    Hz/V
%   RK          Von Klitzing constant                 ohm
%
% --- Quantum Mechanics Constants ---
%   alpha       Fine-structure constant               (dimensionless)
%   a0          Bohr radius                           m
%   muB         Bohr magneton                         J/T
%   muN         Nuclear magneton                      J/T
%   Rinf        Rydberg constant                      1/m
%   Ry          Rydberg energy                        J
%   Eh          Hartree energy                        J
%   Schwinger   Schwinger critical electric field      V/m
%
% --- Atomic & Particle Physics Constants ---
%   me          Electron mass                         kg
%   mp          Proton mass                           kg
%   mn          Neutron mass                          kg
%   mmu         Muon mass                             kg
%   mtau        Tau mass                              kg
%   md          Deuteron mass                         kg
%   malpha      Alpha particle mass                   kg
%   mW          W boson mass                          kg
%   mZ          Z boson mass                          kg
%   mH          Higgs boson mass                      kg
%   re          Classical electron radius              m
%   lambdaC     Compton wavelength (electron)          m
%   ge          Electron g-factor                     (dimensionless)
%   sigmaT      Thomson cross section                 m^2
%   GF          Fermi coupling constant               GeV^-2
%   sinW2       Weak mixing angle (sin^2 theta_W)     (dimensionless)
%   alphaS      Strong coupling constant (at M_Z)     (dimensionless)
%
% --- Thermodynamics & Radiation Constants ---
%   sigma       Stefan-Boltzmann constant             W/(m^2*K^4)
%   b           Wien wavelength displacement constant  m*K
%   Wienb       Wien wavelength displacement (alias)   m*K
%   Wien        Wien frequency displacement constant   Hz/K
%   c1          First radiation constant              W*m^2
%   c2          Second radiation constant             m*K
%
% --- Planck Units ---
%   lP          Planck length                         m
%   tP          Planck time                           s
%   mPlanck     Planck mass                           kg
%   TPlanck     Planck temperature                    K
%   qP          Planck charge                         C
%
% --- Astronomy & Astrophysics Constants ---
%   AU          Astronomical unit                     m
%   pc          Parsec                                m
%   ly          Light-year                            m
%   Msun        Solar mass                            kg
%   Rsun        Solar radius                          m
%   Lsun        Solar luminosity                      W
%   Tsun        Solar effective temperature            K
%   Mearth      Earth mass                            kg
%   Rearth      Earth equatorial radius                m
%   Mjup        Jupiter mass                          kg
%   Rjup        Jupiter equatorial radius              m
%   Mmoon       Moon mass                             kg
%   Rmoon       Moon mean radius                       m
%   H0          Hubble constant                       km/s/Mpc
%   Tcmb        CMB temperature                       K
%
% --- Mathematical Constants ---
%   golden      Golden ratio                          (dimensionless)
%   euler       Euler-Mascheroni constant              (dimensionless)
%   Catalan     Catalan constant                      (dimensionless)
%   Apery       Apery constant (zeta(3))              (dimensionless)
%
% --- Units & Conversion Factors ---
%   angstrom    Angstrom                              m
%   fermi       Fermi (femtometre)                    m
%   barn        Barn (cross section)                  m^2
%   Debye       Debye (dipole moment)                 C*m
%
% --- Utility Functions ---
%   gammaL      Lorentz factor gamma(beta)            (dimensionless)
%
% =========================================================================
%   Source: CODATA 2018 | IAU 2015 | PDG 2020
%   Author: Physics Constants Toolbox
% =========================================================================
%
% See also: phys.c, phys.h, phys.hbar, phys.G, phys.e, phys.kB

fprintf('\n');
fprintf('  ================================================================\n');
fprintf('    PHYS - Physical and Mathematical Constants Package\n');
fprintf('  ================================================================\n');
fprintf('\n');

% Build the table data
data = {
    % --- Fundamental Constants ---
    'FUNDAMENTAL CONSTANTS', '', ''
    'c',        'Speed of light in vacuum',            'm/s'
    'h',        'Planck constant',                     'J*s'
    'hbar',     'Reduced Planck constant',              'J*s'
    'G',        'Newtonian gravitational constant',     'm^3/(kg*s^2)'
    'e',        'Elementary charge',                    'C'
    'kB',       'Boltzmann constant',                   'J/K'
    'NA',       'Avogadro constant',                    '1/mol'
    'R',        'Molar gas constant',                   'J/(mol*K)'
    'Rgas',     'Molar gas constant (alias)',            'J/(mol*K)'
    'F',        'Faraday constant',                     'C/mol'
    'u',        'Atomic mass unit',                     'kg'
    'eV',       'Electron volt',                        'J'
    'MeV',      'Mega electron volt',                   'J'
    'GeV',      'Giga electron volt',                   'J'
    'gn',       'Standard acceleration of gravity',     'm/s^2'
    'atm',      'Standard atmosphere',                  'Pa'
    'cal',      'Thermochemical calorie',               'J'
    % --- Electromagnetic Constants ---
    'ELECTROMAGNETIC CONSTANTS', '', ''
    'eps0',     'Vacuum electric permittivity',         'F/m'
    'mu0',      'Vacuum magnetic permeability',         'N/A^2'
    'ke',       'Coulomb constant',                     'N*m^2/C^2'
    'Z0',       'Impedance of free space',              'ohm'
    'Phi0',     'Magnetic flux quantum',                'Wb'
    'G0',       'Conductance quantum',                  'S'
    'KJ',       'Josephson constant',                   'Hz/V'
    'RK',       'Von Klitzing constant',                'ohm'
    % --- Quantum Mechanics ---
    'QUANTUM MECHANICS CONSTANTS', '', ''
    'alpha',    'Fine-structure constant',              'dimensionless'
    'a0',       'Bohr radius',                          'm'
    'muB',      'Bohr magneton',                        'J/T'
    'muN',      'Nuclear magneton',                     'J/T'
    'Rinf',     'Rydberg constant',                     '1/m'
    'Ry',       'Rydberg energy',                       'J'
    'Eh',       'Hartree energy',                       'J'
    'Schwinger','Schwinger critical electric field',     'V/m'
    % --- Atomic & Particle Physics ---
    'ATOMIC & PARTICLE PHYSICS', '', ''
    'me',       'Electron mass',                        'kg'
    'mp',       'Proton mass',                          'kg'
    'mn',       'Neutron mass',                         'kg'
    'mmu',      'Muon mass',                            'kg'
    'mtau',     'Tau mass',                             'kg'
    'md',       'Deuteron mass',                        'kg'
    'malpha',   'Alpha particle mass',                  'kg'
    'mW',       'W boson mass',                         'kg'
    'mZ',       'Z boson mass',                         'kg'
    'mH',       'Higgs boson mass',                     'kg'
    're',       'Classical electron radius',             'm'
    'lambdaC',  'Compton wavelength (electron)',         'm'
    'ge',       'Electron g-factor',                    'dimensionless'
    'sigmaT',   'Thomson cross section',                'm^2'
    'GF',       'Fermi coupling constant',              'GeV^-2'
    'sinW2',    'Weak mixing angle (sin^2 theta_W)',    'dimensionless'
    'alphaS',   'Strong coupling constant (at M_Z)',    'dimensionless'
    % --- Thermodynamics & Radiation ---
    'THERMODYNAMICS & RADIATION', '', ''
    'sigma',    'Stefan-Boltzmann constant',            'W/(m^2*K^4)'
    'b',        'Wien wavelength displacement constant', 'm*K'
    'Wienb',    'Wien wavelength displacement (alias)',  'm*K'
    'Wien',     'Wien frequency displacement constant',  'Hz/K'
    'c1',       'First radiation constant',             'W*m^2'
    'c2',       'Second radiation constant',            'm*K'
    % --- Planck Units ---
    'PLANCK UNITS', '', ''
    'lP',       'Planck length',                        'm'
    'tP',       'Planck time',                          's'
    'mPlanck',  'Planck mass',                          'kg'
    'TPlanck',  'Planck temperature',                   'K'
    'qP',       'Planck charge',                        'C'
    % --- Astronomy ---
    'ASTRONOMY & ASTROPHYSICS', '', ''
    'AU',       'Astronomical unit',                    'm'
    'pc',       'Parsec',                               'm'
    'ly',       'Light-year',                           'm'
    'Msun',     'Solar mass',                           'kg'
    'Rsun',     'Solar radius',                         'm'
    'Lsun',     'Solar luminosity',                     'W'
    'Tsun',     'Solar effective temperature',           'K'
    'Mearth',   'Earth mass',                           'kg'
    'Rearth',   'Earth equatorial radius',              'm'
    'Mjup',     'Jupiter mass',                         'kg'
    'Rjup',     'Jupiter equatorial radius',            'm'
    'Mmoon',    'Moon mass',                            'kg'
    'Rmoon',    'Moon mean radius',                     'm'
    'H0',       'Hubble constant',                      'km/s/Mpc'
    'Tcmb',     'CMB temperature',                      'K'
    % --- Mathematical Constants ---
    'MATHEMATICAL CONSTANTS', '', ''
    'golden',   'Golden ratio',                         'dimensionless'
    'euler',    'Euler-Mascheroni constant',             'dimensionless'
    'Catalan',  'Catalan constant',                     'dimensionless'
    'Apery',    'Apery constant (zeta(3))',              'dimensionless'
    % --- Units ---
    'UNITS & CONVERSION FACTORS', '', ''
    'angstrom', 'Angstrom',                             'm'
    'fermi',    'Fermi (femtometre)',                    'm'
    'barn',     'Barn (cross section)',                  'm^2'
    'Debye',    'Debye (dipole moment)',                 'C*m'
    % --- Utility ---
    'UTILITY FUNCTIONS', '', ''
    'gammaL',   'Lorentz factor gamma(beta)',            'dimensionless'
};

% Print the table
fprintf('  %-14s %-42s %s\n', 'Symbol', 'Description', 'Unit');
fprintf('  %s\n', repmat('-', 1, 72));

for i = 1:size(data, 1)
    sym  = data{i, 1};
    desc = data{i, 2};
    unit = data{i, 3};
    
    % Check if this is a section header
    if isempty(desc) && isempty(unit)
        fprintf('\n  --- %s ---\n', sym);
    else
        fprintf('  %-14s %-42s %s\n', sym, desc, unit);
    end
end

fprintf('\n  %s\n', repmat('-', 1, 72));
fprintf('  Total: %d constants + %d utility functions\n', ...
    size(data, 1) - 10 - 1, 1);  % subtract headers and gammaL
fprintf('  Source: CODATA 2018 | IAU 2015 | PDG 2020\n');
fprintf('  ================================================================\n');
fprintf('\n');

end
