classdef RandomTree
    properties
        trainingdata
        btsdata
        trainingoutput
        btsoutput
        root
    end
    methods
        function obj = RandomTree(trainingdata,trainingoutput)
            obj.trainingdata = trainingdata;
            obj.trainingoutput = trainingoutput;
            [obj.btsdata,obj.btsoutput] = bootstrap(obj.trainingdata,obj.trainingoutput);
            obj.root = RandomNode(obj.btsdata,obj.btsoutput, 1:34);
        end
        
       function [prediction] = predict(obj, testData)
            
            looking = true;
            current = obj.root;
            cnt = 1;
            while looking
               
                
                if isa(current,'RandomNode')
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