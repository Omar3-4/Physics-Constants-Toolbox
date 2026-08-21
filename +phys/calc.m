function result = calc(expr)
%CALC Evaluate a mathematical expression using physical constants
%
% This function allows you to perform calculations with multiple constants
% without having to write "phys." before each one.
%
% It also supports any variables you have defined in your workspace and
% built-in MATLAB functions (like pi, sin, sqrt, etc.).
%
% Usage:
%   result = phys.calc('expression')
%
% Examples:
%   % Energy of a photon
%   E = phys.calc('h * c / (500 * nm)'); % Make sure nm is defined or use 500e-9
%   E = phys.calc('h * c / 500e-9');
%
%   % Bohr radius formula
%   a0 = phys.calc('4 * pi * eps0 * hbar^2 / (me * e^2)');
%
%   % Using workspace variables
%   m = 5;
%   E = phys.calc('m * c^2');
%
% See also: phys.list

if nargin == 0
    error('phys:calc:NotEnoughInputs', 'Please provide a mathematical expression as a string. Example: phys.calc(''c * h / me'')');
end

% Ensure the expression is a character array (string)
if isstring(expr)
    expr = char(expr);
end
if ~ischar(expr)
    error('phys:calc:InvalidInput', 'Expression must be a string or character array.');
end

% Find all valid variable/constant names (words) in the expression
words = regexp(expr, '[a-zA-Z_]\w*', 'match');
words = unique(words);

% Replace physical constant names with 'phys.name'
for i = 1:numel(words)
    w = words{i};
    % Check if the word is a function inside the +phys package
    % Using exist with 'file' is the best way to check package functions
    if exist(['phys.', w], 'file') == 2
        % Replace only whole words to avoid replacing parts of other names
        expr = regexprep(expr, ['\<', w, '\>'], ['phys.', w]);
    end
end

% Evaluate the modified expression in the caller workspace
% This allows it to seamlessly use any variables the user has defined!
try
    result = evalin('caller', expr);
catch ME
    error('phys:calc:EvaluationError', 'Error evaluating expression:\n%s', ME.message);
end

end
