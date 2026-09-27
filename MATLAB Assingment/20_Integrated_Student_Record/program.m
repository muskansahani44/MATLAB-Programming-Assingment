f = fopen('student_marks.txt','r');
if f == -1
    disp('File could not be opened.');
    return;
end
marks = fscanf(f,'%f');
fclose(f);
validMarks = [];
for i = 1:length(marks)
    if marks(i) >= 0 && marks(i) <= 100
        validMarks(end + 1) = marks(i);
    end
end
if isempty(validMarks)
    disp('No valid marks found.');
    return;
end
[total, average, highest, lowest, passCount, failCount, result] = ...
    resultSummary(validMarks);
out = fopen('final_report.txt','w');
fprintf(out,'STUDENT RESULT REPORT\n');
fprintf(out,'Total Marks = %.2f\n',total);
fprintf(out,'Average Marks = %.2f\n',average);
fprintf(out,'Highest Marks = %.2f\n',highest);
fprintf(out,'Lowest Marks = %.2f\n',lowest);
fprintf(out,'Pass Count = %d\n',passCount);
fprintf(out,'Fail Count = %d\n',failCount);
fprintf(out,'Overall Result = %s\n',result);
fclose(out);
disp('Report saved in final_report.txt');
