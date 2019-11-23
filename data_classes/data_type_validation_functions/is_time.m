function is_time(input)
    if ~isscalar(input)
        error('Error: Input is not a valid Time (not 1x1)');
    end
    if ~isreal(input)
        error('Error: Input is not a valid Time (must be real)');
    end
    if input < 0
        error('Error: Input is not a valid Time (must be nonnegative)');
    end
end