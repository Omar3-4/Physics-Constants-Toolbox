function y = c1
%C1 First radiation constant (2*pi*h*c^2)
%
% Unit:
%   W*m^2
%
% Value:
%   3.741771852e-16
%
% Source:
%   CODATA 2018 recommended value
%
% Example:
%   I = phys.c1 / (lambda^5 * (exp(phys.c2/(lambda*T)) - 1));

y = 3.741771852e-16;

end
