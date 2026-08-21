% build.m - Lightweight entry script to build and package the toolbox
%
% Usage:
%   From MATLAB command line in the project root:
%   >> build

disp('Starting build process for Physical Constants Toolbox...');

% Optional: Run tests if a test suite is present
% (Assuming tests might be in a 'tests' or '+phys/tests' directory in the future)
if exist('tests', 'dir')
    disp('Running tests...');
    results = runtests('tests');
    if any([results.Failed])
        error('Tests failed! Aborting build.');
    end
    disp('All tests passed.');
else
    disp('No tests folder found. Skipping tests.');
end

% Validate files
if ~exist('+phys', 'dir')
    error('Directory +phys not found! Must run from the repository root.');
end

if ~exist('doc/info.xml', 'file')
    error('Help integration files not found in doc/ directory.');
end

% Add build directory to path to access packageToolbox.m
addpath(fullfile(pwd, 'build'));
cleanupObj = onCleanup(@() rmpath(fullfile(pwd, 'build')));

try
    disp('Building and packaging .mltbx file...');
    packageToolbox();
    disp('Build completed successfully.');
catch ME
    warning('Failed to package toolbox. Ensure you are running MATLAB R2023a or newer.');
    rethrow(ME);
end
