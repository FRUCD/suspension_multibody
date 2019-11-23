function is_rotation_matrix (input)
    in_size = size(input);
    if length(in_size) ~= 2 || in_size(1) ~= 3 || in_size(2) ~= 3
        error('Error: Input is not a valid Rotation Matrix (not 3x3)');
    end
    if ~isreal(input)
        error('Error: Input is not a valid Rotation Matrix (must be real)');
    end
    if abs(det(input) - 1) > 1e-10
        error('Error: Input is not a valid Rotation Matrix (det != 1)');
    end
end