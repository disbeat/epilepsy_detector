function output = selectInputData(inputData, numChars, targetData, useCorrelation, useMutualInfo, useClustering)

    resultInput = inputData;

    maxChars = size(inputData(:, 1), 1);
    numOfClustered = min( numChars * 3, maxChars);
    numOfCorrelated = min( numChars * 2, maxChars);
    numOfMutualInfo = maxChars;
    
    output = 1:maxChars;

    if (useClustering)
       numOfMutualInfo = numOfClustered;
       resultInput = clusterData(resultInput, numOfClustered);
    end
    
    if (useCorrelation)
        correlation = corrcoef(resultInput');
        histogram = sum(correlation);
        [junk, bestIndex] = sort( histogram, 2, 'ascend');

        output =  bestIndex(1:numOfCorrelated);
        numOfMutualInfo = numOfCorrelated;
    end
    
    if (useMutualInfo)
        mutualInfo = [];

        for i=1:numOfMutualInfo
            estimate = information(targetData', resultInput(i, :));
            mutualInfo = [mutualInfo abs(estimate)];
        end

        [junk, bestMutualInfoIndex] = sort( mutualInfo, 2, 'descend');
        output = output( bestMutualInfoIndex );
    end
    
    output = output(1:numChars);
    
%     % Save characteristics plots with the target to images
%     figure(2);
%     for i=1:320
%         plot([inputData(i, :)' targetData*max(inputData(i, :))/4]);
%         
%         ChildList = sort(get(0,'Children'));
%         for cnum = 1:length(ChildList)
%             if strncmp(get(ChildList(cnum),'Type'),'figure',6) && ChildList(cnum) == 2
%                 saveas(ChildList(cnum), ['images\Channel', '_', num2str(i)], 'bmp');
%             end
%         end
%     end
    
end