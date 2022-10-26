classdef RandomForest
    properties 
        trees
        trainingdata
        trainingoutputs
    end
    methods
        function obj = RandomForest(data,outputs)
            obj.trainingdata = data;
            obj.trainingoutputs = outputs;
            obj.trees = RandomTree.empty;
            for i = 1:300
                obj.trees(i) = RandomTree(obj.trainingdata,obj.trainingoutputs);
            end
        end
        function prediction = predict(obj,row)
            
            for i = 1:300
                preds(i) = obj.trees(i).predict(row);
            end
            prediction = mode(preds);
        end
    end
end
