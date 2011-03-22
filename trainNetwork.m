function [net selectedChars] = trainNetwork(opt)
    
    N_CHARS = opt.characteristics;

    warning off NNET:Obsolete

    clear inputData targetData time characteristics; 
    load( [opt.trainingData '.mat'] ); % input, target, characteristics, time

    if (opt.ratio)
       inputData = applyRatioWave(inputData); 
    end
    
    if (opt.normalize)
        inputData = normalizeData(inputData);
    end
    
    selectedChars = selectInputData(inputData, N_CHARS, targetData, opt.correlation, opt.mutualinfo, opt.clustering);
    
    inputData = inputData(selectedChars, :);

    [nChars, nCases] = size(inputData);
    % nA = max(targetData);
    if (opt.oneNeuronOutput)
        nA = 1;
    else
        nA = 4;
    end

    minInput = zeros(N_CHARS, 1);
    maxInput = ones(N_CHARS, 1) * max(max(inputData));
    
    layersSize = [repmat( opt.hiddenLayerSize, 1, opt.numLayers-1) nA];
    transferFcns = [repmat( {opt.transferFcn}, 1, opt.numLayers-1) {'purelin'}];
    
    if strcmp(opt.networkType,'newp')
        net = newp( [minInput maxInput], nA , opt.transferFcn, opt.learningFcn );
    elseif strcmp(opt.networkType,'newff')
        net = newff( [minInput maxInput], layersSize, transferFcns, opt.learningFcn );
    elseif strcmp(opt.networkType,'newfftd')
        net = newfftd( [minInput maxInput], 0:opt.numLayers-1, layersSize, transferFcns, opt.learningFcn );
    elseif strcmp(opt.networkType,'newdtdnn')
        hiddenLayersSize = repmat( opt.hiddenLayerSize, 1, opt.numLayers-1);
        net = newdtdnn( inputData, formatTarget(targetData, nCases, opt.oneNeuronOutput), hiddenLayersSize, {0:opt.numLayers-1}, transferFcns, opt.learningFcn );
    elseif strcmp(opt.networkType,'newrb')
        net = newrb( inputData, formatTarget(targetData, nCases, opt.oneNeuronOutput), opt.goal);
    elseif strcmp(opt.networkType,'newlrn')
        transferFcns = repmat( {opt.transferFcn}, 1, opt.numLayers);
        net = newlrn( inputData, formatTarget(targetData, nCases, opt.oneNeuronOutput), layersSize, transferFcns, opt.learningFcn);
    end

    if ~strcmp(opt.networkType,'newrb')
    
        net.performParam.ratio = opt.learningRate;   % learning rate
        net.trainParam.epochs = opt.epochs;          % maximum epochs
        net.trainParam.show = 35;                    % show
        net.trainParam.goal = opt.goal;              % goal=objective
        net.performFcn = opt.performanceFcn;         % criterion
        net.trainParam.mu_max = 1e20;

        % Train the neural network
        net = train(net, inputData, formatTarget(targetData, nCases, opt.oneNeuronOutput));

    end
 
end
