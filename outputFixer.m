function fixed = outputFixer(testoutp)
for i  = 1:length(testoutp)
    switch testoutp(i)
        case {1,2,3}
            testoutp(i) = 1;
        case {4,6,10}
            testoutp(i) = 2;
        case {5,7,11}
            testoutp(i) = 3;
        case {8,9}
            testoutp(i) = 4;
        case{12,13}
            testoutp(i) = 5;
    end
   fixed = testoutp;
end
end