function y = epsilon0
%EPSILON0 Vacuum electric permittivity (alias for eps0)
%
% Unit:
%   F/m (farads per metre)
%
% Value:
%   8.8541878128e-12
%
% Source:
%   CODATA 2018 recommended value
%
% Example:
%   F = (1/(4*pi*phys.epsilon0)) * q1*q2 / r^2;
%
% See also: phys.eps0

y = phys.eps0;

end
