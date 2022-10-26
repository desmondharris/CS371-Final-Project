function error = errorCalculator(forest, data,outputs)
    corr = 0;
    for i = 1:length(outputs)
       if(forest.predict(data(i,:)) == outputs(i)) 
           corr = corr + 1;
       end
    end
    error = corr/length(outputs);

end