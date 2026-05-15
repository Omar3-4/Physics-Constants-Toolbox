% INSTALL - Install the Physics Constants Toolbox
%
% This script adds the current directory (parent of +phys) to the
% MATLAB search path so that you can use the package from anywhere.
%
% Usage:
%   1. Navigate to the folder containing +phys
%   2. Run:  install
%
% After installation, you can access constants via:
%   phys.c      % Speed of light
%   phys.h      % Planck constant
%   phys.list   % Show all constants
%
% See also: phys.list

fprintf('\n');
fprintf('  ================================================================\n');
fprintf('    Physics Constants Toolbox - Installer\n');
fprintf('  ================================================================\n');
fprintf('\n');

% Add the current directory (and all subdirectories) to the path
addpath(genpath(pwd));

fprintf('  [+] Added to MATLAB path: %s\n', pwd);

% Save the path permanently
try
    savepath;
    fprintf('  [+] Path saved permanently.\n');
catch ME
    fprintf('  [!] Could not save path permanently.\n');
    fprintf('      Reason: %s\n', ME.message);
    fprintf('      The path is active for this session only.\n');
    fprintf('      To save manually, run: savepath\n');
end

fprintf('\n');
fprintf('  Installation complete!\n');
fprintf('\n');
fprintf('  Quick test:\n');
fprintf('    >> phys.c        %% Speed of light\n');
fprintf('    >> phys.list     %% Show all constants\n');
fprintf('    >> help phys.list\n');
fprintf('\n');
fprintf('  ================================================================\n');
fprintf('\n');
