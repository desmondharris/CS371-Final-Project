classdef Node
    properties
        resp1node
        resp2node
        resp3node
        resp4node
        
        respVar
    end
    methods

        function obj = Node(data,output, vars, rtn)
            
            %go through each variable option for the next split and
            %determine gini impurity
                for i = 1:length(vars)
                    imps(i) = giniImpurityLeafGenerator(vars(i),data,output);
                end
             
                %this node's split variable is the variable with the smallest 
                obj.respVar = vars(find(imps == min(imps), 1));
               
                [X, leaf] = giniImpurityLeafGenerator(obj.respVar,data,output);
                
                vars = vars(find(vars~=obj.respVar));
               
                subset = data(find(data(:,obj.respVar) == 1),:);
                subresponses = output(find(data(:,obj.respVar) == 1));
     
                if(sum(leaf{1}) > 20)
                    obj.resp1node = Node(subset,subresponses,vars,'n');
                else
                    obj.resp1node = Leaf(subset,subresponses);
                end
                
                subset = data(find(data(:,obj.respVar) == 2),:);
                subresponses = output(find(data(:,obj.respVar) == 2));

                if(sum(leaf{2}) > 20)
                    obj.resp2node = Node(subset,subresponses,vars,'n');
                else
                    obj.resp2node = Leaf(subset,subresponses);
                end
                
                subset = data(find(data(:,obj.respVar) == 3),:);
                subresponses = output(find(data(:,obj.respVar) == 3));

                
                if(sum(leaf{3}) > 20)
                    obj.resp3node = Node(subset,subresponses,vars,'n');
                    
                else
                    obj.resp3node = Leaf(subset,subresponses);
                end
          
        end
        
    end
end