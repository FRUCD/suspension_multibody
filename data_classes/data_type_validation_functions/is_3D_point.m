function is_3D_point(input)
    in_size = size(input);
    if length(in_size) > 2 || in_size(1) ~= 3 || in_size(2) ~= 1
        error('Error: Input is not a valid 3D Point (not 3x1)');
    end
    if ~isreal(input)
        error('Error: Input is not a valid 3D Point (must be real)');
    end
end