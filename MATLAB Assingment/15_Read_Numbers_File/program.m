
file = fopen('input.txt', 'r');
if file == -1
    disp('Input file could not be opened.');
    return;
end
numbers = fscanf(file, '%f');
fclose(file);
positive = 0;
negative = 0;
zero = 0;
for i = 1:length(numbers)
    if numbers(i) > 0
        positive = positive + 1;
    elseif numbers(i) < 0
        negative = negative + 1;
    else
        zero = zero + 1;
    end
end
sumNumbers = sum(numbers);
average = sumNumbers / length(numbers);
minimum = min(numbers);
maximum = max(numbers);
out = fopen('output.txt', 'w');
fprintf(out, 'Number Analysis\n');
fprintf(out, 'Positive numbers: %d\n', positive);
fprintf(out, 'Negative numbers: %d\n', negative);
fprintf(out, 'Zero values: %d\n', zero);
fprintf(out, 'Sum: %.2f\n', sumNumbers);
fprintf(out, 'Average: %.2f\n', average);
fprintf(out, 'Minimum: %.2f\n', minimum);
fprintf(out, 'Maximum: %.2f\n', maximum);
fclose(out);
disp('Analysis saved in output.txt');
