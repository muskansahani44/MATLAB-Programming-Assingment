function [total, average, minimum, maximum] = arraySummary(arr)
total = 0;
minimum = arr(1);
maximum = arr(1);
for i = 1:length(arr)
    total = total + arr(i);
    if arr(i) < minimum
        minimum = arr(i);
    end
    if arr(i) > maximum
        maximum = arr(i);
    end
end
average = total / length(arr);
end
