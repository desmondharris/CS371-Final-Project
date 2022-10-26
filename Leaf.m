classdef Leaf
    properties
        output
    end
    methods
        function obj = Leaf(data,outputs)
            obj.output = mode(outputs);
        end
    end
end