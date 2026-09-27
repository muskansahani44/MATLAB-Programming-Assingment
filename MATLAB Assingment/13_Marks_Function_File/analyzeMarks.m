function [average, highest, pass, fail] = analyzeMarks(marks)
sum = 0;
count = 0;
pass = 0;
fail = 0;
highest = -1;
for i = 1:length(marks)
    if marks(i) >= 0 && marks(i) <= 100
        sum = sum + marks(i);
        count = count + 1;
        if marks(i) > highest
            highest = marks(i);
        end
        if marks(i) >= 40
            pass = pass + 1;
        else
            fail = fail + 1;
        end
    end
end
if count > 0
    average = sum / count;
else
    average = 0;
    highest = 0;
end
end
