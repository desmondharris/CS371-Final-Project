function fixed = responseFixer(ttest)
for i = 1:size(ttest,1)
    for j = 1:34
         switch ttest(i,j)
             case{1,2,3}
                 ttest(i,j) = 1;
             case{4,5,6,7}
                 ttest(i,j) = 2;
             case{8,9,10}
                 ttest(i,j) = 3;
         end
    
    end
    
end
fixed = ttest;
end