f = fopen('output.txt', 'w');
A = input('Enter array: ');
count = 0;
sum = 0;
for i = 1:length(A)
    if A(i) <= 0
        continue;
    end
    count = count + 1;
    sum = sum + A(i);
end
if count == 0
    fprintf(f, 'No positive value exists.\n');
else
    average = sum / count;
    fprintf(f, 'Count of Positive Values = %d\n', count);
    fprintf(f, 'Sum of Positive Values = %d\n', sum);
    fprintf(f, 'Average of Positive Values = %.2f\n', average);
end
fclose(f);
