function results = formatResult(results, oneNeuronOutput, normalize)
    
    if (oneNeuronOutput)
        if (nargin < 3)
            normalize = 0;
        end
        EPSLON = 0.5;
        
        if (normalize)
            results = normalizeData(results);
        end

        results(find(results >= EPSLON)) = 1;
        results(find(results < EPSLON)) = 0;
        
    else
            
        [junk indexes] = max(results);
        results = zeros(size(results));
        
        for i=1:size(results, 2)
            results(indexes(i),i) = 1;
        end
        
    end
    
end