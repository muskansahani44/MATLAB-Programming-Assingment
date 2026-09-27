clc;
clear;

f = fopen('output.txt','w');
A = input('Enter array: ');
positive = 0;
negative = 0;
zero = 0;
even = 0;
odd = 0;
posSum = 0;
negSum = 0;
for i = 1:length(A)
    x = A(i);
    if x > 0
        positive = positive + 1;
        posSum = posSum + x;
    elseif x < 0
        negative = negative + 1;
        negSum = negSum + x;
    else
        zero = zero + 1;
    end
    if mod(x,2) == 0
        even = even + 1;
    elseif mod(x,2) ~= 0
        odd = odd + 1;
    end
end
if positive >= negative && positive >= zero
    highest = 'Positive';
elseif negative >= positive && negative >= zero
    highest = 'Negative';
else
    highest = 'Zero';
end
fprintf(f,'Positive Count = %d\n',positive);
fprintf(f,'Negative Count = %d\n',negative);
fprintf(f,'Zero Count = %d\n',zero);
fprintf(f,'Even Count = %d\n',even);
fprintf(f,'Odd Count = %d\n',odd);
fprintf(f,'Positive Sum = %d\n',posSum);
fprintf(f,'Negative Sum = %d\n',negSum);
fprintf(f,'Highest Category = %s\n',highest);
fclose(f);
