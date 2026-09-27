f = fopen('output.txt', 'w');
A = input('Enter array: ');
value = input('Enter search value: ');
firstPosition = 0;
count = 0;
for i = 1:length(A)
    if A(i) == value
        firstPosition = i;
        break;
    end
end
for i = 1:length(A)
    if A(i) == value
        count = count + 1;
    end
end
if count == 0
    fprintf(f, 'Value %d is absent from the array.\n', value);
else
    fprintf(f, 'First Position = %d\n', firstPosition);
    fprintf(f, 'Total Occurrences = %d\n', count);
end
fclose(f);
