f = fopen('output.txt', 'w');
A = input('Enter matrix: ');
[r, c] = size(A);
highestSum = -inf;
highestRow = 0;
for i = 1:r
    sum = 0;
    maxValue = A(i,1);
    for j = 1:c
        sum = sum + A(i,j);
        if A(i,j) > maxValue
            maxValue = A(i,j);
        end
    end
    average = sum / c;
    fprintf(f, 'Row %d:\n', i);
    fprintf(f, 'Sum = %d\n', sum);
    fprintf(f, 'Average = %.2f\n', average);
    fprintf(f, 'Maximum = %d\n\n', maxValue);
    if sum > highestSum
        highestSum = sum;
        highestRow = i;
    end
end
fprintf(f, 'Row with Highest Row-Sum = %d\n', highestRow);
fclose(f);
