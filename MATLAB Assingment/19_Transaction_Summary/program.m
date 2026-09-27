f = fopen('transactions.txt','r');
if f == -1
    disp('File not found');
    return;
end
a = fscanf(f,'%f');
fclose(f);
credit = 0;
debit = 0;
creditCount = 0;
debitCount = 0;
largestCredit = 0;
largestDebit = 0;
for i = 1:length(a)
    if a(i) > 0
        credit = credit + a(i);
        creditCount = creditCount + 1;
        if a(i) > largestCredit
            largestCredit = a(i);
        end
    elseif a(i) < 0
        debit = debit + a(i);
        debitCount = debitCount + 1;
        if abs(a(i)) > largestDebit
            largestDebit = abs(a(i));
        end
    end
end
net = credit + debit;
out = fopen('output.txt','w');
fprintf(out,'TRANSACTION SUMMARY\n');
fprintf(out,'Total Credit = %.2f\n',credit);
fprintf(out,'Total Debit = %.2f\n',debit);
fprintf(out,'Net Balance = %.2f\n',net);
fprintf(out,'Credit Count = %d\n',creditCount);
fprintf(out,'Debit Count = %d\n',debitCount);
fprintf(out,'Largest Credit = %.2f\n',largestCredit);
fprintf(out,'Largest Debit = %.2f\n',largestDebit);
fclose(out);
disp('Output saved successfully');
