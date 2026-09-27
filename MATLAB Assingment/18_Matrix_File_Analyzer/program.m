f = fopen('matrix.txt','r');
if f == -1
    disp('File not found');
    return;
end
A = fscanf(f,'%f');
fclose(f);
A = reshape(A,3,3);
maxValue = A(1,1);
minValue = A(1,1);
maxRow = 1;
maxCol = 1;
minRow = 1;
minCol = 1;
for i = 1:3
    for j = 1:3
        if A(i,j) > maxValue
            maxValue = A(i,j);
            maxRow = i;
            maxCol = j;
        end
        if A(i,j) < minValue
            minValue = A(i,j);
            minRow = i;
            minCol = j;
        end
    end
end
rowSum = zeros(3,1);
for i = 1:3
    for j = 1:3
        rowSum(i) = rowSum(i) + A(i,j);
    end
end
highestSum = rowSum(1);
highestRow = 1;
for i = 2:3
    if rowSum(i) > highestSum
        highestSum = rowSum(i);
        highestRow = i;
    end
end
out = fopen('output.txt','w');
fprintf(out,'MATRIX ANALYSIS\n');
fprintf(out,'Maximum: %d at row %d, column %d\n',maxValue,maxRow,maxCol);
fprintf(out,'Minimum: %d at row %d, column %d\n',minValue,minRow,minCol);
fprintf(out,'\nRow Sums:\n');
fprintf(out,'Row 1 = %d\n',rowSum(1));
fprintf(out,'Row 2 = %d\n',rowSum(2));
fprintf(out,'Row 3 = %d\n',rowSum(3));
fprintf(out,'\nHighest Row Sum: Row %d = %d\n',highestRow,highestSum);
fclose(out);
disp('Analysis saved in output.txt');
