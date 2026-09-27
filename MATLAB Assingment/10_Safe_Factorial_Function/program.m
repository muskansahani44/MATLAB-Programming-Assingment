f = fopen('output.txt', 'w');
a = safeFactorial(5);
b = safeFactorial(3);
c = safeFactorial(-2);
fprintf(f, 'Factorial of 5 = %d\n', a);
fprintf(f, 'Factorial of 3 = %d\n', b);
if c == -1
    fprintf(f, 'Factorial of -2 = Invalid input\n');
else
    fprintf(f, 'Factorial of -2 = %d\n', c);
end
fclose(f);
