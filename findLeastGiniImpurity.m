function var = findLeastGiniImpurity(responseData,output)
    %itereates through each of the 34 variables and calculates the gini 
    %impurity with the function
    for i = 1:34
        [imps(i)] = giniImpurityLeafGenerator(i,responseData,output);
    end
    disp(imps)
    %return the smallest gini impurity found
    var = find(imps==min(imps),1);
    
end