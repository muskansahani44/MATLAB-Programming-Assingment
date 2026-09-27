f = fopen('output.txt', 'w');
A = [10 20 30 40 50];
B = [-5 -10 -2 -20 -8];
[total1, average1, minimum1, maximum1] = arraySummary(A);
[total2, average2, minimum2, maximum2] = arraySummary(B);
if f == -1
    error('File cannot be opened');
end
fprintf(f, 'Array 1:\n');
fprintf(f, 'Total = %d\n', total1);
fprintf(f, 'Average = %.2f\n', average1);
fprintf(f, 'Minimum = %d\n', minimum1);
fprintf(f, 'Maximum = %d\n\n', maximum1);
fprintf(f, 'Array 2 (All Negative):\n');
fprintf(f, 'Total = %d\n', total2);
fprintf(f, 'Average = %.2f\n', average2);
fprintf(f, 'Minimum = %d\n', minimum2);
fprintf(f, 'Maximum = %d\n', maximum2);
fclose(f);
