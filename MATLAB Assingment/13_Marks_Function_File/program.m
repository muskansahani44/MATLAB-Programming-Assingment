f = fopen('result.txt','w');
marks = input('Enter marks: ');
[average, highest, pass, fail] = analyzeMarks(marks);
fprintf(f,'Marks Analysis\n');
fprintf(f,'Average = %.2f\n',average);
fprintf(f,'Highest Valid Mark = %.2f\n',highest);
fprintf(f,'Pass Count = %d\n',pass);
fprintf(f,'Fail Count = %d\n',fail);
fclose(f);
