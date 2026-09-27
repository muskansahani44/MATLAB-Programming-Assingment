f = fopen('output.txt','w');
marks = [85 72 45 110 -5 66 30 95];
total = 0;
pass = 0;
fail = 0;
valid = [];
for i = 1:length(marks)
    if marks(i) >= 0 && marks(i) <= 100
        valid(end+1) = marks(i);
        total = total + marks(i);
        if marks(i) >= 40
            pass = pass + 1;
        else
            fail = fail + 1;
        end
    end
end
average = total / length(valid);
fprintf(f,'Valid Marks: ');
fprintf(f,'%g ',valid);
fprintf(f,'\nTotal = %g\n',total);
fprintf(f,'Average = %.2f\n',average);
fprintf(f,'Highest = %g\n',max(valid));
fprintf(f,'Lowest = %g\n',min(valid));
fprintf(f,'Pass = %d\n',pass);
fprintf(f,'Fail = %d\n',fail);
fclose(f);
