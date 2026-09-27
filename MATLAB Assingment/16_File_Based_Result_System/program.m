f = fopen('marks.txt','r');
if f == -1
    disp('File not found');
    return;
end
r = fopen('result.txt','w');
while ~feof(f)
    name = fscanf(f,'%s',1);
    marks = fscanf(f,'%f',3);
    if isempty(name)
        break;
    end
    total = sum(marks);
    average = total / 3;
    if average >= 40
        status = 'Pass';
    else
        status = 'Fail';
    end
    fprintf(r,'Name: %s\n',name);
    fprintf(r,'Total: %.0f\n',total);
    fprintf(r,'Average: %.2f\n',average);
    fprintf(r,'Result: %s\n\n',status);
end
fclose(f);
fclose(r);
disp('Result saved in result.txt');
