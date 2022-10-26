function [imp,rootCands] = giniImpurityLeafGenerator(x, responseData, output)
%     rootscands is a 10 element cell array where element 1 is a vector
%     corresponding to the 1-10 responses to question x. Inside the vector,
%     each element corresponds to the variables 1-13. For example, after
%     the program is run, the first element in the first vector of
%     rootcands will equal the number of people who fit into variable one,
%     who also put 1 as their response to variable x in the data
    rootCands = {[0,0,0,0,0],[0,0,0,0,0],...
                 [0,0,0,0,0]};
    %fills in rootCands
    
    for i = 1:size(responseData,1)
        rootCands{responseData(i,x)}(output(i)) = ...
        rootCands{responseData(i,x)}(output(i)) + 1 ;
    end
   
    imp = 0;
    %the first for loop is going to iterate through each vector inside
    %rootcands - it is calculating the gini impurity for each possible
    %1-10 response - modeling the "leaves" you'd calculate when finding a
    %root.
    for j = 1:3
        temp = 0;
        for i = 1:5
            %this goes through each response in the current vector and 
            %calculates the gini impurity for the current leaf
            % 1 - (prob of answer x)^2 - (prob of answer x+1)^2 etc
            %getting NAN here because rootCands has zeros for responses
           if sum(rootCands{j}) ~= 0
                temp = temp + (rootCands{j}(i)/sum(rootCands{j}))^2;
           end
        end
        %finishes the leaf gini impurity from above
        temp = 1-temp;
        %finds the weighted average to add to the total gini impurity for
        %the variable that is being considered
        imp = imp + (sum(rootCands{j})/size(responseData,1)*(temp));
    end
   
end