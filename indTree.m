classdef indTree
    properties 
        trainingdata
        trainingoutput
        testdata
        testoutput
        root

    end
    methods


   
        %assigns training and test data to the classification tree
        function obj = indTree(trainingdata,trainingoutputs)
            
            obj.trainingdata = trainingdata;
            obj.trainingoutput = trainingoutputs;
            %creates the root of the tree which will then start all of the
            %reactions creating the classsification tree
            obj.root = Node(trainingdata,trainingoutputs, [1:34],'n');
            
        end

        function [prediction] = predict(obj, testData)
            
            looking = true;
            current = obj.root;
            while looking
               
                
                if isa(current,'Node')
                    switch testData(current.respVar)
                        case 1
                            current = current.resp1node;
                        case 2
                            current = current.resp2node;
                        case 3
                            current = current.resp3node;
                    end
                end
                if isa(current,'Leaf')
                    prediction = current.output;
                    looking = false;
                end

            end
        end
        

            
   
    end
end