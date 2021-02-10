x = (-1) + 2 * rand(5, 1);
for i = 1 : 5
    if x(i) > 0
        d(i) = 1;
    else
        d(i) = 0;
    end
    fprintf('d(%d) = %d \n', i, d(i));
end