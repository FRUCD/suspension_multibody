function is_MR_array(input)
    in_size = size(input);
    if length(in_size) ~= 2 || in_size(2) ~= 1
        error('Error: Input is not a valid MR Array (not (length)x1)');
    end
    if ~isreal(input)
        error('Error: Input is not a valid MR Array (must be real)');
    end
end