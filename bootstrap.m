function [btsdataset,btsoutput] = bootstrap(data,output)
    for i = 1:size(data,1)
        rands(i) = randi(size(data,1));
    end
    btsdataset = data(rands,:);
    btsoutput = output(rands,:);
end