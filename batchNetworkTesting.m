function batchNetworkTesting
   
optionsList = [];
% 
% options = struct();
% options.trainingDataList =      {'pat_30(1)'};
% options.testingDataList =       {'pat_30(2)'};
% options.ratioList =             {'0'};
% options.networkTypeList =       {'newp'};
% options.transferFcnList =       {'logsig' 'hardlim' 'hardlims' 'purelin'};     % purelin on the last layer
% options.learningFcnList =       {'learnp'};
% options.performanceFcnList =    {'mse'};
% options.learningRateList =      {'0.2'};
% options.numLayersList =         {'2'};
% options.hiddenLayerSizeList =   {'30'};        % Every layer but the last
% options.epochsList =            {'200'};
% options.goalList =              {'1e-6'};
% options.characteristicsList =   {'20'};
% options.correlationList =       {'1'};
% options.mutualinfoList =        {'1'};
% options.clusteringList =        {'0'};
% options.oneNeuronOutputList =   {'1'};
% options.normalizeList =         {'0'};
% optionsList = [optionsList options];

options = struct();
options.trainingDataList =      {'pat_30(1)'};
options.testingDataList =       {'pat_30(2)'};
options.ratioList =             {'0'};
options.networkTypeList =       {'newff'};
options.transferFcnList =       {'logsig'};     % purelin on the last layer
options.learningFcnList =       {'trainlm'};
options.performanceFcnList =    {'mse'};
options.learningRateList =      {'0.2'};
options.numLayersList =         {'2'};
options.hiddenLayerSizeList =   {'100'};        % Every layer but the last
options.epochsList =            {'200'};
options.goalList =              {'1e-6'};
options.characteristicsList =   {'20'};
options.correlationList =       {'1'};
options.mutualinfoList =        {'1'};
options.clusteringList =        {'0'};
options.oneNeuronOutputList =   {'1'};
options.normalizeList =         {'0'};
optionsList = [optionsList options];

% options = struct();
% options.trainingDataList =      {'pat_30(2)'};
% options.testingDataList =       {'pat_30(2)'};
% options.networkTypeList =       {'newff'};
% options.transferFcnList =       {'hardlim'};     % purelin on the last layer
% options.learningFcnList =       {'traingd'};
% options.performanceFcnList =    {'mse'};
% options.learningRateList =      {'0.3'};
% options.numLayersList =         {'1'};
% options.hiddenLayerSizeList =   {'30'};        % Every layer but the last
% options.epochsList =            {'200'};
% options.goalList =              {'1e-6'};
% options.characteristicsList =   {'30'};
% options.correlationList =       {'0'};
% options.mutualinfoList =        {'0'};
% options.clusteringList =        {'0'};
% options.oneNeuronOutputList =   {'0'};
% options.normalizeList =         {'0' '1'};
% optionsList = [optionsList options];


parameters = {'trainingData' 'testingData' 'networkType' 'transferFcn' ,...
              'learningFcn' 'performanceFcn' 'learningRate'  'numLayers',...
              'hiddenLayerSize' 'epochs' 'goal' 'characteristics' 'correlation', ...
              'mutualinfo' 'clustering' 'oneNeuronOutput' 'normalize' 'ratio'};

resultsParameters = {'correctPercentage' 'correct' 'total' 'specificity' ,...
                     'sensitivity' 'crisis' 'truePositives'  'trueNegatives',...
                     'falsePositives' 'falseNegatives'};
          
FILENAME = 'InputType3.csv';

file = fopen(FILENAME,'w');
for parameter = parameters
    fprintf(file, '%s;',char(parameter));
end
for parameter = resultsParameters
    fprintf(file, '%s;',char(parameter));
end
fprintf(file, '\n');
fclose(file);

for options = optionsList
netOptions = struct();
for trainingData = options.trainingDataList
netOptions.trainingData = char(trainingData);
for testingData = options.testingDataList
netOptions.testingData = char(testingData);
for ratio = options.ratioList
netOptions.ratio = str2double(char(ratio));
for networkType = options.networkTypeList
netOptions.networkType = char(networkType);
for transferFcn = options.transferFcnList
netOptions.transferFcn = char(transferFcn);
for learningFcn = options.learningFcnList
netOptions.learningFcn = char(learningFcn);
for performanceFcn = options.performanceFcnList
netOptions.performanceFcn = char(performanceFcn);
for learningRate = options.learningRateList
netOptions.learningRate = char(learningRate);
for numLayers = options.numLayersList
netOptions.numLayers = str2double(char(numLayers));  
for hiddenLayerSize = options.hiddenLayerSizeList
netOptions.hiddenLayerSize = str2double(char(hiddenLayerSize));  
for epochs = options.epochsList
netOptions.epochs = str2double(char(epochs));  
for goal = options.goalList
netOptions.goal = str2double(char(goal));    
for characteristics = options.characteristicsList
netOptions.characteristics = str2double(char(characteristics));  
for correlation = options.correlationList
netOptions.correlation = str2double(char(correlation));   
for mutualinfo = options.mutualinfoList
netOptions.mutualinfo = str2double(char(mutualinfo));  
for clustering = options.clusteringList
netOptions.clustering = str2double(char(clustering));  
for oneNeuronOutput = options.oneNeuronOutputList
netOptions.oneNeuronOutput = str2double(char(oneNeuronOutput));  
for normalize = options.normalizeList
netOptions.normalize = str2double(char(normalize));   

[results] = testNetwork(netOptions);
disp(netOptions);
disp(results);

file = fopen(FILENAME,'a');
for parameter = parameters
    fprintf(file, '%s;', num2str(netOptions.(char(parameter))));
end
for parameter = resultsParameters
    fprintf(file, '%s;', num2str(results.(char(parameter))));
end
fprintf(file, '\n');
fclose(file);

end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;end

end
