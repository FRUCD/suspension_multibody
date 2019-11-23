function is_design_parameter(input)
    if ~isscalar(input)
        error('Error: Input is not a valid Design Parameter (not 1x1)');
    end
    if ~isreal(input)
        error('Error: Input is not a valid Design Parameter (must be real)');
    end
end