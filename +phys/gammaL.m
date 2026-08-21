function y = gammaL(beta)
%GAMMAL Lorentz factor gamma = 1/sqrt(1-beta^2)
%
% Usage:
%   gamma = phys.gammaL(beta)
%
% Input:
%   beta  - velocity ratio v/c (0 <= beta < 1), scalar or array
%
% Output:
%   gamma - Lorentz factor (dimensionless)
%
% Unit:
%   dimensionless
%
% Example:
%   g = phys.gammaL(0.99);   % returns ~7.0888
%   g = phys.gammaL(0.0);    % returns 1.0
%
% See also: phys.c

if nargin < 1
    error('phys:gammaL:noInput', ...
        'Usage: phys.gammaL(beta), where beta = v/c.');
end

y = 1 ./ sqrt(1 - beta.^2);

end
