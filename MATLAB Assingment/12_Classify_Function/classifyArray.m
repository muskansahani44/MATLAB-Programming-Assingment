function [p,n,z,e,o] = classifyArray(A)
p = 0;
n = 0;
z = 0;
e = 0;
o = 0;
for i = 1:length(A)
    if A(i) > 0
        p = p + 1;
    else
        if A(i) < 0
            n = n + 1;
        else
            z = z + 1;
        end
    end
    if A(i) == fix(A(i))
        if mod(A(i),2) == 0
            e = e + 1;
        else
            o = o + 1;
        end
    end
end
end
