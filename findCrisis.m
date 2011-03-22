function [crisis nCrisis] = findCrisis(target)

    GAP_LIMIT = 2;
    CRISIS_LIMIT = 4;
    TARGET_CLASS = 2;
    
    nCases = size(target,2);
    target = setTargetToNum(target, nCases);
    
    targetClassIndexes = find(target == TARGET_CLASS)';
    
    if (~isempty(targetClassIndexes))
    
        crisis = [targetClassIndexes(1) targetClassIndexes(1)];
        nCrisis = 1;

        for targetIndex = targetClassIndexes(2:end)
            if targetIndex > crisis(nCrisis,2) + GAP_LIMIT     
                % New crisis
                nCrisis = nCrisis + 1;
                crisis(nCrisis, :) = [targetIndex targetIndex];
            else
                % Same crisis
                crisis(nCrisis, 2) = targetIndex;
            end
        end

        toDeleteIndexes = [];

        for crisisIndex = 1:nCrisis
            crisisLength = crisis(crisisIndex,2) - crisis(crisisIndex,1);
            if crisisLength < CRISIS_LIMIT - 1
                toDeleteIndexes = [toDeleteIndexes crisisIndex];
            end
        end

        crisis(toDeleteIndexes, :) = [];
        nCrisis = size(crisis,1);
    else
        nCrisis = 0;
        crisis = [];
    end
    
end
