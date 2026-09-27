f = fopen('numbers.txt','r');
if f == -1
    disp('File not found');
    return;
end
arr = fscanf(f,'%f');
fclose(f);
target = input('Enter target value: ');
[firstIndex, count] = findValue(arr, target);
out = fopen('output.txt','w');
fprintf(out,'Search Result\n');
fprintf(out,'Target: %d\n',target);
fprintf(out,'First Index: %d\n',firstIndex);
fprintf(out,'Total Occurrences: %d\n',count);
fclose(out);
disp('Result saved in output.txt');
