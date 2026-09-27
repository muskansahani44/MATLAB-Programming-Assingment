 file = fopen('attendance.txt', 'a');
name = input('Enter student name: ', 's');
status = input('Enter attendance status (Present/Absent): ', 's');
if strcmpi(status, 'Present') || strcmpi(status, 'Absent')
    fprintf(file, '%s - %s\n', name, status);
    fclose(file);
    disp('Record saved successfully.');
else
    disp('Invalid attendance status.');
end
