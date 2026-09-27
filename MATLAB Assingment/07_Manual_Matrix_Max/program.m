f = fopen('output.txt', 'w');
A = input('Enter matrix: ');
[r, c] = size(A);
maximum = A(1,1);
maxRow = 1;
maxCol = 1;
for i = 1:r
    for j = 1:c
        if A(i,j) > maximum
            maximum = A(i,j);
            maxRow = i;
            maxCol = j;
        end
    end
end
fprintf(f, 'Maximum Value = %d\n', maximum);
fprintf(f, 'Row Position = %d\n', maxRow);
fprintf(f, 'Column Position = %d\n', maxCol);
fclose(f);
