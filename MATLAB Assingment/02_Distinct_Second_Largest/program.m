fileID = fopen('output.txt', 'w');
A = input('Enter the array: ');
fprintf(fileID, 'Input Array: ');
fprintf(fileID, '%g ', A);
fprintf(fileID, '\n');
largest = -Inf;
secondLargest = -Inf;
for i = 1:length(A)
    if A(i) > largest
        secondLargest = largest;
        largest = A(i);
    elseif A(i) > secondLargest && A(i) < largest
        secondLargest = A(i);
    end
end
if secondLargest == -Inf
    fprintf('Second largest distinct value does not exist.\n');
    fprintf(fileID, 'Second largest distinct value does not exist.\n');
else
    fprintf('Second largest distinct value = %g\n', secondLargest);
    fprintf(fileID, 'Second largest distinct value = %g\n', secondLargest);
end
fclose(fileID);
disp('Result saved in output.txt');
