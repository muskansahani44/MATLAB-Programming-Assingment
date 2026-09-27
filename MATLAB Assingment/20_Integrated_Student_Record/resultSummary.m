function [total, average, highest, lowest, passCount, failCount, result] = resultSummary(marks)
total = 0;
passCount = 0;
failCount = 0;
highest = marks(1);
lowest = marks(1);
for i = 1:length(marks)
    total = total + marks(i);
    if marks(i) > highest
        highest = marks(i);
    end
    if marks(i) < lowest
        lowest = marks(i);
    end
    if marks(i) >= 40
        passCount = passCount + 1;
    else
        failCount = failCount + 1;
    end
end
average = total / length(marks);
if failCount == 0
    result = 'PASS';
else
    result = 'FAIL';
end
end
