function results = testNetwork(opt, net, selectedChars)

    N_CHARS = opt.characteristics;

    if nargin < 2
        [net selectedChars] = trainNetwork(opt);
    end

    load( [opt.testingData '.mat'] );
    
    if (opt.ratio)
        inputData = applyRatioWave(inputData);
    end
    
    if (opt.normalize)
        inputData = normalizeData(inputData);
    end
    
    [maxChars nCases] = size(inputData);

    if (opt.clustering)
       numOfClustered = min( N_CHARS * 3, maxChars); 
       inputData = clusterData(inputData, numOfClustered);
    end
    
    % From correlation and clustering
    inputData = inputData(selectedChars, :);
    
    simResults = sim(net, inputData);

    results = struct();

    [correct total hist hist_correct] = analyseResults(simResults, targetData, opt.oneNeuronOutput, opt.normalize);
    results.correctPercentage = correct / total * 100;
    results.correct = correct;
    results.total = total;
    results.hist = hist;
    results.histCorrect = hist_correct;

    [nCrisis specificity sensitivity TP TN FP FN] = predictCrisis(simResults, targetData, opt.oneNeuronOutput, opt.normalize);
    results.crisis = nCrisis;
    results.specificity = specificity * 100;
    results.sensitivity = sensitivity * 100;
    results.truePositives = TP;
    results.trueNegatives = TN;
    results.falsePositives = FP;
    results.falseNegatives = FN;
    results.nCases = nCases;
    results.target = formatTarget(targetData, nCases, 1);
    results.result = formatResult(simResults, opt.oneNeuronOutput, opt.normalize);
    
    if (~opt.oneNeuronOutput)
        aux = zeros(1, nCases);
        for i=1:nCases
            if (results.result(2,i) == 1)
                aux(i) = 1;
            end
        end
        results.result = aux;
    end
    
    
end


function [correct total hist histCorrect] = analyseResults(results, target, oneNeuronOutput, normalize)
    
    nCases = size(results, 2);
    target = formatTarget(target, nCases, oneNeuronOutput);
    results = formatResult(results, oneNeuronOutput, normalize);
    
    if (oneNeuronOutput)
        
        count = zeros(1,2);
        countGlobal = zeros(1,2);

        for c = 1:nCases
            if (results(c) == 1)
                countGlobal(2) = countGlobal(2) + 1;
                if (target(c) == 1)
                    count(2) = count(2) + 1;
                end
            else
                countGlobal(1) = countGlobal(1) + 1;
                if (target(c) == 0)
                    count(1) = count(1) + 1;
                end
            end
        end

    else
        
        count = zeros(1,4);
        countGlobal = zeros(1,4);

        for c = 1:nCases
            index = find(results(:,c) == 1);
            
            countGlobal( index ) = countGlobal( index ) + 1;
            if (target( index , c) == 1)
                count( index ) = count( index ) + 1;
            end
        end
    end
    
        
    correct = sum(count);
    total = nCases;
    hist = countGlobal;
    histCorrect = count;
    
end
