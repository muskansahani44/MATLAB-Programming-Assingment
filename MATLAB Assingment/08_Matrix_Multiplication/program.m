f = fopen('output.txt', 'w');
A = input('Enter first matrix A: ');
B = input('Enter second matrix B: ');
[r1, c1] = size(A);
[r2, c2] = size(B);
if c1 ~= r2
    fprintf(f, 'Matrix multiplication is not possible.\n');
    fprintf(f, 'A has %d columns, but B has %d rows.\n', c1, r2);
else
    C = zeros(r1, c2);
    for i = 1:r1
        for j = 1:c2
            for k = 1:c1
                C(i,j) = C(i,j) + A(i,k) * B(k,j);
            end
        end
    end
    D = A * B;
    fprintf(f, 'Manual Matrix Product:\n');
    fprintf(f, '%g %g\n', C');
    fprintf(f, '\nMATLAB A*B Result:\n');
    fprintf(f, '%g %g\n', D');
    if isequal(C, D)
        fprintf(f, '\nBoth results match.\n');
    else
        fprintf(f, '\nBoth results do not match.\n');
    end
end
fclose(f);
