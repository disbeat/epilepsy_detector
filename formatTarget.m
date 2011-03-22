function targetSet = formatTarget( target, nCases, useOneNeuron)

    if (useOneNeuron)
    % target = 0 | 1
    
        targetSet = zeros(1, nCases);
        targetSet( 1, find( target == 2 ) ) = 1;
    
    else    
    % 1, 2, 3, 4 to [1 0 0 0 ; 0 1 0 0 ; 0 0 1 0 ; 0 0 0 1]
    
        nA = max(target);
        targetSet = zeros(nA, nCases);
        for c = 1:nCases
            targetSet( target(c), c ) = 1; 
        end
        
    end

end

