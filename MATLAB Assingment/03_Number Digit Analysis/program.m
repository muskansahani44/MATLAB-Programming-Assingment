fileID = fopen('output.txt', 'w');
num = input('Enter a positive integer: ');
original = num;
digits = 0;
sumDigits = 0;
evenCount = 0;
oddCount = 0;
reverseNum = 0;
if fileID == -1
    error('Unable to open output.txt');
end
while num > 0
    digit = mod(num, 10);
    digits = digits + 1;
    sumDigits = sumDigits + digit;
    if mod(digit, 2) == 0
        evenCount = evenCount + 1;
    else
        oddCount = oddCount + 1;
    end
    reverseNum = reverseNum * 10 + digit;
    num = floor(num / 10);
end
if original == reverseNum
    palindrome = 'Yes';
else
    palindrome = 'No';
end
fprintf(fileID, 'Original Number: %d\n', original);
fprintf(fileID, 'Number of Digits: %d\n', digits);
fprintf(fileID, 'Sum of Digits: %d\n', sumDigits);
fprintf(fileID, 'Count of Even Digits: %d\n', evenCount);
fprintf(fileID, 'Count of Odd Digits: %d\n', oddCount);
fprintf(fileID, 'Reversed Number: %d\n', reverseNum);
fprintf(fileID, 'Palindrome: %s\n', palindrome);
fclose(fileID);
