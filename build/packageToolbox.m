function packageToolbox()
    % packageToolbox - Packages the phys repository into an official MATLAB Custom Toolbox (.mltbx)

    % Ensure dist directory exists
    distDir = fullfile(pwd, 'dist');
    if ~exist(distDir, 'dir')
        mkdir(distDir);
    end
    outputFile = fullfile(distDir, 'PhysicalConstantsToolbox.mltbx');

    % Create a temporary staging directory to only include required files
    tempStagingDir = fullfile(pwd, 'temp_toolbox_staging');
    if exist(tempStagingDir, 'dir')
        rmdir(tempStagingDir, 's');
    end
    mkdir(tempStagingDir);
    cleanupStaging = onCleanup(@() rmdir(tempStagingDir, 's'));

    % Copy required files to staging directory
    copyfile(fullfile(pwd, '+phys'), fullfile(tempStagingDir, '+phys'));
    copyfile(fullfile(pwd, 'doc'), fullfile(tempStagingDir, 'doc'));
    copyfile(fullfile(pwd, 'README.md'), fullfile(tempStagingDir, 'README.md'));
    if exist(fullfile(pwd, 'LICENSE'), 'file')
        copyfile(fullfile(pwd, 'LICENSE'), fullfile(tempStagingDir, 'LICENSE'));
    end

    % Generated a persistent unique GUID to use as an identifier
    toolboxUUID = '12345678-ABCD-EF01-2345-6789ABCDEF01';

    % Set up Toolbox Options using the staging directory
    opts = matlab.addons.toolbox.ToolboxOptions(tempStagingDir, toolboxUUID);

    % Extract metadata from README.md
    readmeText = fileread(fullfile(pwd, 'README.md'));

    % Simple extraction for summary (first paragraph)
    tokens = regexp(readmeText, 'A lightweight MATLAB package[^.]*\.', 'match', 'once');
    if ~isempty(tokens)
        opts.Summary = tokens;
    else
        opts.Summary = 'Physical Constants Toolbox for MATLAB.';
    end

    % Extract a block for Description
    descTokens = regexp(readmeText, '(A lightweight MATLAB package.*?)---', 'tokens', 'once', 'dotexceptnewline');
    if ~isempty(descTokens)
        opts.Description = strtrim(descTokens{1});
    else
        opts.Description = 'A lightweight MATLAB package that gives you instant access to 80+ physical constants, particle masses, astronomical parameters, and mathematical constants.';
    end

    % Basic metadata
    opts.ToolboxName = 'Physical Constants Toolbox (phys)';
    opts.ToolboxVersion = '1.0.0';
    opts.AuthorName = 'phys Maintainers'; % Placeholder author/maintainer

    opts.OutputFile = outputFile;

    % Ensure doc folder is added to MATLAB path upon installation
    opts.ToolboxMatlabPath = {tempStagingDir, fullfile(tempStagingDir, 'doc')};

    % Finally, package the toolbox
    disp('Packaging Physical Constants Toolbox...');
    matlab.addons.toolbox.packageToolbox(opts);
    disp(['Toolbox successfully packaged at: ', outputFile]);
end
