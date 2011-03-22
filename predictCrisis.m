function [nCrisis specificity sensitivity truePositives trueNegatives falsePositives falseNegatives] = predictCrisis(results, target, oneNeuronOutput, normalize)

    nCases = size(results, 2);
    
    resultsCrisis = formatResult(results, oneNeuronOutput, normalize);
    targetCrisis = formatTarget(target, nCases, oneNeuronOutput);
    
    if (~oneNeuronOutput)
        [crisis nCrisis] = findCrisis(resultsCrisis);
        auxResult = zeros(nCases);
        auxTarget = zeros(nCases);
        for i=1:nCases
            if (resultsCrisis(2, i) == 1)
                auxResult(i) = 1;
            end

            if (targetCrisis(2, i) == 1)
                auxTarget(i) = 1;
            end
        end

        resultsCrisis = auxResult;
        targetCrisis = auxTarget;
    else
        aux = zeros(4, nCases);
        indexes = find( resultsCrisis == 1 );
        aux(2, indexes) = 1;
        
        [crisis nCrisis] = findCrisis(aux);
    end
    
    
    falseNegatives = 0;
    trueNegatives = 0;
    falsePositives = 0;
    truePositives = 0;
    
    for index = 1:nCases
        if resultsCrisis(index) == 1
            if resultsCrisis(index) == targetCrisis(index)
                truePositives = truePositives + 1;
            else
                falsePositives = falsePositives + 1;
            end
        elseif targetCrisis(index) == 1
            falseNegatives = falseNegatives + 1;
        else
            trueNegatives = trueNegatives + 1;
        end
    end
    
    sensitivity = truePositives / ( truePositives + falseNegatives );
    specificity = trueNegatives / ( trueNegatives + falsePositives );

end

