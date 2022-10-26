classdef RandomNode
    properties
        resp1node
        resp2node
        resp3node
        respVar
    end
    methods
        function obj = RandomNode(data,output,vars)
            viable = vars(randi(length(vars),[1,8]));
            for i = 1:length(viable)
                    imps(i) = giniImpurityLeafGenerator(viable(i),data,output);
            end
            obj.respVar = viable(find(imps == min(imps), 1));
            [X, leaf] = giniImpurityLeafGenerator(obj.respVar,data,output);
            vars = vars(find(vars~=obj.respVar));
            
            %branch off for response 1
            subset = data(find(data(:,obj.respVar) == 1),:);
            subresponses = output(find(data(:,obj.respVar) == 1));
            if(sum(leaf{1}) > 20)
                obj.resp1node = RandomNode(subset,subresponses,vars);
            else
                obj.resp1node = Leaf(subset,subresponses);
            end

            %branch off for response 2
            
            subset = data(find(data(:,obj.respVar) == 2),:);
            subresponses = output(find(data(:,obj.respVar) == 2));

            if(sum(leaf{2}) > 20)
                    obj.resp2node = RandomNode(subset,subresponses,vars);
            else
                    obj.resp2node = Leaf(subset,subresponses);
            end

            %branch off for response 3
            subset = data(find(data(:,obj.respVar) == 3),:);
            subresponses = output(find(data(:,obj.respVar) == 3));

            if(sum(leaf{3}) > 20)
                obj.resp3node = RandomNode(subset,subresponses,vars);    
            else
                obj.resp3node = Leaf(subset,subresponses);
            end
        end
    end
end